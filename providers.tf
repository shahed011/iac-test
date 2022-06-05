terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }

    //backend "s3" {}
}

provider "aws" {
    region = "eu-west-2"

    default_tags {
        Environment = "Test"
        Owner = "Shahed"
    }
}