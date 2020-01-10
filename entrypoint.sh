#!/bin/sh

echo $GOOGLE_APPLICATION_CREDENTIALS
echo $GOOGLE_APPLICATION_CREDENTIALS > creds.json

./cloud_sql_proxy -instances=$CLOUD_SQL_INSTANCE=tcp:0.0.0.0:5432 -credential_file=/creds.json
