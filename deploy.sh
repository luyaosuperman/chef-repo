#!/bin/bash
git add -A ; git commit -m "commit" ; git push;
aws opsworks --region ap-southeast-2 create-deployment --stack-id 796fec58-b4e4-4cb3-8106-7c935361f3d6 --command "{\"Name\":\"update_custom_cookbooks\"}"
#aws opsworks --region ap-southeast-2 wait deployment-successful --stack-id f8346fd0-07ea-47d4-be55-0d3419a20045
