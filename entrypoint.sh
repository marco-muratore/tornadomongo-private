#!/bin/sh -l

python3 students_tornado.py &
sleep 3
# collection with only 2 healthcheck endpoints - without involving MongoDB
#newman run https://api.postman.com/collections/718114-86993b77-21dd-4210-ae54-2630affd0537?access_key=PMAT-01HW2YHXHNF4XYZ3HZCG7E127Q
newman run https://api.postman.com/collections/718114-8914ed27-a366-4b19-81a3-1a5cf443d5c0?access_key=PMAT-01HWFE7107BW8K0Q817C3CKD9P