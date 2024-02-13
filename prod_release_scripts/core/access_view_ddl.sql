

create or replace view mysedw_access.edw_my_pos_analysis 
    as 
    select 
        data_src as "data_src",
        jj_year as "jj_year",
        jj_qtr as "jj_qtr",
        jj_mnth_id as "jj_mnth_id",
        jj_mnth_no as "jj_mnth_no",
        jj_year_wk_no as "jj_year_wk_no",
        cntry_nm as "cntry_nm",
        cust_cd as "cust_cd",
        cust_brnch_cd as "cust_brnch_cd",
        mt_cust_brnch_nm as "mt_cust_brnch_nm",
        cust_dept_cd as "cust_dept_cd",
        mt_cust_dept_nm as "mt_cust_dept_nm",
        region_cd as "region_cd",
        region_nm as "region_nm",
        item_cd as "item_cd",
        mt_item_nm as "mt_item_nm",
        sold_to as "sold_to",
        sold_to_nm as "sold_to_nm",
        trade_type as "trade_type",
        dstrbtr_grp_cd as "dstrbtr_grp_cd",
        dstrbtr_grp_nm as "dstrbtr_grp_nm",
        sap_state_cd as "sap_state_cd",
        sap_sls_org as "sap_sls_org",
        sap_cmp_id as "sap_cmp_id",
        sap_cntry_cd as "sap_cntry_cd",
        sap_cntry_nm as "sap_cntry_nm",
        sap_addr as "sap_addr",
        sap_region as "sap_region",
        sap_city as "sap_city",
        sap_post_cd as "sap_post_cd",
        sap_chnl_cd as "sap_chnl_cd",
        sap_chnl_desc as "sap_chnl_desc",
        sap_sls_office_cd as "sap_sls_office_cd",
        sap_sls_office_desc as "sap_sls_office_desc",
        sap_sls_grp_cd as "sap_sls_grp_cd",
        sap_sls_grp_desc as "sap_sls_grp_desc",
        sap_curr_cd as "sap_curr_cd",
        gch_region as "gch_region",
        gch_cluster as "gch_cluster",
        gch_subcluster as "gch_subcluster",
        gch_market as "gch_market",
        gch_retail_banner as "gch_retail_banner",
        sku as "sku",
        frnchse_desc as "frnchse_desc",
        brnd_desc as "brnd_desc",
        vrnt_desc as "vrnt_desc",
        putup_desc as "putup_desc",
        item_desc2 as "item_desc2",
        sku_desc as "sku_desc",
        sap_mat_type_cd as "sap_mat_type_cd",
        sap_mat_type_desc as "sap_mat_type_desc",
        sap_base_uom_cd as "sap_base_uom_cd",
        sap_prchse_uom_cd as "sap_prchse_uom_cd",
        sap_prod_sgmt_cd as "sap_prod_sgmt_cd",
        sap_prod_sgmt_desc as "sap_prod_sgmt_desc",
        sap_base_prod_cd as "sap_base_prod_cd",
        sap_base_prod_desc as "sap_base_prod_desc",
        sap_mega_brnd_cd as "sap_mega_brnd_cd",
        sap_mega_brnd_desc as "sap_mega_brnd_desc",
        sap_brnd_cd as "sap_brnd_cd",
        sap_brnd_desc as "sap_brnd_desc",
        sap_vrnt_cd as "sap_vrnt_cd",
        sap_vrnt_desc as "sap_vrnt_desc",
        sap_put_up_cd as "sap_put_up_cd",
        sap_put_up_desc as "sap_put_up_desc",
        sap_grp_frnchse_cd as "sap_grp_frnchse_cd",
        sap_grp_frnchse_desc as "sap_grp_frnchse_desc",
        sap_frnchse_cd as "sap_frnchse_cd",
        sap_frnchse_desc as "sap_frnchse_desc",
        sap_prod_frnchse_cd as "sap_prod_frnchse_cd",
        sap_prod_frnchse_desc as "sap_prod_frnchse_desc",
        sap_prod_mjr_cd as "sap_prod_mjr_cd",
        sap_prod_mjr_desc as "sap_prod_mjr_desc",
        sap_prod_mnr_cd as "sap_prod_mnr_cd",
        sap_prod_mnr_desc as "sap_prod_mnr_desc",
        sap_prod_hier_cd as "sap_prod_hier_cd",
        sap_prod_hier_desc as "sap_prod_hier_desc",
        global_mat_region as "global_mat_region",
        global_prod_franchise as "global_prod_franchise",
        global_prod_brand as "global_prod_brand",
        global_prod_variant as "global_prod_variant",
        global_prod_put_up_cd as "global_prod_put_up_cd",
        global_put_up_desc as "global_put_up_desc",
        global_prod_sub_brand as "global_prod_sub_brand",
        global_prod_need_state as "global_prod_need_state",
        global_prod_category as "global_prod_category",
        global_prod_subcategory as "global_prod_subcategory",
        global_prod_segment as "global_prod_segment",
        global_prod_subsegment as "global_prod_subsegment",
        global_prod_size as "global_prod_size",
        global_prod_size_uom as "global_prod_size_uom",
        from_ccy as "from_ccy",
        to_ccy as "to_ccy",
        exch_rate as "exch_rate",
        pos_qty as "pos_qty",
        pos_gts as "pos_gts",
        pos_item_prc as "pos_item_prc",
        pos_tax as "pos_tax",
        pos_nts as "pos_nts",
        conv_factor as "conv_factor",
        jj_pos_qty_pc as "jj_pos_qty_pc",
        jj_pos_item_prc_per_pc as "jj_pos_item_prc_per_pc",
        jj_pos_gts as "jj_pos_gts",
        jj_pos_vat_amt as "jj_pos_vat_amt",
        jj_pos_nts as "jj_pos_nts",
        is_npi as "is_npi",
        npi_str_period as "npi_str_period",
        npi_end_period as "npi_end_period",
        is_reg as "is_reg",
        is_promo as "is_promo",
        promo_strt_period as "promo_strt_period",
        promo_end_period as "promo_end_period",
        is_mcl as "is_mcl",
        is_hero as "is_hero"
    from mysedw_integration.edw_my_pos_analysis;

