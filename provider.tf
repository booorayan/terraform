terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = ">2.10.1"
    }
  }

  #  Configure the s3 backend
  backend "s3" {
    bucket = "tf-bucket"
    key    = "terraform.tfstate"
    endpoint = "ewr1.vultrobjects.com"
    region = "us-east-1"
    skip_credentials_validation = true
  }
}

provider "vultr" {
  api_key = var.vultr_api_key
  rate_limit = 700
  retry_limit = 3
}
