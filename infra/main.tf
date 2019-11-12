provider "aws" {
  region  = "${var.region}"
  profile = "${var.profile}"
}

# tfstateファイルのbackend指定
terraform {
  required_version = ">= 0.12.0"

  backend "s3" {
    bucket = "tmnkgwa4-cicd-sample"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}

resource "aws_dynamodb_table" "this" {
  name           = "${var.basename}-tfstate-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "this" {
  bucket = "${var.basename}"
  acl    = "private"
}
