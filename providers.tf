terraform {
  backend "s3" {
    bucket = "rmslab2-tfstate-bkt" #change this
    key    = "terraform.tfstate"
    region = "us-east-1"
    #dynamodb_table = "rms-lock-table" # optional (Only if you created the DynamoDB table in step 4) 
  }
}

provider "aws" {
  region = "us-east-1"
  # Credentials can be specified here or via environment variables
}