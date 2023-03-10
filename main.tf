# main terraform module file

resource "aws_iam_account_password_policy" "password_policy" {

  allow_users_to_change_password = var.allow_users_to_change_password
  hard_expiry                    = var.hard_expiry
  max_password_age               = var.max_password_age
  minimum_password_length        = var.minimum_password_length
  password_reuse_prevention      = var.password_reuse_prevention
  require_lowercase_characters   = var.require_lowercase_characters
  require_numbers                = var.require_numbers
  require_uppercase_characters   = var.require_uppercase_characters
  require_symbols                = var.require_symbols

}

resource "aws_iam_account_alias" "alias" {

  count         = var.account_alias != "" ? 1 : 0
  account_alias = var.account_alias

}