terraform {
  backend "s3" {
    bucket         = "s3demowebclass"
    key            = "dev/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "democlass"

  }
}