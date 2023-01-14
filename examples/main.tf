#
terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.73"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"

}


module "iam_base_settingss" {
  source = "../."

  allow_users_to_change_password = true
  hard_expiry                    = true
  max_password_age               = 90
  minimum_password_length        = 20
  password_reuse_prevention      = 24
  require_lowercase_characters   = true
  require_numbers                = true
  require_uppercase_characters   = true
  require_symbols                = true

  # Optional account alias
  account_alias = "randomvalue"
}