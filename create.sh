ROLE_ARN=`sh iam/get-role-arn.sh`
aws lambda create-function \
  --region us-east-1 \
  --function-name helloworld \
  --zip-file fileb://helloworld.zip \
  --role ${ROLE_ARN} \
  --handler helloworld.handler \
  --runtime nodejs6.10