create or replace view mysedw_access.edw_my_sellin_analysis 
    as 
    select 
        data_src as "data_src",
        jj_year as "jj_year",
        jj_qtr as "jj_qtr",
        jj_mnth_id as "jj_mnth_id",
        jj_mnth_no as "jj_mnth_no",
        sap_cntry_cd as "sap_cntry_cd",
        cntry_nm as "cntry_nm",
        acct_no as "acct_no",
        acct_desc as "acct_desc",
        sap_state_cd as "sap_state_cd",
        sold_to as "sold_to",
        sold_to_nm as "sold_to_nm",
        sap_sls_org as "sap_sls_org",
        sap_cmp_id as "sap_cmp_id",
        sap_addr as "sap_addr",
        sap_region as "sap_region",
        sap_city as "sap_city",
        sap_post_cd as "sap_post_cd",
        sap_chnl_cd as "sap_chnl_cd",
        sap_chnl_desc as "sap_chnl_desc",
        sap_sls_office_cd as "sap_sls_office_cd",
        sap_sls_office_desc as "sap_sls_office_desc",
        sap_sls_grp_cd as "sap_sls_grp_cd",
        sap_sls_grp_desc as "sap_sls_grp_desc",
        sap_curr_cd as "sap_curr_cd",
        gch_region as "gch_region",
        gch_cluster as "gch_cluster",
        gch_subcluster as "gch_subcluster",
        gch_market as "gch_market",
        gch_retail_banner as "gch_retail_banner",
        loc_cust_nm as "loc_cust_nm",
        dstrbtr_grp_cd as "dstrbtr_grp_cd",
        dstrbtr_grp_nm as "dstrbtr_grp_nm",
        ullage as "ullage",
        chnl as "chnl",
        territory as "territory",
        retail_env as "retail_env",
        rdd_ind as "rdd_ind",
        matl_num as "matl_num",
        matl_desc as "matl_desc",
        matl_desc2 as "matl_desc2",
        matl_desc3 as "matl_desc3",
        frnchse_desc as "frnchse_desc",
        brnd_desc as "brnd_desc",
        vrnt_desc as "vrnt_desc",
        sku_ean_num as "sku_ean_num",
        global_mat_region as "global_mat_region",
        global_prod_franchise as "global_prod_franchise",
        global_prod_brand as "global_prod_brand",
        global_prod_variant as "global_prod_variant",
        global_prod_put_up_cd as "global_prod_put_up_cd",
        global_put_up_desc as "global_put_up_desc",
        put_up_desc as "put_up_desc",
        sap_prod_mnr_cd as "sap_prod_mnr_cd",
        sap_prod_mnr_desc as "sap_prod_mnr_desc",
        sap_prod_hier_cd as "sap_prod_hier_cd",
        sap_prod_hier_desc as "sap_prod_hier_desc",
        global_prod_sub_brand as "global_prod_sub_brand",
        global_prod_need_state as "global_prod_need_state",
        global_prod_category as "global_prod_category",
        global_prod_subcategory as "global_prod_subcategory",
        global_prod_segment as "global_prod_segment",
        global_prod_subsegment as "global_prod_subsegment",
        global_prod_size as "global_prod_size",
        global_prod_size_uom as "global_prod_size_uom",
        sku_launch_dt as "sku_launch_dt",
        qty_shipper_pc as "qty_shipper_pc",
        prft_ctr as "prft_ctr",
        shelf_life as "shelf_life",
        npi_ind as "npi_ind",
        npi_strt_period as "npi_strt_period",
        hero_ind as "hero_ind",
        ciw_ctgry as "ciw_ctgry",
        ciw_buckt1 as "ciw_buckt1",
        ciw_buckt2 as "ciw_buckt2",
        bravo_desc1 as "bravo_desc1",
        bravo_desc2 as "bravo_desc2",
        acct_type as "acct_type",
        acct_type1 as "acct_type1",
        from_crncy as "from_crncy",
        to_crncy as "to_crncy",
        exch_rate as "exch_rate",
        base_val as "base_val",
        sls_qty as "sls_qty",
        ret_qty as "ret_qty",
        sls_less_rtn_qty as "sls_less_rtn_qty",
        gts_val as "gts_val",
        ret_val as "ret_val",
        gts_less_rtn_val as "gts_less_rtn_val",
        trdng_term_val as "trdng_term_val",
        tp_val as "tp_val",
        trde_prmtn_val as "trde_prmtn_val",
        nts_val as "nts_val",
        nts_qty as "nts_qty",
        po_num as "po_num",
        sls_doc_num as "sls_doc_num",
        sls_doc_item as "sls_doc_item",
        sls_doc_type as "sls_doc_type",
        bill_num as "bill_num",
        bill_item as "bill_item",
        doc_creation_dt as "doc_creation_dt",
        order_status as "order_status",
        item_status as "item_status",
        rejectn_st as "rejectn_st",
        rejectn_cd as "rejectn_cd",
        rejectn_desc as "rejectn_desc",
        ord_qty as "ord_qty",
        ord_net_price as "ord_net_price",
        ord_grs_trd_sls as "ord_grs_trd_sls",
        ord_subtotal_2 as "ord_subtotal_2",
        ord_subtotal_3 as "ord_subtotal_3",
        ord_subtotal_4 as "ord_subtotal_4",
        ord_net_amt as "ord_net_amt",
        ord_est_nts as "ord_est_nts",
        missed_val as "missed_val",
        bill_qty_pc as "bill_qty_pc",
        bill_grs_trd_sls as "bill_grs_trd_sls",
        bill_subtotal_2 as "bill_subtotal_2",
        bill_subtotal_3 as "bill_subtotal_3",
        bill_subtotal_4 as "bill_subtotal_4",
        bill_net_amt as "bill_net_amt",
        bill_est_nts as "bill_est_nts",
        bill_net_val as "bill_net_val",
        bill_gross_val as "bill_gross_val",
        trgt_type as "trgt_type",
        trgt_val_type as "trgt_val_type",
        trgt_val as "trgt_val",
        accrual_val as "accrual_val",
        le_trgt_val_wk1 as "le_trgt_val_wk1",
        le_trgt_val_wk2 as "le_trgt_val_wk2",
        le_trgt_val_wk3 as "le_trgt_val_wk3",
        le_trgt_val_wk4 as "le_trgt_val_wk4",
        le_trgt_val_wk5 as "le_trgt_val_wk5",
        curr_prd_elapsed as "curr_prd_elapsed",
        elapsed_flag as "elapsed_flag",
        is_curr as "is_curr",
        afgr_num as "afgr_num",
        cust_dn_num as "cust_dn_num",
        rtn_ord_num as "rtn_ord_num",
        afgr_bill_num as "afgr_bill_num",
        dn_amt_exc_gst_val as "dn_amt_exc_gst_val",
        afgr_amt as "afgr_amt",
        rtn_ord_amt as "rtn_ord_amt",
        cn_amt as "cn_amt",
        afgr_status as "afgr_status",
        afgr_val as "afgr_val",
        afgr_cn_diff as "afgr_cn_diff",
        cur_period_sgt as "cur_period_sgt"
    from mysedw_integration.edw_my_sellin_analysis;

