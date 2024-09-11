# SAMDeploymentUsngAWS
Project to work towards Getting AWS component using AWS SAM module

## Deep Dive Into SAM Deployment
- Create app.py
- Create SAM Template(Yaml file).
- create a Cloud Formation template
- Run and test all the steps using clud formation in AWS

![img.png](img.png)

## Setting up SAM on Windows
-   https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/install-sam-cli.html
- sam --version :- to check the version of te installation.

## install AWS on the windows using 
- https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
- aws --version to check the installation  

## Next is the configure access key and secret key 
- create a new user and a role 
- Provided required access as per the requirement
  - Here i have provided the access for S3 and Lambda function (S3 Full access and Lambda Full access in Policy section)

## Run the cloud formation commnad in the command prompt
    aws cloudformation package --s3-bucket shjena-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
  
  here we will find that  output file have been generated in the **gen** folder and now it is pointing to te actual path in the S3 bucket.
  - CodeUri: s3://shjena-code-sam/055238fd6227551ed72977412a81b3e6

## updated commands
if getting below error the add new type as  "--capabilities CAPABILITY_IAM"

    C:\workspace_sample_project_AWS\SAMDeploymentUsngAWS> aws cloudformation package --s3-bucket shjena-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml
    C:\workspace_sample_project_AWS\SAMDeploymentUsngAWS> aws cloudformation deploy --template-file C:\workspace_sample_project_AWS\SAMDeploymentUsngAWS\gen\template-generated.yaml --stack-name hello-world-sam-v7 --capabilities CAPABILITY_IAM