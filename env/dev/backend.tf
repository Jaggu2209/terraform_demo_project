terraform {
  backend "s3" {
    bucket = "mynewawss3bucketjp"
    key    = "env/dev/terraform.tfstate"
    region = "ap-south-2"

    encrypt = true
    # Native S3 state locking (Terraform >= 1.10). Replaces the old
    # dynamodb_table locking mechanism -- no DynamoDB table required.
    use_lockfile = true
  }
}
