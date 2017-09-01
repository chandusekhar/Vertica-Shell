COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_A FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_A_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_B FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_B_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_C FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_C_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_D FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_D_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_E FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_E_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_F FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_F_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_G FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_G_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_H FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_H_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_I FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_I_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_J FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_J_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;
COPY BSSDATA_1.OFR_ASSET_INST_STAT_HIST_K FROM '/data/SOURCE/biz_data2/BSSDATA_OFR_ASSET_INST_STAT_HIST_K_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;


COPY STAGE_2.EVT_ORDER_PROM_ITEM_HIST_Z FROM '/data/SOURCE/biz_data2/STAGE_EVT_ORDER_PROM_ITEM_HIST_Z_*01.dat' ON v_poc_node0002 DELIMITER E'\007' DIRECT RejectMax 10;


select copy_table('STAGE_2.EVT_ORDER_PROM_ITEM_HIST_Z', 'STAGE.EVT_ORDER_PROM_ITEM_HIST_Z');
select copy_table('STAGE_2.EVT_ORDER_PROM_ITEM_HIST_Z', 'STAGE_1.EVT_ORDER_PROM_ITEM_HIST_Z');


select copy_table('BSSDATA_1.OFR_ASSET_INST_STAT_HIST_A', 'BSSDATA_2.OFR_ASSET_INST_STAT_HIST_A');
select copy_table('BSSDATA_1.OFR_ASSET_INST_STAT_HIST_A', 'BSSDATA.OFR_ASSET_INST_STAT_HIST_A');

select copy_table('BSSDATA_1.OFR_ASSET_INST_STAT_HIST_B', 'BSSDATA_2.OFR_ASSET_INST_STAT_HIST_B');
select copy_table('BSSDATA_1.OFR_ASSET_INST_STAT_HIST_B', 'BSSDATA.OFR_ASSET_INST_STAT_HIST_B');

select copy_table('BSSDATA_1.OFR_ASSET_INST_STAT_HIST_C', 'BSSDATA_2.OFR_ASSET_INST_STAT_HIST_C');
select copy_table('BSSDATA_1.OFR_ASSET_INST_STAT_HIST_C', 'BSSDATA.OFR_ASSET_INST_STAT_HIST_C');