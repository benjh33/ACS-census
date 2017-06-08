'''
Call this file with "spark2-submit" to create spark-env.json and spark-conf.json files
to be used from a jupyter notebook.

'''
import json
import os
import re

from pyspark import SparkConf, SparkContext

def read_conf_json(path='', fname='spark-conf.json'):
    with open(os.path.join(path, fname)) as f:
        spark_obj = json.loads(f.read())
    return spark_obj

def read_spark_conf_json(path='', fname='spark-conf.json'):
    return read_conf_json(path, fname)

def read_spark_env_json(path='', fname='spark-env.json'):
    return read_conf_json(path, fname)

def set_spark_env(env):
    for k, v in env.items():
        os.environ[k] = v
    os.environ.setdefault('PYTHONHASHSEED', "0")
    os.environ.setdefault('SPARK_YARN_USER_ENV', "PYTHONHASHSEED=0")
    try:
        del os.environ['PYSPARK_GATEWAY_PORT']
    except KeyError:
        pass

def create_spark_conf(path='', supplement=False, **kwargs):
    '''
    Some common ones that'll need setting:
       spark.app.name
       spark.app.id
       spark.yarn.executor.memoryOverhead
       spark.executor.memory
    '''
    if not kwargs or supplement:
        new_conf = read_spark_conf_json(path)
        new_conf.update(kwargs)
    else:
        new_conf = kwargs
    conf = SparkConf()
    app_id = list(new_conf.get('spark.app.id', 'spark-app-id-0000'))
    app_id[-4:] = '{:04}'.format(int(re.sub('^0*$', '', ''.join(app_id[-4:]))) + 1)
    new_conf.setdefault('spark.app.id', app_id)
    new_conf.setdefault('spark.app.name', 'jupyter')
    for k, v in new_conf.items():
        conf.set(k, v)
    # rewrite as latest conf file to be read later
    with open('spark-conf.json', 'w') as f:
        f.write(json.dumps(dict(conf.getAll()), indent=4))
    return conf


if __name__ == '__main__':
    sc = SparkContext(conf=SparkConf())
    conf = dict(sc.getConf().getAll())

    with open('spark-conf.json', 'w') as f:
        f.write(json.dumps(conf, indent=4))

    with open('spark-env.json', 'w') as f:
        f.write(json.dumps(dict(os.environ), indent=4))


