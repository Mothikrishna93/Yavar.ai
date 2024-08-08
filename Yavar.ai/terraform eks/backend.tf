terraform {
  backend "s3" {
    bucket         = "bucketname"
    dynamodb_table = "*"
    key            = "dev/platform/terraform.tfstate"
    region         = "ap-south-1"
  }
}
