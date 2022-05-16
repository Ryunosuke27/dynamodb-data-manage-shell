#!/bin/bash

# AWSプロファイル名
PROFILE=profile
# 登録先テーブル名
TABLE_NAME=table
# 設定データファイル
FILE_NAME=data.txt

echo "*************** dynamodb put item start ***************"
while read line
do
    echo aws dynamodb put-item --table-name $TABLE_NAME --item $line --profile $PROFILE
    aws dynamodb put-item --table-name $TABLE_NAME --item $line --profile $PROFILE
done < ./$FILE_NAME
echo "*************** dynamodb put item end ***************"

exit 0