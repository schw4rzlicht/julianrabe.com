terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.63.0"
    }
  }

  required_version = ">= 1.1.5"
}

provider "aws" {
  region = "us-east-1"
}

variable "frontendDomain" {
  type = string
}

variable "zoneId" {
  type = string
}
