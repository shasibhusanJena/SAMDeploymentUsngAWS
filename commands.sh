# Create a S3 Bucket
aws s3 mb s3://shjena-code-sam

# package aws cloud formation
aws cloudformation package --s3-bucket shjena-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

# deploy
# Below command will create a change set
aws cloudformation deploy --template-file C:\workspace_sample_project_AWS\SAMDeploymentUsngAWS\gen\template-generated.yaml --stack-name hello-world-sam-v1 --capabilities CAPABILITY_IAM