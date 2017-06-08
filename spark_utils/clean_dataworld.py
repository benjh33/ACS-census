'''
'''
import gzip
import json
import re

from subprocess import PIPE, Popen

def process_file(fname, kind):
    '''Reads a "dataworld-linked-acs/EnhancedData" file and yields one record
    at a time.

    :param fname: the filename
    :param kind: one of 'house' or 'person'
    '''
    state_reg = re.compile('.*ss(?P<year>[0-9]{2})(h|p)(?P<state>[a-z]{2})(\.[0-9])?\.ttl\.gz$')
    file_name_reg = state_reg.search(fname)
    state_id = file_name_reg['state']
    year = file_name_reg['year']
    entity_id_reg = re.compile('(?P<entity_id>:(Housing|Person)_[0-9]+(\.[0-9]+)?)')
    cat = Popen(['hdfs', 'dfs', '-cat', fname], stdout=PIPE)
    records = []
    gz = gzip.GzipFile(fileobj=cat.stdout)
    current_id = None
    while current_id == None:
        line = gz.readline().decode()
        entity_id = entity_id_reg.search(line)
        if entity_id:
            current_id = entity_id['entity_id']
            record = line 
    for line in gz.readlines():
        line = line.decode()
        entity_id = entity_id_reg.search(line)
        if entity_id:
            yield process_record(current_id, state_id, year, re.sub(current_id, '', record))
            current_id = entity_id['entity_id']
            record = line
            continue
        record += line
    return


def process_record(id_, state_id, year, record):
    '''Processes a single record from "dataworld-linked-acs/EnhancedData"

    :param id_: the id of the record
    :param state_id: the two letter state abbreviation
    :param year: two digit year
    :param record: raw string of record from ACS PUMS data
    '''
    remove = re.compile('\.$|;|"')
    replace_colon = re.compile(':')
    weights = [d.strip() for d in record.strip().split('\n\n')]
    processed = [d.strip().split() for d in weights.pop(0).split(';')]
    weights = [remove.sub('', w).split() for w in weights]
    weights = {w[0]: w[1:] for w in weights}
    processed = {replace_colon.sub('_', r[0]): r[1] for r in processed if not r[0].startswith('acs:hasWeight')}
    processed['weights'] = json.dumps(weights)
    processed['id'] = id_
    processed['state'] = state_id
    processed['year'] = year
    return processed
    