create or replace view mysedw_access.edw_my_sellout_analysis 
    as 
    select 
        data_src as "data_src",
        year as "year",
        qrtr_no as "qrtr_no",
        mnth_id as "mnth_id",
        mnth_no as "mnth_no",
        mnth_nm as "mnth_nm",
        max_yearmo as "max_yearmo",
        cntry_nm as "cntry_nm",
        dstrbtr_grp_cd as "dstrbtr_grp_cd",
        dstrbtr_grp_nm as "dstrbtr_grp_nm",
        dstrbtr_cust_cd as "dstrbtr_cust_cd",
        dstrbtr_cust_nm as "dstrbtr_cust_nm",
        sap_soldto_code as "sap_soldto_code",
        sap_soldto_nm as "sap_soldto_nm",
        dstrbtr_lvl1 as "dstrbtr_lvl1",
        dstrbtr_lvl2 as "dstrbtr_lvl2",
        dstrbtr_lvl3 as "dstrbtr_lvl3",
        dstrbtr_lvl4 as "dstrbtr_lvl4",
        dstrbtr_lvl5 as "dstrbtr_lvl5",
        region_nm as "region_nm",
        town_nm as "town_nm",
        slsmn_cd as "slsmn_cd",
        chnl_desc as "chnl_desc",
        sub_chnl_desc as "sub_chnl_desc",
        chnl_attr1_desc as "chnl_attr1_desc",
        chnl_attr2_desc as "chnl_attr2_desc",
        sap_state_cd as "sap_state_cd",
        sap_sls_org as "sap_sls_org",
        sap_cmp_id as "sap_cmp_id",
        sap_cntry_cd as "sap_cntry_cd",
        sap_cntry_nm as "sap_cntry_nm",
        sap_addr as "sap_addr",
        sap_region as "sap_region",
        sap_city as "sap_city",
        sap_post_cd as "sap_post_cd",
        sap_chnl_cd as "sap_chnl_cd",
        sap_chnl_desc as "sap_chnl_desc",
        sap_sls_office_cd as "sap_sls_office_cd",
        sap_sls_office_desc as "sap_sls_office_desc",
        sap_sls_grp_cd as "sap_sls_grp_cd",
        sap_sls_grp_desc as "sap_sls_grp_desc",
        sap_curr_cd as "sap_curr_cd",
        gch_region as "gch_region",
        gch_cluster as "gch_cluster",
        gch_subcluster as "gch_subcluster",
        gch_market as "gch_market",
        gch_retail_banner as "gch_retail_banner",
        dstrbtr_matl_num as "dstrbtr_matl_num",
        bar_cd as "bar_cd",
        sku as "sku",
        frnchse_desc as "frnchse_desc",
        brnd_desc as "brnd_desc",
        vrnt_desc as "vrnt_desc",
        putup_desc as "putup_desc",
        item_desc2 as "item_desc2",
        sku_desc as "sku_desc",
        sap_mat_type_cd as "sap_mat_type_cd",
        sap_mat_type_desc as "sap_mat_type_desc",
        sap_base_uom_cd as "sap_base_uom_cd",
        sap_prchse_uom_cd as "sap_prchse_uom_cd",
        sap_prod_sgmt_cd as "sap_prod_sgmt_cd",
        sap_prod_sgmt_desc as "sap_prod_sgmt_desc",
        sap_base_prod_cd as "sap_base_prod_cd",
        sap_base_prod_desc as "sap_base_prod_desc",
        sap_mega_brnd_cd as "sap_mega_brnd_cd",
        sap_mega_brnd_desc as "sap_mega_brnd_desc",
        sap_brnd_cd as "sap_brnd_cd",
        sap_brnd_desc as "sap_brnd_desc",
        sap_vrnt_cd as "sap_vrnt_cd",
        sap_vrnt_desc as "sap_vrnt_desc",
        sap_put_up_cd as "sap_put_up_cd",
        sap_put_up_desc as "sap_put_up_desc",
        sap_grp_frnchse_cd as "sap_grp_frnchse_cd",
        sap_grp_frnchse_desc as "sap_grp_frnchse_desc",
        sap_frnchse_cd as "sap_frnchse_cd",
        sap_frnchse_desc as "sap_frnchse_desc",
        sap_prod_frnchse_cd as "sap_prod_frnchse_cd",
        sap_prod_frnchse_desc as "sap_prod_frnchse_desc",
        sap_prod_mjr_cd as "sap_prod_mjr_cd",
        sap_prod_mjr_desc as "sap_prod_mjr_desc",
        sap_prod_mnr_cd as "sap_prod_mnr_cd",
        sap_prod_mnr_desc as "sap_prod_mnr_desc",
        sap_prod_hier_cd as "sap_prod_hier_cd",
        sap_prod_hier_desc as "sap_prod_hier_desc",
        global_mat_region as "global_mat_region",
        global_prod_franchise as "global_prod_franchise",
        global_prod_brand as "global_prod_brand",
        global_prod_variant as "global_prod_variant",
        global_prod_put_up_cd as "global_prod_put_up_cd",
        global_put_up_desc as "global_put_up_desc",
        global_prod_sub_brand as "global_prod_sub_brand",
        global_prod_need_state as "global_prod_need_state",
        global_prod_category as "global_prod_category",
        global_prod_subcategory as "global_prod_subcategory",
        global_prod_segment as "global_prod_segment",
        global_prod_subsegment as "global_prod_subsegment",
        global_prod_size as "global_prod_size",
        global_prod_size_uom as "global_prod_size_uom",
        from_ccy as "from_ccy",
        to_ccy as "to_ccy",
        exch_rate as "exch_rate",
        wh_id as "wh_id",
        doc_type as "doc_type",
        doc_type_desc as "doc_type_desc",
        bill_date as "bill_date",
        bill_doc as "bill_doc",
        base_sls as "base_sls",
        sls_qty as "sls_qty",
        ret_qty as "ret_qty",
        uom as "uom",
        sls_qty_pc as "sls_qty_pc",
        ret_qty_pc as "ret_qty_pc",
        in_transit_qty as "in_transit_qty",
        mat_list_price as "mat_list_price",
        grs_trd_sls as "grs_trd_sls",
        ret_val as "ret_val",
        trd_discnt as "trd_discnt",
        trd_sls as "trd_sls",
        net_trd_sls as "net_trd_sls",
        jj_grs_trd_sls as "jj_grs_trd_sls",
        jj_ret_val as "jj_ret_val",
        jj_trd_sls as "jj_trd_sls",
        jj_net_trd_sls as "jj_net_trd_sls",
        in_transit_val as "in_transit_val",
        trgt_val as "trgt_val",
        inv_dt as "inv_dt",
        warehse_cd as "warehse_cd",
        end_stock_qty as "end_stock_qty",
        end_stock_val_raw as "end_stock_val_raw",
        end_stock_val as "end_stock_val",
        is_npi as "is_npi",
        npi_str_period as "npi_str_period",
        npi_end_period as "npi_end_period",
        is_reg as "is_reg",
        is_promo as "is_promo",
        promo_strt_period as "promo_strt_period",
        promo_end_period as "promo_end_period",
        is_mcl as "is_mcl",
        is_hero as "is_hero",
        contribution as "contribution"
    from mysedw_integration.edw_my_sellout_analysis;

