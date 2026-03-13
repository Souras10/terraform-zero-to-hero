provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  instance_type = "t3.micro"
  ami = "ami-0b6c6ebed2801a5cb" # change this
  subnet_id = "subnet-0ff46acb4378a166a" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "iam-test-buckett" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}