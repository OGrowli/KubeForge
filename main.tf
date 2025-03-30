terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_eks_cluster" "my_cluster" {
  name     = "my-cluster"
  role_arn = "arn:aws:iam::837107980832:role/admin"
  vpc_config {
    subnet_ids = ["subnet-0d33de764f5ed3c09", "subnet-09aa10425fea545fa"]
  }
}