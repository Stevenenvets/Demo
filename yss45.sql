select * from v45yss.vb_dva_item t where t.c_item_code like 'SYJZ_JZSY%';
select * from v45yss.vb_dva_item t where t.c_item_code = 'ZQZH_JJZX';
select * from v45yss.vb_voc t where t.c_dv_type = 'KM_CLS';   --c_dv_km_cls 科目类别 vb_dai_item
select * from v45yss.vb_voc t where t.c_dv_type = 'IVT_CLS';   --c_ivt_clss 投资分类
select * from v45yss.vb_dai_item t where t.c_pa_code = 'YYFY'; --c_pa_code  核算项目
select * from v45yss.vb_voc t where t.c_dv_code in ('IC_HM','IC_TD','IC_FS'); -- c_hld_attr 持有属性
select * from v45yss.vb_trade_attr ; --c_td_attr 交易属性
select * from v45yss.vb_voc t where t.c_dv_type = 'ISSUE_MODE';--c_ml_attr 受限流通类别 
select * from v45yss.vb_tradechan; --c_tdchan_code 交易渠道
select * from v45yss.vb_voc t where t.c_dv_type = 'FEE_TYPE';--c_dv_fee_type 费用类型
select * from v45yss.vb_dva_item t where t.c_item_code = 'ZQZH_JJZX';  --c_dva_item_code 核算业务项  c_dt_code 交易方式
select * from v45yss.vf_report_val t  where t.c_port_code = '000773' and t.d_biz = date'2022-07-20'; --估值表
select * from  v45yss.vf_voucherdetail t where t.c_port_code = '000773' and t.d_biz = date'2022-06-20'; --凭证流水明细
