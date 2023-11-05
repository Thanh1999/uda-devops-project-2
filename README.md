# CD12352 - Infrastructure as Code Project Solution
# [Chanh Thanh Nguyen]

## Spin up instructions
1. To create or update network please run command:
./run.sh deploy <stack-name-your-choice> network.yml network-parameters.json

2. To create or update udagram please run command:
./run.sh deploy <stack-name-your-choice> udagram.yml udagram-parameters.json

## Tear down instructions
To delete a stack you deployed previously please run command:
./run.sh delete <stack-name-you-want-to-deploy>

## Other considerations
I create a script and file to deploy s3 first and add index.html file to that bucket before deploy udagram
Please run this command to deploy s3 bucket:
./deploy-s3.sh