provider "aws" {
  access_key = "AKIAIT3XESS22QXY74GA"
  secret_key = "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"
  region     = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "my-terra-form-my-aws"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
 access_key = "AKIAIT3XESS22QXY74GA"
  secret_key = "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"
  }
}


