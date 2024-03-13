CREATE OR REPLACE PROCEDURE SGPSDL_RAW.SG_NTUC_PREPROCESSING("PARAM" ARRAY)
RETURNS VARCHAR(16777216)
LANGUAGE PYTHON
RUNTIME_VERSION = '3.11'
PACKAGES = ('snowflake-snowpark-python')
HANDLER = 'main'
EXECUTE AS OWNER
AS 'from snowflake.snowpark.functions import col, lit, date_format, current_timestamp, to_date, year, month, concat, format_number, to_timestamp,when,trim,upper
from snowflake.snowpark.types import IntegerType, StringType, StructType, StructField, DecimalType,DateType
import pandas as pd
from datetime import datetime
import snowflake.snowpark as snowpark
import pytz

def main(session: snowpark.Session,Param):
    try:
        #Param=["NTUC_202402.xlsx", "SGPSDL_RAW.DEV_LOAD_STAGE_ADLS","dev/scan360/ntuc","SDL_SG_SCAN_DATA_NTUC"]
        file_name       = Param[0]
        stage_name      = Param[1]
        temp_stage_path = Param[2]
        target_table    = Param[3]
        sheet_names=["CORE.csv","OTC.csv"]
        # Define the schema
        for i in sheet_names:
            df_schema = StructType([
                    StructField("Vendor_Code", StringType()),
                    StructField("Vendor_Name", StringType()),
                    StructField("Dept_Code", StringType()),
                    StructField("Dept_Description", StringType()),
                    StructField("Class_No", StringType()),
                    StructField("Class_Description", StringType()),
                    StructField("Sub_Class_Description", StringType()),
                    StructField("MCH", StringType()),
                    StructField("ITEM_CODE", StringType()),
                    StructField("ITEM_DESC", StringType()),
                    StructField("Brand", StringType()),
                    StructField("Sales_UOM", StringType()),
                    StructField("Pack_Size", DecimalType(10,0)),
                    StructField("Store_Code", StringType()),
                    StructField("Store_Name", StringType()),
                    StructField("Store_Format", StringType()),
                    StructField("Attribute1", StringType()),
                    StructField("Attribute2", StringType()),
                    StructField("TRX_DATE", DateType()),
                    StructField("Value", DecimalType(38, 8))  
            ])
    
            df = session.read\\
            .schema(df_schema)\\
            .option("skip_header",1)\\
            .option("field_delimiter", "\\u0001")\\
            .option("field_optionally_enclosed_by", "\\"") \\
            .csv("@"+stage_name+"/"+temp_stage_path+"/"+i)
            df=df.na.drop("all")
            s=i.split(".")[0]
            if df.count()==0 :
                return f"No Data in sheet {s}"
            
    
            #pivoting using when statement
    
            df = df.withColumn("net_sales", 
                       when((trim(upper(df["Attribute1"])) == "SALES"), col("value"))
                       .otherwise(None)
                       .cast(DecimalType(14, 4)))
    
            df = df.withColumn("SALES_QTY", 
                       when((trim(df["Attribute1"]) == "Qty (in EA)"), col("value"))
                       .cast(DecimalType(10, 0)))
    
            df=df.with_column("file_name",lit(file_name))
            df=df.with_column("CUST_NAME",lit("NTUC"))
            #convertin time stamp into sg timezone
            df=df.with_column("crtd_dttm",lit(datetime.now(pytz.timezone("Asia/Singapore")).strftime("%Y-%m-%d %H:%M:%S")))
            df = df.with_column("cdl_dttm", lit(None))
            df = df.with_column("run_id", lit(datetime.now(pytz.timezone("Asia/Singapore")).strftime("%Y%m%d%H%M%S")))
           
            
    
            #del_sql = "DELETE FROM " + stage_name.split(".")[0]+"."+target_table
            #session.sql(del_sql).collect()
        
    
            snowdf=df.select("Vendor_Code", "Vendor_Name", "Dept_Code", "Dept_Description", "Class_No", "Class_Description", "Sub_Class_Description", "MCH", "ITEM_CODE", "ITEM_DESC", "Brand", "Sales_UOM", "Pack_Size", "Store_Code", "Store_Name", "Store_Format", "Attribute1", "Attribute2", "TRX_DATE", "NET_SALES", "SALES_QTY", "CUST_NAME", "cdl_dttm", "crtd_dttm", "file_name", "run_id")
        
    
            
                
            
            #move file into success folder
            file_name=file_name.split(".")[0]+"_"+datetime.now().strftime("%Y%m%d%H%M%S")
            
            
            
            #write on sdl layer
        
            snowdf.write.mode("append").saveAsTable(stage_name.split(".")[0]+"."+target_table)
            
        snowdf.write.copy_into_location("@"+Param[1]+"/"+Param[2]+"/success/"+file_name,header=True,OVERWRITE=True)
        
        return "Success"
    except KeyError as key_error:
        # Handle KeyError (missing columns) here
        error_message = f"KeyError: {str(key_error)}. Ensure all required columns are present in the DataFrame."
        return error_message

    except pd.errors.MergeError as merge_error:
        # Handle DataFrame merging error
        error_message = f"DataFrame merging error: {str(merge_error)}"
        return error_message
    
    except Exception as e:
        # Handle exceptions here
        error_message = f"Error: {str(e)}"
        return error_message';
