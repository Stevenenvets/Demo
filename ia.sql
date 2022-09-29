select * from hs_its.its_his_comb_entrust t where  t.client_id in ('10070000001293') and t.init_date = '20220711';--交易订单表 
select * from hs_its.its_prod_code t where t.main_prod_code = '003062';--产品代码表
select * from hs_its.its_his_prod_price  t where t.prod_code = '003834' order by t.update_date asc;--产品行情表
select * from hs_its.its_command_rebalance t where t.combine_code = 'RRE9VVG';--再平衡指令表
select * from hs_its.its_prod_spare_pool;--备选产品代码表
select * from hs_its.its_dict_entry;--字典条目表
select * from hs_its.its_client_info  t where  t.client_id in ('10070000001293','10070000000017');--客户信息表
select * from hs_its.its_client  t where  t.client_id in ('10070000001293','10070000000017');--客户基本信息表
select * from hs_its.its_client_riskrecord   t where  t.client_id in ('10070000001293','10070000000017') and t.combine_code = 'RRE9VVG';--客户风险监控记录表
select * from hs_its.its_client_riskwarning t where  t.client_id in ('10070000001293','10070000000017') and t.combine_code = 'RRE9VVG';--客户风险监控预警表
select * from hs_its.its_acptform t where t.client_id in ('10070000001293','10070000000017');--投顾受理表
select * from hs_its.its_agreement t where t.client_id in ('10070000001293','10070000000017','10120000000048');--投顾签约信息表
select * from hs_its.its_command_plan t where t.client_id in ('10070000001293','10070000000017');--指令计划表
select * from hs_its.its_dictionary t where t.dict_entry = '39016';--数据字典表
select * from hs_its.its_arg;--系统参数表
select * from hs_its.its_sys_config;--系统配置表
select * from hs_its.its_comb_benchmark t where t.combine_code = 'RRE9VVG';--组合业绩基准表
select * from hs_its.its_comb_request t where t.combine_code = 'RRE9VVG';--组合交易申请表
select * from hs_its.its_his_comb_request t where t.combine_code = 'RRE9VVG' AND T.CLIENT_ID = '10070000000017';--组合交易申请表
select * from hs_its.its_his_comb_sharejour t where t.combine_code = 'THS900001' and t.client_id = '10120000000001';--组合产品份额流水表
select * from hs_its.its_comb_share t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000000017';--组合产品份额表
select * from hs_its.its_his_comb_share t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000000017' and t.end_date= '20990101';--组合产品份额表
select * from hs_its.its_comb_merchant_info t where t.merchant_no in ('1007', '1012', '1011', '1010');--组合商户信息表
select * from hs_its.its_comb_info t where t.combine_code = 'RRE9VVG';--组合基本信息表
select * from hs_its.its_comb_spare_pool t where t.combine_code = 'RRE9VVG';--组合备选库信息
select * from hs_its.its_comb_detail_jour  t where t.combine_code = 'RRE9VVG';--组合成份信息流水表
select * from hs_its.its_comb_detail  t where t.combine_code = 'RRE9VVG';--组合成份信息表
select * from hs_its.its_comb_discount t where t.combine_code = 'RRE9VVG';--组合服务费折扣表
select * from hs_its.its_his_comb_price t where t.combine_code = 'RRE9VVG' and t.comb_scale > 0;--组合行情表
select * from hs_its.its_comb_adjust t where t.combine_code = 'RRE9VVG';--组合调仓指令表
select * from hs_its.its_his_comb_fare_jour t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000001293';--组合费用流水表
select * from hs_its.its_comb_fare t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000000017';--组合费用表
select * from hs_its.its_comb_asset t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000000278';--组合资产信息.
select * from hs_its.its_his_comb_asset t where t.combine_code = 'THS000002' and t.client_id = '10120000000048';--组合历史资产信息.
select * from hs_its.its_comb_asset_detail  t where t.combine_code = 'RRE9VVG' and t.client_id in ('10070000000278');--组合资产明细表
select * from hs_its.its_his_comb_asset_detail  t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000001293';--组合资产明细表
select * from hs_its.its_comb_fund t where  t.client_id in ('10070000001293','10070000000017');--组合资金表
select * from hs_its.its_asset_unit_statistic t where t.asset_unit in ('2022041900002264','2022071100011551') ;--资产单元数据统计表
select * from HS_ITS.ITS_HIS_ASSETUNITSTATISTIC t where t.asset_unit in ('2022071100011551') ;--资产单元历史数据统计表
select * from hs_its.its_asset_unit t where  t.client_id in ('10070000001293','10070000000017');--资产单元表
select * from PSWMS.CUST_BASE_INFO;

SELECT T.*,A.NUM_ROWS
  FROM ALL_TAB_COMMENTS T
  LEFT JOIN ALL_TABLES A
  ON A.OWNER = T.OWNER
  AND T.TABLE_NAME = A.TABLE_NAME
 WHERE T.OWNER = 'HS_ITS'
   AND T.COMMENTS IS NOT NULL
   AND T.TABLE_NAME LIKE 'ITS_%'
   AND T.COMMENTS LIKE '%商户%'
 ORDER BY T.TABLE_NAME;
 
select * from ALL_TAB_COLS T WHERE T.COLUMN_NAME LIKE 'COMB_BUSIN_TYPE';
select * from all_col_comments t where t.COMMENTS like '%商户%';
select * from hs_its.ITS_DICTIONARY t where t.sub_entry = '39143';

select * from HS_ITS.ITS_DICT_ENTRY T where t.entry_name like '%组合业务类型%';--39138
select t.*,t.sub_entry||'.'||t.dict_prompt||'；',''''||t.sub_entry||''','''||t.dict_prompt||'''' 
from hs_its.ITS_DICTIONARY t where t.dict_entry = '39014';
