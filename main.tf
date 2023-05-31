# Configure AWS provider

provider "aws" {
  region = "ap-south-1"
  profile = "terraform-user"
}

# Stores the terraform state file in S3
terraform {
  backend "s3" {
    bucket = "sud-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "ap-south-1"
    profile = "terraform-user"
  }
}