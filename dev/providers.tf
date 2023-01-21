terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
#   backend "local" {
#     path = "terraform.tfstate"
#   }
}

provider "aws" {
  region = "us-west-2"
}