terraform {
  backend "s3" {
    bucket         = ""
    key            = "dev1/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = ""
    encrypt        = true
  }
}

