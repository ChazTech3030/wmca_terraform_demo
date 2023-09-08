terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }
  }
  cloud {
    organization = "wmca2023_demo"

    workspaces {
      name = "terraform_executions"
    }
  }
}
