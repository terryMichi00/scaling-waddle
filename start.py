from os import path as ospath, environ
from subprocess import run as srun
ID = environ.get('PAGE_ID')
TOKEN = environ.get('PAGE_TOKEN')
srun([f'echo $TOKEN'], shell=True)
srun([f'python3 framebot.py --page-id {ID} --pdir "/usr/src/app/frames" --token {TOKEN} --start 01 --count 500 --delay 15'], shell=True)
