terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.52.0"
    }
  }
}

provider "aws" {
 
  region = "us-east-1"


}


terraform {
  backend "s3" {
    bucket = "ilovedevops"
    key    = "datasource-state"
    region = "us-east-1"
  }
}