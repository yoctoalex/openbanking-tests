#!/bin/bash
while true
do
	openapi2postmanv2 -s ./api/payment-initiation-openapi-basic-auth.yaml -p -o collection.json -O folderStrategy=Tags,requestParametersResolution=Example,optimizeConversion=false,stackLimit=50
    newman run collection.json --env-var "baseUrl=${BASE_URL}/open-banking/v3.1/pisp"
	sleep 1
done