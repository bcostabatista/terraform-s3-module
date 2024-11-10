terraform {
  backend "s3" {
    bucket         = "python-flask-api-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}