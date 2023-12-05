from robot.api.deco import keyword
from pymongo import MongoClient
import os

client = MongoClient(os.environ.get('CONNECT_MONGODB_MOBILE'))

db = client['MarkX']

@keyword('Remove tarefa DB')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Removendo a tarefa ' + task_name)