create or replace view ASPEDW_INTEGRATION.V_EDW_CUSTOMER_SALES_DIM(
	"clnt",
	"cust_num",
	"sls_org",
	"dstr_chnl",
	"div",
	"obj_crt_prsn",
	"rec_crt_dt",
	"auth_grp",
	"cust_del_flag",
	"cust_stat_grp",
	"cust_ord_blk",
	"prc_pcdr_asgn",
	"cust_grp",
	"sls_dstrc",
	"prc_grp",
	"prc_list_typ",
	"ord_prob_itm",
	"incoterm1",
	"incoterm2",
	"cust_delv_blk",
	"cmplt_delv_sls_ord",
	"max_no_prtl_delv_allw_itm",
	"prtl_delv_itm_lvl",
	"ord_comb_in",
	"btch_splt_allw",
	"delv_prir",
	"vend_acct_num",
	"shipping_cond",
	"bill_blk_cust",
	"man_invc_maint",
	"invc_dt",
	"invc_list_sched",
	"cost_est_in",
	"val_lmt_cost_est",
	"crncy_key",
	"cust_clas",
	"acct_asgnmt_grp",
	"delv_plnt",
	"sls_grp",
	"sls_grp_desc",
	"sls_ofc",
	"sls_ofc_desc",
	"itm_props",
	"cust_grp1",
	"cust_grp2",
	"cust_grp3",
	"cust_grp4",
	"cust_grp5",
	"cust_rebt_in",
	"rebt_indx_cust_strt_prd",
	"exch_rt_typ",
	"prc_dtrmn_id",
	"prod_attr_id1",
	"prod_attr_id2",
	"prod_attr_id3",
	"prod_attr_id4",
	"prod_attr_id5",
	"prod_attr_id6",
	"prod_attr_id7",
	"prod_attr_id8",
	"prod_attr_id9",
	"prod_attr_id10",
	"pymt_key_term",
	"persnl_num",
	"crt_dttm",
	"updt_dttm",
	"cur_sls_emp",
	"lcl_cust_grp_1",
	"lcl_cust_grp_2",
	"lcl_cust_grp_3",
	"lcl_cust_grp_4",
	"lcl_cust_grp_5",
	"lcl_cust_grp_6",
	"lcl_cust_grp_7",
	"lcl_cust_grp_8",
	"prc_proc",
	"par_del",
	"max_num_pa",
	"prnt_cust_key",
	"bnr_key",
	"bnr_frmt_key",
	"go_to_mdl_key",
	"chnl_key",
	"sub_chnl_key",
	"segmt_key",
	"cust_set_1",
	"cust_set_2",
	"cust_set_3",
	"cust_set_4",
	"cust_set_5",
	"parent customer",
	"banner",
	"banner format",
	"channel",
	"go to model",
	"sub channel",
	"retail_env",
	"code_desc"
) as (
    with edw_customer_sales_dim as(
    select * from PROD_DNA_CORE.ASPEDW_INTEGRATION.edw_customer_sales_dim
),
edw_code_descriptions as(
    select * from PROD_DNA_CORE.ASPEDW_INTEGRATION.edw_code_descriptions    
),
edw_code_descriptions_manual as(
    select * from PROD_DNA_CORE.aspedw_integration.edw_code_descriptions_manual    
),
edw_subchnl_retail_env_mapping as(
    select * from PROD_DNA_CORE.aspedw_integration.edw_subchnl_retail_env_mapping
),
transformed as(
(
  SELECT
    cus_sales.clnt,
    cus_sales.cust_num,
    cus_sales.sls_org,
    cus_sales.dstr_chnl,
    cus_sales.div,
    cus_sales.obj_crt_prsn,
    cus_sales.rec_crt_dt,
    cus_sales.auth_grp,
    cus_sales.cust_del_flag,
    cus_sales.cust_stat_grp,
    cus_sales.cust_ord_blk,
    cus_sales.prc_pcdr_asgn,
    cus_sales.cust_grp,
    cus_sales.sls_dstrc,
    cus_sales.prc_grp,
    cus_sales.prc_list_typ,
    cus_sales.ord_prob_itm,
    cus_sales.incoterm1,
    cus_sales.incoterm2,
    cus_sales.cust_delv_blk,
    cus_sales.cmplt_delv_sls_ord,
    cus_sales.max_no_prtl_delv_allw_itm,
    cus_sales.prtl_delv_itm_lvl,
    cus_sales.ord_comb_in,
    cus_sales.btch_splt_allw,
    cus_sales.delv_prir,
    cus_sales.vend_acct_num,
    cus_sales.shipping_cond,
    cus_sales.bill_blk_cust,
    cus_sales.man_invc_maint,
    cus_sales.invc_dt,
    cus_sales.invc_list_sched,
    cus_sales.cost_est_in,
    cus_sales.val_lmt_cost_est,
    cus_sales.crncy_key,
    cus_sales.cust_clas,
    cus_sales.acct_asgnmt_grp,
    cus_sales.delv_plnt,
    cus_sales.sls_grp,
    cus_sales.sls_grp_desc,
    cus_sales.sls_ofc,
    cus_sales.sls_ofc_desc,
    cus_sales.itm_props,
    cus_sales.cust_grp1,
    cus_sales.cust_grp2,
    cus_sales.cust_grp3,
    cus_sales.cust_grp4,
    cus_sales.cust_grp5,
    cus_sales.cust_rebt_in,
    cus_sales.rebt_indx_cust_strt_prd,
    cus_sales.exch_rt_typ,
    cus_sales.prc_dtrmn_id,
    cus_sales.prod_attr_id1,
    cus_sales.prod_attr_id2,
    cus_sales.prod_attr_id3,
    cus_sales.prod_attr_id4,
    cus_sales.prod_attr_id5,
    cus_sales.prod_attr_id6,
    cus_sales.prod_attr_id7,
    cus_sales.prod_attr_id8,
    cus_sales.prod_attr_id9,
    cus_sales.prod_attr_id10,
    cus_sales.pymt_key_term,
    cus_sales.persnl_num,
    cus_sales.crt_dttm,
    cus_sales.updt_dttm,
    cus_sales.cur_sls_emp,
    cus_sales.lcl_cust_grp_1,
    cus_sales.lcl_cust_grp_2,
    cus_sales.lcl_cust_grp_3,
    cus_sales.lcl_cust_grp_4,
    cus_sales.lcl_cust_grp_5,
    cus_sales.lcl_cust_grp_6,
    cus_sales.lcl_cust_grp_7,
    cus_sales.lcl_cust_grp_8,
    cus_sales.prc_proc,
    cus_sales.par_del,
    cus_sales.max_num_pa,
    cus_sales.prnt_cust_key,
    cus_sales.bnr_key,
    cus_sales.bnr_frmt_key,
    cus_sales.go_to_mdl_key,
    cus_sales.chnl_key,
    cus_sales.sub_chnl_key,
    cus_sales.segmt_key,
    cus_sales.cust_set_1,
    cus_sales.cust_set_2,
    cus_sales.cust_set_3,
    cus_sales.cust_set_4,
    cus_sales.cust_set_5,
    cddes_pck.code_desc AS "parent customer",
    cddes_bnrkey.code_desc AS banner,
    cddes_bnrfmt.code_desc AS "banner format",
    cddes_chnl.code_desc AS channel,
    cddes_gtm.code_desc AS "go to model",
    cddes_subchnl.code_desc AS "sub channel",
    subchnl_retail_env.retail_env,
    ecdm.code_desc
  FROM (
    (
      (
        (
          (
            (
              (
                (
                  edw_customer_sales_dim AS cus_sales
                    LEFT JOIN edw_code_descriptions AS cddes_pck
                      ON (
                        (
                          (
                            CAST((
                              cddes_pck.code_type
                            ) AS TEXT) = CAST((
                              CAST('Parent Customer Key' AS VARCHAR)
                            ) AS TEXT)
                          )
                          AND (
                            CAST((
                              cddes_pck.code
                            ) AS TEXT) = CAST((
                              cus_sales.prnt_cust_key
                            ) AS TEXT)
                          )
                        )
                      )
                )
                LEFT JOIN edw_code_descriptions AS cddes_bnrkey
                  ON (
                    (
                      (
                        CAST((
                          cddes_bnrkey.code_type
                        ) AS TEXT) = CAST((
                          CAST('Banner Key' AS VARCHAR)
                        ) AS TEXT)
                      )
                      AND (
                        CAST((
                          cddes_bnrkey.code
                        ) AS TEXT) = CAST((
                          cus_sales.bnr_key
                        ) AS TEXT)
                      )
                    )
                  )
              )
              LEFT JOIN edw_code_descriptions AS cddes_bnrfmt
                ON (
                  (
                    (
                      CAST((
                        cddes_bnrfmt.code_type
                      ) AS TEXT) = CAST((
                        CAST('Banner Format Key' AS VARCHAR)
                      ) AS TEXT)
                    )
                    AND (
                      CAST((
                        cddes_bnrfmt.code
                      ) AS TEXT) = CAST((
                        cus_sales.bnr_frmt_key
                      ) AS TEXT)
                    )
                  )
                )
            )
            LEFT JOIN edw_code_descriptions AS cddes_chnl
              ON (
                (
                  (
                    CAST((
                      cddes_chnl.code_type
                    ) AS TEXT) = CAST((
                      CAST('Channel Key' AS VARCHAR)
                    ) AS TEXT)
                  )
                  AND (
                    CAST((
                      cddes_chnl.code
                    ) AS TEXT) = CAST((
                      cus_sales.chnl_key
                    ) AS TEXT)
                  )
                )
              )
          )
          LEFT JOIN edw_code_descriptions AS cddes_gtm
            ON (
              (
                (
                  CAST((
                    cddes_gtm.code_type
                  ) AS TEXT) = CAST((
                    CAST('Go To Model Key' AS VARCHAR)
                  ) AS TEXT)
                )
                AND (
                  CAST((
                    cddes_gtm.code
                  ) AS TEXT) = CAST((
                    cus_sales.go_to_mdl_key
                  ) AS TEXT)
                )
              )
            )
        )
        LEFT JOIN edw_code_descriptions AS cddes_subchnl
          ON (
            (
              (
                CAST((
                  cddes_subchnl.code_type
                ) AS TEXT) = CAST((
                  CAST('Sub Channel Key' AS VARCHAR)
                ) AS TEXT)
              )
              AND (
                CAST((
                  cddes_subchnl.code
                ) AS TEXT) = CAST((
                  cus_sales.sub_chnl_key
                ) AS TEXT)
              )
            )
          )
      )
      LEFT JOIN edw_subchnl_retail_env_mapping AS subchnl_retail_env
        ON (
          (
            UPPER(CAST((
              subchnl_retail_env.sub_channel
            ) AS TEXT)) = UPPER(CAST((
              cddes_subchnl.code_desc
            ) AS TEXT))
          )
        )
    )
    LEFT JOIN (
      SELECT DISTINCT
        edw_code_descriptions_manual.source_type,
        edw_code_descriptions_manual.code_type,
        edw_code_descriptions_manual.code,
        edw_code_descriptions_manual.code_desc
      FROM edw_code_descriptions_manual
    ) AS ecdm
      ON (
        (
          CAST((
            cus_sales.cust_grp
          ) AS TEXT) = CAST((
            ecdm.code
          ) AS TEXT)
        )
      )
  )
  WHERE
    (
      NOT (
        (
          COALESCE(
            LTRIM(CAST((
              cus_sales.cust_num
            ) AS TEXT), CAST((
              CAST('0' AS VARCHAR)
            ) AS TEXT)),
            CAST((
              CAST('' AS VARCHAR)
            ) AS TEXT)
          ) || CAST((
            COALESCE(cus_sales.sls_org, CAST('' AS VARCHAR))
          ) AS TEXT)
        ) IN (
          SELECT
            (
              COALESCE(
                LTRIM(
                  CAST((
                    edw_customer_sales_dim.cust_num
                  ) AS TEXT),
                  CAST((
                    CAST('0' AS VARCHAR)
                  ) AS TEXT)
                ),
                CAST((
                  CAST('' AS VARCHAR)
                ) AS TEXT)
              ) || CAST((
                COALESCE(edw_customer_sales_dim.sls_org, CAST('' AS VARCHAR))
              ) AS TEXT)
            )
          FROM edw_customer_sales_dim
          WHERE
            (
              (
                (
                  (
                    (
                      (
                        (
                          LTRIM(
                            CAST((
                              edw_customer_sales_dim.cust_num
                            ) AS TEXT),
                            CAST((
                              CAST('0' AS VARCHAR)
                            ) AS TEXT)
                          ) = CAST((
                            CAST('134106' AS VARCHAR)
                          ) AS TEXT)
                        )
                        OR (
                          LTRIM(
                            CAST((
                              edw_customer_sales_dim.cust_num
                            ) AS TEXT),
                            CAST((
                              CAST('0' AS VARCHAR)
                            ) AS TEXT)
                          ) = CAST((
                            CAST('134258' AS VARCHAR)
                          ) AS TEXT)
                        )
                      )
                      OR (
                        LTRIM(
                          CAST((
                            edw_customer_sales_dim.cust_num
                          ) AS TEXT),
                          CAST((
                            CAST('0' AS VARCHAR)
                          ) AS TEXT)
                        ) = CAST((
                          CAST('134559' AS VARCHAR)
                        ) AS TEXT)
                      )
                    )
                    OR (
                      LTRIM(
                        CAST((
                          edw_customer_sales_dim.cust_num
                        ) AS TEXT),
                        CAST((
                          CAST('0' AS VARCHAR)
                        ) AS TEXT)
                      ) = CAST((
                        CAST('135353' AS VARCHAR)
                      ) AS TEXT)
                    )
                  )
                  OR (
                    LTRIM(
                      CAST((
                        edw_customer_sales_dim.cust_num
                      ) AS TEXT),
                      CAST((
                        CAST('0' AS VARCHAR)
                      ) AS TEXT)
                    ) = CAST((
                      CAST('135520' AS VARCHAR)
                    ) AS TEXT)
                  )
                )
                OR (
                  LTRIM(
                    CAST((
                      edw_customer_sales_dim.cust_num
                    ) AS TEXT),
                    CAST((
                      CAST('0' AS VARCHAR)
                    ) AS TEXT)
                  ) = CAST((
                    CAST('135117' AS VARCHAR)
                  ) AS TEXT)
                )
              )
              AND (
                CAST((
                  edw_customer_sales_dim.sls_org
                ) AS TEXT) = CAST((
                  CAST('100A' AS VARCHAR)
                ) AS TEXT)
              )
            )
        )
      )
    )
  UNION ALL
  SELECT
    cus_sales.clnt,
    cus_sales.cust_num,
    '100A' AS sls_org,
    '15' AS dstr_chnl,
    cus_sales.div,
    cus_sales.obj_crt_prsn,
    cus_sales.rec_crt_dt,
    cus_sales.auth_grp,
    cus_sales.cust_del_flag,
    cus_sales.cust_stat_grp,
    cus_sales.cust_ord_blk,
    cus_sales.prc_pcdr_asgn,
    cus_sales.cust_grp,
    cus_sales.sls_dstrc,
    cus_sales.prc_grp,
    cus_sales.prc_list_typ,
    cus_sales.ord_prob_itm,
    cus_sales.incoterm1,
    cus_sales.incoterm2,
    cus_sales.cust_delv_blk,
    cus_sales.cmplt_delv_sls_ord,
    cus_sales.max_no_prtl_delv_allw_itm,
    cus_sales.prtl_delv_itm_lvl,
    cus_sales.ord_comb_in,
    cus_sales.btch_splt_allw,
    cus_sales.delv_prir,
    cus_sales.vend_acct_num,
    cus_sales.shipping_cond,
    cus_sales.bill_blk_cust,
    cus_sales.man_invc_maint,
    cus_sales.invc_dt,
    cus_sales.invc_list_sched,
    cus_sales.cost_est_in,
    cus_sales.val_lmt_cost_est,
    cus_sales.crncy_key,
    cus_sales.cust_clas,
    cus_sales.acct_asgnmt_grp,
    cus_sales.delv_plnt,
    cus_sales.sls_grp,
    cus_sales.sls_grp_desc,
    cus_sales.sls_ofc,
    cus_sales.sls_ofc_desc,
    cus_sales.itm_props,
    cus_sales.cust_grp1,
    cus_sales.cust_grp2,
    cus_sales.cust_grp3,
    cus_sales.cust_grp4,
    cus_sales.cust_grp5,
    cus_sales.cust_rebt_in,
    cus_sales.rebt_indx_cust_strt_prd,
    cus_sales.exch_rt_typ,
    cus_sales.prc_dtrmn_id,
    cus_sales.prod_attr_id1,
    cus_sales.prod_attr_id2,
    cus_sales.prod_attr_id3,
    cus_sales.prod_attr_id4,
    cus_sales.prod_attr_id5,
    cus_sales.prod_attr_id6,
    cus_sales.prod_attr_id7,
    cus_sales.prod_attr_id8,
    cus_sales.prod_attr_id9,
    cus_sales.prod_attr_id10,
    cus_sales.pymt_key_term,
    cus_sales.persnl_num,
    cus_sales.crt_dttm,
    cus_sales.updt_dttm,
    cus_sales.cur_sls_emp,
    cus_sales.lcl_cust_grp_1,
    cus_sales.lcl_cust_grp_2,
    cus_sales.lcl_cust_grp_3,
    cus_sales.lcl_cust_grp_4,
    cus_sales.lcl_cust_grp_5,
    cus_sales.lcl_cust_grp_6,
    cus_sales.lcl_cust_grp_7,
    cus_sales.lcl_cust_grp_8,
    cus_sales.prc_proc,
    cus_sales.par_del,
    cus_sales.max_num_pa,
    cus_sales.prnt_cust_key,
    cus_sales.bnr_key,
    cus_sales.bnr_frmt_key,
    cus_sales.go_to_mdl_key,
    cus_sales.chnl_key,
    cus_sales.sub_chnl_key,
    cus_sales.segmt_key,
    cus_sales.cust_set_1,
    cus_sales.cust_set_2,
    cus_sales.cust_set_3,
    cus_sales.cust_set_4,
    cus_sales.cust_set_5,
    cddes_pck.code_desc AS "parent customer",
    cddes_bnrkey.code_desc AS banner,
    cddes_bnrfmt.code_desc AS "banner format",
    cddes_chnl.code_desc AS channel,
    cddes_gtm.code_desc AS "go to model",
    cddes_subchnl.code_desc AS "sub channel",
    subchnl_retail_env.retail_env,
    replace(NULL ,'UNKNOWN') AS code_desc
  FROM (
    (
      (
        (
          (
            (
              (
                edw_customer_sales_dim AS cus_sales
                  LEFT JOIN edw_code_descriptions AS cddes_pck
                    ON (
                      (
                        (
                          CAST((
                            cddes_pck.code_type
                          ) AS TEXT) = CAST((
                            CAST('Parent Customer Key' AS VARCHAR)
                          ) AS TEXT)
                        )
                        AND (
                          CAST((
                            cddes_pck.code
                          ) AS TEXT) = CAST((
                            cus_sales.prnt_cust_key
                          ) AS TEXT)
                        )
                      )
                    )
              )
              LEFT JOIN edw_code_descriptions AS cddes_bnrkey
                ON (
                  (
                    (
                      CAST((
                        cddes_bnrkey.code_type
                      ) AS TEXT) = CAST((
                        CAST('Banner Key' AS VARCHAR)
                      ) AS TEXT)
                    )
                    AND (
                      CAST((
                        cddes_bnrkey.code
                      ) AS TEXT) = CAST((
                        cus_sales.bnr_key
                      ) AS TEXT)
                    )
                  )
                )
            )
            LEFT JOIN edw_code_descriptions AS cddes_bnrfmt
              ON (
                (
                  (
                    CAST((
                      cddes_bnrfmt.code_type
                    ) AS TEXT) = CAST((
                      CAST('Banner Format Key' AS VARCHAR)
                    ) AS TEXT)
                  )
                  AND (
                    CAST((
                      cddes_bnrfmt.code
                    ) AS TEXT) = CAST((
                      cus_sales.bnr_frmt_key
                    ) AS TEXT)
                  )
                )
              )
          )
          LEFT JOIN edw_code_descriptions AS cddes_chnl
            ON (
              (
                (
                  CAST((
                    cddes_chnl.code_type
                  ) AS TEXT) = CAST((
                    CAST('Channel Key' AS VARCHAR)
                  ) AS TEXT)
                )
                AND (
                  CAST((
                    cddes_chnl.code
                  ) AS TEXT) = CAST((
                    cus_sales.chnl_key
                  ) AS TEXT)
                )
              )
            )
        )
        LEFT JOIN edw_code_descriptions AS cddes_gtm
          ON (
            (
              (
                CAST((
                  cddes_gtm.code_type
                ) AS TEXT) = CAST((
                  CAST('Go To Model Key' AS VARCHAR)
                ) AS TEXT)
              )
              AND (
                CAST((
                  cddes_gtm.code
                ) AS TEXT) = CAST((
                  cus_sales.go_to_mdl_key
                ) AS TEXT)
              )
            )
          )
      )
      LEFT JOIN edw_code_descriptions AS cddes_subchnl
        ON (
          (
            (
              CAST((
                cddes_subchnl.code_type
              ) AS TEXT) = CAST((
                CAST('Sub Channel Key' AS VARCHAR)
              ) AS TEXT)
            )
            AND (
              CAST((
                cddes_subchnl.code
              ) AS TEXT) = CAST((
                cus_sales.sub_chnl_key
              ) AS TEXT)
            )
          )
        )
    )
    LEFT JOIN edw_subchnl_retail_env_mapping AS subchnl_retail_env
      ON (
        (
          UPPER(CAST((
            subchnl_retail_env.sub_channel
          ) AS TEXT)) = UPPER(CAST((
            cddes_subchnl.code_desc
          ) AS TEXT))
        )
      )
  )
  WHERE
    (
      (
        (
          (
            (
              (
                (
                  CAST((
                    cus_sales.cust_num
                  ) AS TEXT) = CAST((
                    CAST('0000134106' AS VARCHAR)
                  ) AS TEXT)
                )
                OR (
                  CAST((
                    cus_sales.cust_num
                  ) AS TEXT) = CAST((
                    CAST('0000134258' AS VARCHAR)
                  ) AS TEXT)
                )
              )
              OR (
                CAST((
                  cus_sales.cust_num
                ) AS TEXT) = CAST((
                  CAST('0000134559' AS VARCHAR)
                ) AS TEXT)
              )
            )
            OR (
              CAST((
                cus_sales.cust_num
              ) AS TEXT) = CAST((
                CAST('0000135353' AS VARCHAR)
              ) AS TEXT)
            )
          )
          OR (
            CAST((
              cus_sales.cust_num
            ) AS TEXT) = CAST((
              CAST('0000135520' AS VARCHAR)
            ) AS TEXT)
          )
        )
        OR (
          CAST((
            cus_sales.cust_num
          ) AS TEXT) = CAST((
            CAST('0000135117' AS VARCHAR)
          ) AS TEXT)
        )
      )
      AND (
        CAST((
          cus_sales.sls_org
        ) AS TEXT) = CAST((
          CAST('8888' AS VARCHAR)
        ) AS TEXT)
      )
    )
)
UNION ALL
SELECT
  cus_sales.clnt,
  cus_sales.cust_num,
  '100A' AS sls_org,
  '19' AS dstr_chnl,
  cus_sales.div,
  cus_sales.obj_crt_prsn,
  cus_sales.rec_crt_dt,
  cus_sales.auth_grp,
  cus_sales.cust_del_flag,
  cus_sales.cust_stat_grp,
  cus_sales.cust_ord_blk,
  cus_sales.prc_pcdr_asgn,
  cus_sales.cust_grp,
  cus_sales.sls_dstrc,
  cus_sales.prc_grp,
  cus_sales.prc_list_typ,
  cus_sales.ord_prob_itm,
  cus_sales.incoterm1,
  cus_sales.incoterm2,
  cus_sales.cust_delv_blk,
  cus_sales.cmplt_delv_sls_ord,
  cus_sales.max_no_prtl_delv_allw_itm,
  cus_sales.prtl_delv_itm_lvl,
  cus_sales.ord_comb_in,
  cus_sales.btch_splt_allw,
  cus_sales.delv_prir,
  cus_sales.vend_acct_num,
  cus_sales.shipping_cond,
  cus_sales.bill_blk_cust,
  cus_sales.man_invc_maint,
  cus_sales.invc_dt,
  cus_sales.invc_list_sched,
  cus_sales.cost_est_in,
  cus_sales.val_lmt_cost_est,
  cus_sales.crncy_key,
  cus_sales.cust_clas,
  cus_sales.acct_asgnmt_grp,
  cus_sales.delv_plnt,
  cus_sales.sls_grp,
  cus_sales.sls_grp_desc,
  cus_sales.sls_ofc,
  cus_sales.sls_ofc_desc,
  cus_sales.itm_props,
  cus_sales.cust_grp1,
  cus_sales.cust_grp2,
  cus_sales.cust_grp3,
  cus_sales.cust_grp4,
  cus_sales.cust_grp5,
  cus_sales.cust_rebt_in,
  cus_sales.rebt_indx_cust_strt_prd,
  cus_sales.exch_rt_typ,
  cus_sales.prc_dtrmn_id,
  cus_sales.prod_attr_id1,
  cus_sales.prod_attr_id2,
  cus_sales.prod_attr_id3,
  cus_sales.prod_attr_id4,
  cus_sales.prod_attr_id5,
  cus_sales.prod_attr_id6,
  cus_sales.prod_attr_id7,
  cus_sales.prod_attr_id8,
  cus_sales.prod_attr_id9,
  cus_sales.prod_attr_id10,
  cus_sales.pymt_key_term,
  cus_sales.persnl_num,
  cus_sales.crt_dttm,
  cus_sales.updt_dttm,
  cus_sales.cur_sls_emp,
  cus_sales.lcl_cust_grp_1,
  cus_sales.lcl_cust_grp_2,
  cus_sales.lcl_cust_grp_3,
  cus_sales.lcl_cust_grp_4,
  cus_sales.lcl_cust_grp_5,
  cus_sales.lcl_cust_grp_6,
  cus_sales.lcl_cust_grp_7,
  cus_sales.lcl_cust_grp_8,
  cus_sales.prc_proc,
  cus_sales.par_del,
  cus_sales.max_num_pa,
  cus_sales.prnt_cust_key,
  cus_sales.bnr_key,
  cus_sales.bnr_frmt_key,
  cus_sales.go_to_mdl_key,
  cus_sales.chnl_key,
  cus_sales.sub_chnl_key,
  cus_sales.segmt_key,
  cus_sales.cust_set_1,
  cus_sales.cust_set_2,
  cus_sales.cust_set_3,
  cus_sales.cust_set_4,
  cus_sales.cust_set_5,
  cddes_pck.code_desc AS "parent customer",
  cddes_bnrkey.code_desc AS banner,
  cddes_bnrfmt.code_desc AS "banner format",
  cddes_chnl.code_desc AS channel,
  cddes_gtm.code_desc AS "go to model",
  cddes_subchnl.code_desc AS "sub channel",
  subchnl_retail_env.retail_env,
  replace(NULL ,'UNKNOWN') AS code_desc
FROM (
  (
    (
      (
        (
          (
            (
              edw_customer_sales_dim AS cus_sales
                LEFT JOIN edw_code_descriptions AS cddes_pck
                  ON (
                    (
                      (
                        CAST((
                          cddes_pck.code_type
                        ) AS TEXT) = CAST((
                          CAST('Parent Customer Key' AS VARCHAR)
                        ) AS TEXT)
                      )
                      AND (
                        CAST((
                          cddes_pck.code
                        ) AS TEXT) = CAST((
                          cus_sales.prnt_cust_key
                        ) AS TEXT)
                      )
                    )
                  )
            )
            LEFT JOIN edw_code_descriptions AS cddes_bnrkey
              ON (
                (
                  (
                    CAST((
                      cddes_bnrkey.code_type
                    ) AS TEXT) = CAST((
                      CAST('Banner Key' AS VARCHAR)
                    ) AS TEXT)
                  )
                  AND (
                    CAST((
                      cddes_bnrkey.code
                    ) AS TEXT) = CAST((
                      cus_sales.bnr_key
                    ) AS TEXT)
                  )
                )
              )
          )
          LEFT JOIN edw_code_descriptions AS cddes_bnrfmt
            ON (
              (
                (
                  CAST((
                    cddes_bnrfmt.code_type
                  ) AS TEXT) = CAST((
                    CAST('Banner Format Key' AS VARCHAR)
                  ) AS TEXT)
                )
                AND (
                  CAST((
                    cddes_bnrfmt.code
                  ) AS TEXT) = CAST((
                    cus_sales.bnr_frmt_key
                  ) AS TEXT)
                )
              )
            )
        )
        LEFT JOIN edw_code_descriptions AS cddes_chnl
          ON (
            (
              (
                CAST((
                  cddes_chnl.code_type
                ) AS TEXT) = CAST((
                  CAST('Channel Key' AS VARCHAR)
                ) AS TEXT)
              )
              AND (
                CAST((
                  cddes_chnl.code
                ) AS TEXT) = CAST((
                  cus_sales.chnl_key
                ) AS TEXT)
              )
            )
          )
      )
      LEFT JOIN edw_code_descriptions AS cddes_gtm
        ON (
          (
            (
              CAST((
                cddes_gtm.code_type
              ) AS TEXT) = CAST((
                CAST('Go To Model Key' AS VARCHAR)
              ) AS TEXT)
            )
            AND (
              CAST((
                cddes_gtm.code
              ) AS TEXT) = CAST((
                cus_sales.go_to_mdl_key
              ) AS TEXT)
            )
          )
        )
    )
    LEFT JOIN edw_code_descriptions AS cddes_subchnl
      ON (
        (
          (
            CAST((
              cddes_subchnl.code_type
            ) AS TEXT) = CAST((
              CAST('Sub Channel Key' AS VARCHAR)
            ) AS TEXT)
          )
          AND (
            CAST((
              cddes_subchnl.code
            ) AS TEXT) = CAST((
              cus_sales.sub_chnl_key
            ) AS TEXT)
          )
        )
      )
  )
  LEFT JOIN edw_subchnl_retail_env_mapping AS subchnl_retail_env
    ON (
      (
        UPPER(CAST((
          subchnl_retail_env.sub_channel
        ) AS TEXT)) = UPPER(CAST((
          cddes_subchnl.code_desc
        ) AS TEXT))
      )
    )
)
WHERE
  (
    (
      (
        (
          (
            (
              (
                CAST((
                  cus_sales.cust_num
                ) AS TEXT) = CAST((
                  CAST('0000134106' AS VARCHAR)
                ) AS TEXT)
              )
              OR (
                CAST((
                  cus_sales.cust_num
                ) AS TEXT) = CAST((
                  CAST('0000134258' AS VARCHAR)
                ) AS TEXT)
              )
            )
            OR (
              CAST((
                cus_sales.cust_num
              ) AS TEXT) = CAST((
                CAST('0000134559' AS VARCHAR)
              ) AS TEXT)
            )
          )
          OR (
            CAST((
              cus_sales.cust_num
            ) AS TEXT) = CAST((
              CAST('0000135353' AS VARCHAR)
            ) AS TEXT)
          )
        )
        OR (
          CAST((
            cus_sales.cust_num
          ) AS TEXT) = CAST((
            CAST('0000135520' AS VARCHAR)
          ) AS TEXT)
        )
      )
      OR (
        CAST((
          cus_sales.cust_num
        ) AS TEXT) = CAST((
          CAST('0000135117' AS VARCHAR)
        ) AS TEXT)
      )
    )
    AND (
      CAST((
        cus_sales.sls_org
      ) AS TEXT) = CAST((
        CAST('8888' AS VARCHAR)
      ) AS TEXT)
    )
)
),
final as(
    select 
    clnt as "clnt",
    cust_num as "cust_num",
    sls_org as "sls_org",
    dstr_chnl as "dstr_chnl",
    div as "div",
    obj_crt_prsn as "obj_crt_prsn",
    rec_crt_dt as "rec_crt_dt",
    auth_grp as "auth_grp",
    cust_del_flag as "cust_del_flag",
    cust_stat_grp as "cust_stat_grp",
    cust_ord_blk as "cust_ord_blk",
    prc_pcdr_asgn as "prc_pcdr_asgn",
    cust_grp as "cust_grp",
    sls_dstrc as "sls_dstrc",
    prc_grp as "prc_grp",
    prc_list_typ as "prc_list_typ",
    ord_prob_itm as "ord_prob_itm",
    incoterm1 as "incoterm1",
    incoterm2 as "incoterm2",
    cust_delv_blk as "cust_delv_blk",
    cmplt_delv_sls_ord as "cmplt_delv_sls_ord",
    max_no_prtl_delv_allw_itm as "max_no_prtl_delv_allw_itm",
    prtl_delv_itm_lvl as "prtl_delv_itm_lvl",
    ord_comb_in as "ord_comb_in",
    btch_splt_allw as "btch_splt_allw",
    delv_prir as "delv_prir",
    vend_acct_num as "vend_acct_num",
    shipping_cond as "shipping_cond",
    bill_blk_cust as "bill_blk_cust",
    man_invc_maint as "man_invc_maint",
    invc_dt as "invc_dt",
    invc_list_sched as "invc_list_sched",
    cost_est_in as "cost_est_in",
    val_lmt_cost_est as "val_lmt_cost_est",
    crncy_key as "crncy_key",
    cust_clas as "cust_clas",
    acct_asgnmt_grp as "acct_asgnmt_grp",
    delv_plnt as "delv_plnt",
    sls_grp as "sls_grp",
    sls_grp_desc as "sls_grp_desc",
    sls_ofc as "sls_ofc",
    sls_ofc_desc as "sls_ofc_desc",
    itm_props as "itm_props",
    cust_grp1 as "cust_grp1",
    cust_grp2 as "cust_grp2",
    cust_grp3 as "cust_grp3",
    cust_grp4 as "cust_grp4",
    cust_grp5 as "cust_grp5",
    cust_rebt_in as "cust_rebt_in",
    rebt_indx_cust_strt_prd as "rebt_indx_cust_strt_prd",
    exch_rt_typ as "exch_rt_typ",
    prc_dtrmn_id as "prc_dtrmn_id",
    prod_attr_id1 as "prod_attr_id1",
    prod_attr_id2 as "prod_attr_id2",
    prod_attr_id3 as "prod_attr_id3",
    prod_attr_id4 as "prod_attr_id4",
    prod_attr_id5 as "prod_attr_id5",
    prod_attr_id6 as "prod_attr_id6",
    prod_attr_id7 as "prod_attr_id7",
    prod_attr_id8 as "prod_attr_id8",
    prod_attr_id9 as "prod_attr_id9",
    prod_attr_id10 as "prod_attr_id10",
    pymt_key_term as "pymt_key_term",
    persnl_num as "persnl_num",
    crt_dttm as "crt_dttm",
    updt_dttm as "updt_dttm",
    cur_sls_emp as "cur_sls_emp",
    lcl_cust_grp_1 as "lcl_cust_grp_1",
    lcl_cust_grp_2 as "lcl_cust_grp_2",
    lcl_cust_grp_3 as "lcl_cust_grp_3",
    lcl_cust_grp_4 as "lcl_cust_grp_4",
    lcl_cust_grp_5 as "lcl_cust_grp_5",
    lcl_cust_grp_6 as "lcl_cust_grp_6",
    lcl_cust_grp_7 as "lcl_cust_grp_7",
    lcl_cust_grp_8 as "lcl_cust_grp_8",
    prc_proc as "prc_proc",
    par_del as "par_del",
    max_num_pa as "max_num_pa",
    prnt_cust_key as "prnt_cust_key",
    bnr_key as "bnr_key",
    bnr_frmt_key as "bnr_frmt_key",
    go_to_mdl_key as "go_to_mdl_key",
    chnl_key as "chnl_key",
    sub_chnl_key as "sub_chnl_key",
    segmt_key as "segmt_key",
    cust_set_1 as "cust_set_1",
    cust_set_2 as "cust_set_2",
    cust_set_3 as "cust_set_3",
    cust_set_4 as "cust_set_4",
    cust_set_5 as "cust_set_5",
    "parent customer" as "parent customer",
    banner as "banner",
    "banner format" as "banner format",
    channel as "channel",
    "go to model" as "go to model",
    "sub channel" as "sub channel",
    retail_env as "retail_env",
    code_desc as "code_desc"
    from transformed
)

select * from final
  );
