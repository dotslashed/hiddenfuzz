#!/bin/bash

cat shoot.txt | while read urls do; do ffuf -w params.txt:PARAM -w values.txt:VALUES -u $urls?PARAM=VALUES -fl 0 -fc 400,401,403,404,500;done
