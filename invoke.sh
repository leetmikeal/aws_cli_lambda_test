OUTPUT=`aws lambda invoke \
  --invocation-type RequestResponse \
  --function-name helloworld \
  --region us-east-1 \
  --log-type Tail \
  --payload '{"key1":"value1", "key2":"value2", "key3":"value3"}' \
  invoke.log`
echo "$OUTPUT"
LOG=`echo $OUTPUT | jq -r ' .LogResult ' | base64 --decode`
echo "$LOG" | tee invoke_result.log
