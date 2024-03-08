CREATE OR REPLACE PROCEDURE SGPSDL_RAW.SG_SCOMMERCE_PREPROCESSING("PARAM" ARRAY)
RETURNS VARCHAR(16777216)
LANGUAGE PYTHON
RUNTIME_VERSION = '3.11'
PACKAGES = ('snowflake-snowpark-python')
HANDLER = 'main'
EXECUTE AS OWNER
AS 'from snowflake.snowpark.functions import col, lit, date_format, current_timestamp, to_date, year, month, concat, format_number, to_timestamp
from snowflake.snowpark.types import IntegerType, StringType, StructType, StructField, DecimalType,DateType
import pandas as pd
from datetime import datetime
import snowflake.snowpark as snowpark
import pytz

def main(session: snowpark.Session,Param): 
    try:
        #Param=[''Scommerce_20220.csv'',''SGPSDL_RAW.DEV_LOAD_STAGE_ADLS'',''dev'',''sdl_sg_scan_data_scommerce'']
        file_name       = Param[0]
        stage_name      = Param[1]
        temp_stage_path = Param[2]
        target_table    = Param[3]
    
        df_schema = StructType([
            StructField("date_id", DateType()),
            StructField("ordersn", StringType()),
            StructField("itemid", StringType()),
            StructField("modelid", StringType()),
            StructField("sku_id", StringType()),
            StructField("item_name", StringType()),
            StructField("model_name", StringType()),
            StructField("sales_qty", DecimalType(10,0)),
            StructField("net_sales", DecimalType(10,6)),
        ])
        df = session.read\\
            .schema(df_schema)\\
            .option("skip_header", 1)\\
            .option("field_delimiter", "\\u0001")\\
            .option("field_optionally_enclosed_by", "\\"") \\
            .csv("@" + stage_name + "/" + temp_stage_path + "/" + file_name)

        df = df.with_column("store", lit("Scommerce"))
        df = df.with_column("store_name", lit("Scommerce"))
        df = df.with_column("cdl_dttm", lit(None))
        df = df.with_column("crtd_dttm", lit(datetime.now(pytz.timezone("Asia/Singapore")).strftime("%Y-%m-%d %H:%M:%S")))
        df = df.with_column("file_name", lit(file_name))
        df = df.with_column("run_id", lit(datetime.now(pytz.timezone("Asia/Singapore")).strftime("%Y%m%d%H%M%S"))) 

        #deleteing the data from table 

        #del_sql = "DELETE FROM " + stage_name.split(".")[0]+"."+target_table
        #session.sql(del_sql).collect()
    

        snowdf=df.select("date_id", "ordersn", "itemid", "modelid", "sku_id", "item_name", "model_name", "sales_qty", "net_sales", "store", "store_name", "cdl_dttm" , "crtd_dttm", "file_name", "run_id")
        
        snowdf= snowdf.filter(snowdf["itemid"].isNotNull()) and snowdf.filter(snowdf["date_id"].isNotNull()) and snowdf.filter(snowdf["ordersn"].isNotNull()) and snowdf.filter(snowdf["modelid"].isNotNull()) and snowdf.filter(snowdf["sku_id"].isNotNull()) and snowdf.filter(snowdf["item_name"].isNotNull()) and snowdf.filter(snowdf["model_name"].isNotNull()) and snowdf.filter(snowdf["sales_qty"].isNotNull()) and snowdf.filter(snowdf["net_sales"].isNotNull())
        if snowdf.count()==0 :
            return "No Data in file"

        
        #move file into success folder
        file_name=file_name.split(".")[0]+"_"+datetime.now().strftime("%Y%m%d%H%M%S")
        snowdf.write.copy_into_location("@"+Param[1]+"/"+Param[2]+"/success/"+file_name,header=True,OVERWRITE=True)

        #write on sdl layer
    
        snowdf.write.mode("append").saveAsTable(stage_name.split(".")[0]+"."+target_table)
        
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
        return error_message
';
