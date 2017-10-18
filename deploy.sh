#!/bin/bash
git add -A ; git commit -m "commit" ; git push;
aws opsworks --region ap-southeast-2 create-deployment --stack-id f8346fd0-07ea-47d4-be55-0d3419a20045 --command "{\"Name\":\"update_custom_cookbooks\"}"
#aws opsworks --region ap-southeast-2 wait deployment-successful --stack-id f8346fd0-07ea-47d4-be55-0d3419a20045
