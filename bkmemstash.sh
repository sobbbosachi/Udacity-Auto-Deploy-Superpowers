#!/bin/bash
ipaddress=$( tail -n 1 inventory )
echo $ipaddress
curl -H "Content-Type: text/plain" -H "token:100754a2-c8e8-47f6-acc3-471691e1eb0e" --request PUT --data $ipaddress https://api.memstash.io/values/backend

curl -H "Content-Type:text/plain" -H "token:100754a2-c8e8-47f6-acc3-471691e1eb0e" --request PUT --data "arn:aws:s3:::udapeople-${CIRCLE_WORKFLOW_ID:0:7}" https://api.memstash.io/values/frontend
