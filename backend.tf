terraform {
   backend "s3" {
    bucket = "iam-test-buckett"
    key    = "dishu/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-lock"
     
   } 
}