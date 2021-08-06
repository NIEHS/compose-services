import os
from dictionaryutils import DataDictionary as GDCDictionary

SCHEMA_DIR = os.path.join('/Users/pateldes/Documents/gitlab/niehs-gen3/data-model-ods/ver-1.1/gdictionary', 'schemas')
gdcdictionary = GDCDictionary(root_dir=SCHEMA_DIR)
