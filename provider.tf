
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.45.0"
    }
  }
  backend "s3" {
    key    = "terraform/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
  region  = local.region
  profile = local.profile
}

provider "aws" {
  region = "us-east-1"
  alias  = "virginia"
  profile = local.profile
}
