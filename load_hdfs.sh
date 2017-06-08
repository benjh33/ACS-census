#!/usr/bin/bash

# load raw data from s3
hadoop distcp s3a://big-data-sets-bjh/dataworld-linked-acs/EnhancedData /user/hdfs/dataworld-linked-acs/
hadoop distcp s3a://big-data-sets-bjh/dataworld-linked-acs/Ontology /user/hdfs/dataworld-linked-acs/
hdfs dfs -chmod 755 /user/hdfs/
hdfs dfs -mkdir /user/hive/warehouse/dataworld
# load processed parquet tables
hadoop distcp s3a://big-data-sets-bjh/dataworld/* /user/hive/warehouse/dataworld/

# load hive building hql scripts
# hdfs dfs -mkdir /user/admin/scripts
# hdfs dfs -cp file:///$PWD/hive/create_houses_table.hql /user/admin/scripts/