create or replace view mysedw_access.itg_my_sellout_sales_fact 
    as 
    select 
        dstrbtr_id as "dstrbtr_id",
        sls_ord_num as "sls_ord_num",
        sls_ord_dt as "sls_ord_dt",
        type as "type",
        cust_cd as "cust_cd",
        dstrbtr_wh_id as "dstrbtr_wh_id",
        item_cd as "item_cd",
        dstrbtr_prod_cd as "dstrbtr_prod_cd",
        ean_num as "ean_num",
        dstrbtr_prod_desc as "dstrbtr_prod_desc",
        grs_prc as "grs_prc",
        qty as "qty",
        uom as "uom",
        qty_pc as "qty_pc",
        qty_aft_conv as "qty_aft_conv",
        subtotal_1 as "subtotal_1",
        discount as "discount",
        subtotal_2 as "subtotal_2",
        bottom_line_dscnt as "bottom_line_dscnt",
        total_amt_aft_tax as "total_amt_aft_tax",
        total_amt_bfr_tax as "total_amt_bfr_tax",
        sls_emp as "sls_emp",
        custom_field1 as "custom_field1",
        custom_field2 as "custom_field2",
        sap_matl_num as "sap_matl_num",
        filename as "filename",
        cdl_dttm as "cdl_dttm",
        crtd_dttm as "crtd_dttm",
        updt_dttm as "updt_dttm"
    from mysitg_integration.itg_my_sellout_sales_fact;



