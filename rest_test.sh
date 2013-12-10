#!/bin/bash
base_url="http://localhost:8080"
echo "does it work?"
echo "raw:"
curl --silent "$base_url/rest/test"
echo
result=`curl --silent "$base_url/rest/test"`

echo "result:"

if [ "$result" == "/rest/test" ]
then
    echo "works!"
    exit 0;
fi

echo "failed :("
exit 1
