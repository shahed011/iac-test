terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }

    backend "s3" {}
}

provider "aws" {
    assume_role {
      role_arn = "arn:aws:iam::385916149497:role/iac-test-spacelift"
      session_name = "terraform"
    }

    region = "eu-west-2"

    default_tags {
        Environment = "Test"
        Owner = "Shahed"
    }
}