create or replace view aspedw_access.edw_product_key_attributes 
    as 
    select 
        matl_num as "matl_num",
        matl_desc as "matl_desc",
        crt_on as "crt_on",
        ctry_nm as "ctry_nm",
        matl_type_cd as "matl_type_cd",
        matl_type_desc as "matl_type_desc",
        mega_brnd_cd as "mega_brnd_cd",
        mega_brnd_desc as "mega_brnd_desc",
        brnd_cd as "brnd_cd",
        brnd_desc as "brnd_desc",
        varnt_desc as "varnt_desc",
        base_prod_desc as "base_prod_desc",
        put_up_desc as "put_up_desc",
        prodh1 as "prodh1",
        prodh1_txtmd as "prodh1_txtmd",
        prodh2 as "prodh2",
        prodh2_txtmd as "prodh2_txtmd",
        prodh3 as "prodh3",
        prodh3_txtmd as "prodh3_txtmd",
        prodh4 as "prodh4",
        prodh4_txtmd as "prodh4_txtmd",
        prodh5 as "prodh5",
        prodh5_txtmd as "prodh5_txtmd",
        prodh6 as "prodh6",
        prodh6_txtmd as "prodh6_txtmd",
        prod_hier_cd as "prod_hier_cd",
        gcph_franchise as "gcph_franchise",
        gcph_brand as "gcph_brand",
        gcph_subbrand as "gcph_subbrand",
        gcph_variant as "gcph_variant",
        gcph_needstate as "gcph_needstate",
        gcph_category as "gcph_category",
        gcph_subcategory as "gcph_subcategory",
        gcph_segment as "gcph_segment",
        gcph_subsegment as "gcph_subsegment",
        ean_upc as "ean_upc",
        apac_variant as "apac_variant",
        data_type as "data_type",
        description as "description",
        base_unit as "base_unit",
        "region" as "region",
        regional_brand as "regional_brand",
        regional_subbrand as "regional_subbrand",
        regional_megabrand as "regional_megabrand",
        regional_franchise as "regional_franchise",
        regional_franchise_group as "regional_franchise_group",
        pka_franchise as "pka_franchise",
        pka_franchise_description as "pka_franchise_description",
        pka_brand as "pka_brand",
        pka_brand_description as "pka_brand_description",
        pka_subbrand as "pka_subbrand",
        pka_subbranddesc as "pka_subbranddesc",
        pka_variant as "pka_variant",
        pka_variantdesc as "pka_variantdesc",
        pka_subvariant as "pka_subvariant",
        pka_subvariantdesc as "pka_subvariantdesc",
        pka_flavor as "pka_flavor",
        pka_flavordesc as "pka_flavordesc",
        pka_ingredient as "pka_ingredient",
        pka_ingredientdesc as "pka_ingredientdesc",
        pka_application as "pka_application",
        pka_applicationdesc as "pka_applicationdesc",
        pka_strength as "pka_strength",
        pka_strengthdesc as "pka_strengthdesc",
        pka_shape as "pka_shape",
        pka_shapedesc as "pka_shapedesc",
        pka_spf as "pka_spf",
        pka_spfdesc as "pka_spfdesc",
        pka_cover as "pka_cover",
        pka_coverdesc as "pka_coverdesc",
        pka_form as "pka_form",
        pka_formdesc as "pka_formdesc",
        pka_size as "pka_size",
        pka_sizedesc as "pka_sizedesc",
        pka_character as "pka_character",
        pka_charaterdesc as "pka_charaterdesc",
        pka_package as "pka_package",
        pka_packagedesc as "pka_packagedesc",
        pka_attribute13 as "pka_attribute13",
        pka_attribute13desc as "pka_attribute13desc",
        pka_attribute14 as "pka_attribute14",
        pka_attribute14desc as "pka_attribute14desc",
        pka_skuidentification as "pka_skuidentification",
        pka_skuiddesc as "pka_skuiddesc",
        pka_onetimerel as "pka_onetimerel",
        pka_onetimereldesc as "pka_onetimereldesc",
        pka_productkey as "pka_productkey",
        pka_productdesc as "pka_productdesc",
        pka_rootcode as "pka_rootcode",
        pka_rootcodedes as "pka_rootcodedes",
        nts_flag as "nts_flag",
        lst_nts as "lst_nts",
        load_date as "load_date",
        greenlight_sku_flag as "greenlight_sku_flag",
        total_size as "total_size"
    from aspedw_integration.edw_product_key_attributes;
