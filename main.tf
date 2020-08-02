# Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "testingfrom-jenkins"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# Use AWS Terraform provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "jenkins-terraform-intigration"
  acl    = "private"

  tags = {
    Name        = "jenkins-terraform-intigration"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "news3b" {
  bucket = "jenkins-terraform-news3b"
  acl    = "private"

  tags = {
    Name        = "jenkins-terraform-intigration"
    Environment = "Dev"
  }
}
