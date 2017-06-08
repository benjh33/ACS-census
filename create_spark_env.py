from pyspark import SparkConf, SparkContext
import json
import os

sc = SparkContext(conf=SparkConf())
conf = dict(sc.getConf().getAll())

with open('spark-conf.json', 'w') as f:
    f.write(json.dumps(conf, indent=4))

with open('spark-env.json', 'w') as f:
    f.write(json.dumps(dict(os.environ), indent=4))