create or replace view aspedw_access.edw_rpt_rg_travel_retail 
    as 
    select 
        ctry_cd as "ctry_cd",
        crncy_cd as "crncy_cd",
        country_name as "country_name",
        retailer_name as "retailer_name",
        year as "year",
        month as "month",
        year_month as "year_month",
        dcl_code as "dcl_code",
        matl_num as "matl_num",
        sub_brand as "sub_brand",
        sub_brand_desc as "sub_brand_desc",
        variant as "variant",
        variant_desc as "variant_desc",
        sub_variant as "sub_variant",
        sub_variant_desc as "sub_variant_desc",
        ingredient as "ingredient",
        ingredient_desc as "ingredient_desc",
        cover as "cover",
        cover_desc as "cover_desc",
        form as "form",
        form_desc as "form_desc",
        product_key_desc as "product_key_desc",
        target_type as "target_type",
        doors as "doors",
        cust_num as "cust_num",
        sales_location as "sales_location",
        sales_channel as "sales_channel",
        sellout_qty as "sellout_qty",
        sellout_value_usd as "sellout_value_usd",
        sellin_qty as "sellin_qty",
        sellin_value_usd as "sellin_value_usd",
        inv_qty as "inv_qty",
        inv_value_usd as "inv_value_usd",
        opening_inv_qty as "opening_inv_qty",
        closing_inv_qty as "closing_inv_qty",
        opening_inv_value_usd as "opening_inv_value_usd",
        closing_inv_value_usd as "closing_inv_value_usd",
        nts_tgt_usd as "nts_tgt_usd"
    from aspedw_integration.edw_rpt_rg_travel_retail;
