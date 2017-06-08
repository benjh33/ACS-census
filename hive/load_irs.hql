CREATE DATABASE IF NOT EXISTS irs;
set parquet.compression=SNAPPY;
CREATE TABLE `irs`.`non_profit_index`
(
 `RETURN_ID` bigint ,
 `FILING_TYPE` string ,
 `EIN` bigint ,
 `TAX_PERIOD` bigint ,
 `SUB_DATE` string ,
 `TAXPAYER_NAME` string ,
 `RETURN_TYPE` bigint ,
 `DLN` bigint ,
 `OBJECT_ID` bigint )  ROW FORMAT   DELIMITED
FIELDS TERMINATED BY ','
COLLECTION ITEMS TERMINATED BY '\002'
MAP KEYS TERMINATED BY '\003'
STORED AS TextFile TBLPROPERTIES("skip.header.line.count" = "1")
ROW FORMAT SERDE 'parquet.hive.serde.ParquetHiveSerDe' 
STORED AS PARQUET
LOCATION '/user/hive/warehouse/irs/index/'
