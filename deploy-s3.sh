aws cloudformation deploy --stack-name uda-project-s3 \
    --template-file s3.yml   \
    --capabilities "CAPABILITY_NAMED_IAM"  \
    --region=us-east-1