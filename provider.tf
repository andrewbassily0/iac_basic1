provider "aws" {
  region                      = "us-east-1"    # Choose any region
  access_key                  = "test"         # Dummy access key for LocalStack
  secret_key                  = "test"         # Dummy secret key for LocalStack
  skip_credentials_validation = true            # Skips real AWS validation
  skip_metadata_api_check     = true            # Skips AWS metadata API check
  
  # Configure endpoints for LocalStack services
  endpoints {
    ec2            = "http://localhost:4566"
    s3             = "http://localhost:4566"
    iam            = "http://localhost:4566"
    sts            = "http://localhost:4566"
    cloudformation = "http://localhost:4566"
  }
}
