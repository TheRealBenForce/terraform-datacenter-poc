terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "example-org-f66d79"

    workspaces {
      name = "dns-consumer"
    }
  }
}


