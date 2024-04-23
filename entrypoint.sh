#!/bin/sh -l

python3 students_tornado.py &
sleep 3
newman run https://api.postman.com/collections/718114-86993b77-21dd-4210-ae54-2630affd0537?access_key=PMAT-01HW2YHXHNF4XYZ3HZCG7E127Q