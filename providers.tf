terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.0"
        }
    }
}

provider "aws" {
    region = "eu-west-2"

    # default_tags {
    #     Environment = "Test"
    #     Owner = "Shahed"
    # }
}

resource "aws_cloudwatch_log_group" "test-log-group" {
  name = "test-log-group"

  tags = {
    Resource = "Test-LogGroup"
  }
}