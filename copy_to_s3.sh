#!/bin/bash

hadoop distcp -update \
    -Dfs.s3a.access.key=$ACCESS_KEY_ID \
    -Dfs.s3a.secret.key="$SECRET_ACCESS_KEY" \
    hdfs:///user/hive/warehouse/dataworld \
    s3a://big-data-sets-bjh/dataworld