create or replace view aspedw_access.v_rpt_copa 
    as 
    select 
        "prev_fisc_yr_per" as "prev_fisc_yr_per",
		"latest_date" as "latest_date",
		"latest_fisc_yrmnth" as "latest_fisc_yrmnth",
		"fisc_yr" as "fisc_yr",
		"fisc_yr_per" as "fisc_yr_per",
		"fisc_day" as "fisc_day",
		"ctry_nm" as "ctry_nm",
		"cluster" as "cluster",
		"obj_crncy_co_obj" as "obj_crncy_co_obj",
		"b1 mega-brand" as "b1 mega-brand",
		"b2 brand" as "b2 brand",
		"b3 base product" as "b3 base product",
		"b4 variant" as "b4 variant",
		"b5 put-up" as "b5 put-up",
		"prod h1 operating group" as "prod h1 operating group",
		"prod h2 franchise group" as "prod h2 franchise group",
		"prod h3 franchise" as "prod h3 franchise",
		"prod h4 product franchise" as "prod h4 product franchise",
		"prod h5 product major" as "prod h5 product major",
		"prod h6 product minor" as "prod h6 product minor",
		"parent customer" as "parent customer",
		"banner" as "banner",
		"banner format" as "banner format",
		"channel" as "channel",
		"go to model" as "go to model",
		"sub channel" as "sub channel",
		"retail_env" as "retail_env",
		"nts_usd" as "nts_usd",
		"nts_lcy" as "nts_lcy",
		"gts_usd" as "gts_usd",
		"gts_lcy" as "gts_lcy",
		"eq_usd" as "eq_usd",
		"eq_lcy" as "eq_lcy",
		"from_crncy" as "from_crncy",
		"to_crncy" as "to_crncy",
		"nts_qty" as "nts_qty",
		"gts_qty" as "gts_qty",
		"eq_qty" as "eq_qty",
		"ord_pc_qty" as "ord_pc_qty",
		"unspp_qty" as "unspp_qty",
		"cust_num" as "cust_num"
    from aspedw_integration.v_rpt_copa;

