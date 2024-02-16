terraform {
  required_version = "1.4.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.57"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

module "module_a" {
  source = "git@github.com:george-richardson/dependabot-tf-source.git//module-a?ref=module_a-v1.0.0"
}

module "module_b" {
  source = "git@github.com:george-richardson/dependabot-tf-source.git//module-b?ref=module_b-v1.0.0"
}
