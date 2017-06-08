'''
Finds partitions in HDFS and writes hql to add them all to 
the hive metastore
'''
import os
import sys
import re

from argparse import ArgumentParser
from subprocess import check_output

parser = ArgumentParser()
parser.add_argument('parts', nargs='+', type=str)
parser.add_argument('--path', type=str, default=None)
parser.add_argument('--table', type=str, default=None)

HIVE = '''
ALTER TABLE {table} ADD IF NOT EXISTS PARTITION ({});
'''

def get_partitions(path):
    paths = check_output('hdfs dfs -ls {}'.format(path)\
                    .split()).decode().split('\n')
    return [p.split()[-1].strip() for p in paths if p]


if __name__ == '__main__':
    args = parser.parse_args()
    reg = re.compile(''.join(['{}=(?P<{}>[^/]*)/'.format(part, part) for \
            part in args.parts]))
    paths = get_partitions(args.path)
    found = [f.groupdict() for f in [reg.search(p + '/') for p in paths] if f]
    partitions = set([', '.join(["{}='{}'".format(k, d[k]) for k \
            in args.parts]) for d in found])
    hql = '\n'.join(HIVE.format(partition, table=args.table).strip() for \
            partition in partitions)
    # need to execute this here and add this as a regular job.
    with open('new_partitions.hql', 'w') as f:
        f.write(hql)

