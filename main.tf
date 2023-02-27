terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "example-org-f66d79"

    workspaces {
      name = "dn-main"
    }
  }
}

provider "aws" {
  //region = "us-west-2"
}

resource "aws_route53_zone" "private" {
  name = "tf.therealbenforce.com"
  tags = {
    Environment = "tf subzone"
  }
}


output "hosted_zone_id"  {
  value = "foo"
}
