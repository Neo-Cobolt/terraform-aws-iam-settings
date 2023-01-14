output "account_alias" {
  value       = aws_iam_account_alias.alias.account_alias
  description = "The current alias for the AWS Account."
}

