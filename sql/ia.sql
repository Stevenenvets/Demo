select * from hs_its.its_his_comb_entrust t where  t.client_id in ('10070000001293') and t.init_date = '20220711';--���׶����� 
select * from hs_its.its_prod_code t where t.main_prod_code = '003062';--��Ʒ�����
select * from hs_its.its_his_prod_price  t where t.prod_code = '003834' order by t.update_date asc;--��Ʒ�����
select * from hs_its.its_command_rebalance t where t.combine_code = 'RRE9VVG';--��ƽ��ָ���
select * from hs_its.its_prod_spare_pool;--��ѡ��Ʒ�����
select * from hs_its.its_dict_entry;--�ֵ���Ŀ��
select * from hs_its.its_client_info  t where  t.client_id in ('10070000001293','10070000000017');--�ͻ���Ϣ��
select * from hs_its.its_client  t where  t.client_id in ('10070000001293','10070000000017');--�ͻ�������Ϣ��
select * from hs_its.its_client_riskrecord   t where  t.client_id in ('10070000001293','10070000000017') and t.combine_code = 'RRE9VVG';--�ͻ����ռ�ؼ�¼��
select * from hs_its.its_client_riskwarning t where  t.client_id in ('10070000001293','10070000000017') and t.combine_code = 'RRE9VVG';--�ͻ����ռ��Ԥ����
select * from hs_its.its_acptform t where t.client_id in ('10070000001293','10070000000017');--Ͷ�������
select * from hs_its.its_agreement t where t.client_id in ('10070000001293','10070000000017','10120000000048');--Ͷ��ǩԼ��Ϣ��
select * from hs_its.its_command_plan t where t.client_id in ('10070000001293','10070000000017');--ָ��ƻ���
select * from hs_its.its_dictionary t where t.dict_entry = '39016';--�����ֵ��
select * from hs_its.its_arg;--ϵͳ������
select * from hs_its.its_sys_config;--ϵͳ���ñ�
select * from hs_its.its_comb_benchmark t where t.combine_code = 'RRE9VVG';--���ҵ����׼��
select * from hs_its.its_comb_request t where t.combine_code = 'RRE9VVG';--��Ͻ��������
select * from hs_its.its_his_comb_request t where t.combine_code = 'RRE9VVG' AND T.CLIENT_ID = '10070000000017';--��Ͻ��������
select * from hs_its.its_his_comb_sharejour t where t.combine_code = 'THS900001' and t.client_id = '10120000000001';--��ϲ�Ʒ�ݶ���ˮ��
select * from hs_its.its_comb_share t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000000017';--��ϲ�Ʒ�ݶ��
select * from hs_its.its_his_comb_share t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000000017' and t.end_date= '20990101';--��ϲ�Ʒ�ݶ��
select * from hs_its.its_comb_merchant_info t where t.merchant_no in ('1007', '1012', '1011', '1010');--����̻���Ϣ��
select * from hs_its.its_comb_info t where t.combine_code = 'RRE9VVG';--��ϻ�����Ϣ��
select * from hs_its.its_comb_spare_pool t where t.combine_code = 'RRE9VVG';--��ϱ�ѡ����Ϣ
select * from hs_its.its_comb_detail_jour  t where t.combine_code = 'RRE9VVG';--��ϳɷ���Ϣ��ˮ��
select * from hs_its.its_comb_detail  t where t.combine_code = 'RRE9VVG';--��ϳɷ���Ϣ��
select * from hs_its.its_comb_discount t where t.combine_code = 'RRE9VVG';--��Ϸ�����ۿ۱�
select * from hs_its.its_his_comb_price t where t.combine_code = 'RRE9VVG' and t.comb_scale > 0;--��������
select * from hs_its.its_comb_adjust t where t.combine_code = 'RRE9VVG';--��ϵ���ָ���
select * from hs_its.its_his_comb_fare_jour t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000001293';--��Ϸ�����ˮ��
select * from hs_its.its_comb_fare t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000000017';--��Ϸ��ñ�
select * from hs_its.its_comb_asset t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000000278';--����ʲ���Ϣ.
select * from hs_its.its_his_comb_asset t where t.combine_code = 'THS000002' and t.client_id = '10120000000048';--�����ʷ�ʲ���Ϣ.
select * from hs_its.its_comb_asset_detail  t where t.combine_code = 'RRE9VVG' and t.client_id in ('10070000000278');--����ʲ���ϸ��
select * from hs_its.its_his_comb_asset_detail  t where t.combine_code = 'RRE9VVG' and t.client_id = '10070000001293';--����ʲ���ϸ��
select * from hs_its.its_comb_fund t where  t.client_id in ('10070000001293','10070000000017');--����ʽ��
select * from hs_its.its_asset_unit_statistic t where t.asset_unit in ('2022041900002264','2022071100011551') ;--�ʲ���Ԫ����ͳ�Ʊ�
select * from HS_ITS.ITS_HIS_ASSETUNITSTATISTIC t where t.asset_unit in ('2022071100011551') ;--�ʲ���Ԫ��ʷ����ͳ�Ʊ�
select * from hs_its.its_asset_unit t where  t.client_id in ('10070000001293','10070000000017');--�ʲ���Ԫ��
select * from PSWMS.CUST_BASE_INFO;

SELECT T.*,A.NUM_ROWS
  FROM ALL_TAB_COMMENTS T
  LEFT JOIN ALL_TABLES A
  ON A.OWNER = T.OWNER
  AND T.TABLE_NAME = A.TABLE_NAME
 WHERE T.OWNER = 'HS_ITS'
   AND T.COMMENTS IS NOT NULL
   AND T.TABLE_NAME LIKE 'ITS_%'
   AND T.COMMENTS LIKE '%�̻�%'
 ORDER BY T.TABLE_NAME;
 
select * from ALL_TAB_COLS T WHERE T.COLUMN_NAME LIKE 'COMB_BUSIN_TYPE';
select * from all_col_comments t where t.COMMENTS like '%�̻�%';
select * from hs_its.ITS_DICTIONARY t where t.sub_entry = '39143';

select * from HS_ITS.ITS_DICT_ENTRY T where t.entry_name like '%���ҵ������%';--39138
select t.*,t.sub_entry||'.'||t.dict_prompt||'��',''''||t.sub_entry||''','''||t.dict_prompt||'''' 
from hs_its.ITS_DICTIONARY t where t.dict_entry = '39014';