create or replace view aspedw_access.v_rpt_copa_sku 
    as 
    select 
        "fisc_yr" as "fisc_yr",
        "fisc_yr_per" as "fisc_yr_per",
        "fisc_day" as "fisc_day",
        "ctry_nm" as "ctry_nm",
        "cluster" as "cluster",
        "obj_crncy_co_obj" as "obj_crncy_co_obj",
        "b1 mega-brand" as "b1 mega-brand",
        "b2 brand" as "b2 brand",
        "b3 base product" as "b3 base product",
        "b4 variant" as "b4 variant",
        "b5 put-up" as "b5 put-up",
        "prod h1 operating group" as "prod h1 operating group",
        "prod h2 franchise group" as "prod h2 franchise group",
        "prod h3 franchise" as "prod h3 franchise",
        "prod h4 product franchise" as "prod h4 product franchise",
        "prod h5 product major" as "prod h5 product major",
        "prod h6 product minor" as "prod h6 product minor",
        "pka_franchise_desc" as "pka_franchise_desc",
        "pka_brand_desc" as "pka_brand_desc",
        "pka_sub_brand_desc" as "pka_sub_brand_desc",
        "pka_variant_desc" as "pka_variant_desc",
        "pka_sub_variant_desc" as "pka_sub_variant_desc",
        "pka_flavor_desc" as "pka_flavor_desc",
        "pka_ingredient_desc" as "pka_ingredient_desc",
        "pka_application_desc" as "pka_application_desc",
        "pka_length_desc" as "pka_length_desc",
        "pka_shape_desc" as "pka_shape_desc",
        "pka_spf_desc" as "pka_spf_desc",
        "pka_cover_desc" as "pka_cover_desc",
        "pka_form_desc" as "pka_form_desc",
        "pka_size_desc" as "pka_size_desc",
        "pka_character_desc" as "pka_character_desc",
        "pka_package_desc" as "pka_package_desc",
        "pka_attribute_13_desc" as "pka_attribute_13_desc",
        "pka_attribute_14_desc" as "pka_attribute_14_desc",
        "pka_sku_identification_desc" as "pka_sku_identification_desc",
        "pka_one_time_relabeling_desc" as "pka_one_time_relabeling_desc",
        "pka_product_key" as "pka_product_key",
        "pka_product_key_description" as "pka_product_key_description",
        "pka_product_key_description_2" as "pka_product_key_description_2",
        "pka_root_code" as "pka_root_code",
        "pka_root_code_desc_1" as "pka_root_code_desc_1",
        "pka_root_code_desc_2" as "pka_root_code_desc_2",
        "greenlight_sku_flag" as "greenlight_sku_flag",
        "parent customer" as "parent customer",
        "banner" as "banner",
        "banner format" as "banner format",
        "channel" as "channel",
        "go to model" as "go to model",
        "sub channel" as "sub channel",
        "retail_env" as "retail_env",
        "nts_usd" as "nts_usd",
        "nts_lcy" as "nts_lcy",
        "gts_usd" as "gts_usd",
        "gts_lcy" as "gts_lcy",
        "eq_usd" as "eq_usd",
        "eq_lcy" as "eq_lcy",
        "from_crncy" as "from_crncy",
        "to_crncy" as "to_crncy",
        "nts_qty" as "nts_qty",
        "gts_qty" as "gts_qty",
        "eq_qty" as "eq_qty",
        "product code" as "product code",
        "product name" as"product name"
    from aspedw_integration.v_rpt_copa_sku;

create or replace view aspedw_access.v_rpt_copa_ciw 
as 
select 
	"fisc_yr",
	"fisc_yr_per",
	"fisc_day",
	"ctry_nm",
	"cluster",
	"obj_crncy_co_obj",
	"from_crncy",
	"acct_nm",
	"acct_num",
	"ciw_desc",
	"ciw_bucket",
	"csw_desc",
	"b1 mega-brand",
	"b2 brand",
	"b3 base product",
	"b4 variant",
	"b5 put-up",
	"cust_num",
	"parent customer",
	"banner",
	"banner format",
	"channel",
	"go to model",
	"sub channel",
	"retail_env",
	"gcph_franchise",
	"gcph_brand",
	"gcph_subbrand",
	"gcph_variant",
	"put_up_description",
	"gcph_needstate",
	"gcph_category",
	"gcph_subcategory",
	"gcph_segment",
	"gcph_subsegment",
	"gcch_total_enterprise",
	"gcch_retail_banner",
	"gcch_primary_format",
	"gcch_distributor_attribute",
	"acct_hier_shrt_desc",
	"qty",
	"amt_lcy",
	"amt_usd"
 from aspedw_integration.v_rpt_copa_ciw;
