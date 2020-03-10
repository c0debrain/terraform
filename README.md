# UNO Terraform ECS Cluster

This repository contains `Terrorform` configuration files that provide deploying UNO challenge infrastructure and
application. Which consists of AWS Elastic Container Service Cluster, ALB, DynamoDB and pulling docker images
from ECR. 

## Use 

Deploy the whole infrastructure. In the root folder:

```
terraform init
terraform apply -target=module.ecr
terraform apply -target=module.vpc
terraform apply -target=module.iam
terraform apply -target=module.database
terraform apply -target=module.ec2
terraform apply -target=module.ecs
```