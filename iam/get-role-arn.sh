ROLE=`aws iam list-roles | jq ' .Roles[] | select( .RoleName == "lambda-custom-app-execution-role")'`
#echo "${ROLE}"
ARN=`echo "${ROLE}" | jq -r '.Arn'`
echo ${ARN}

