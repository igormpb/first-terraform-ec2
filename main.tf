terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key =  var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web_test" {
  ami           = "ami-093467ec28ae4fe03"
  instance_type = var.instance_aws
  tags = {
    Name = "web test"
  }
}
