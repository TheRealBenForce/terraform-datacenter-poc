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
      name = "dns-main"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

data "aws_route53_zone" "selected" {
  name         = "therealbenforce.com."
  private_zone = false
}

resource "aws_route53_zone" "terraform-subzone" {
  name    = "tf.therealbenforce.com"
  comment = "All subdomains created by terraform will be created here"
}

resource "aws_route53_record" "terraform-ns" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "tf.therealbenforce.com"
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.terraform-subzone.name_servers
}

