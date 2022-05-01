variable "aws_path" {
  type        = string
  description = "Mount path for the AWS secret engine"
  default     = "aws"
}

variable "route53_hosted_zone" {
  type = string
}

variable "aws_account_id" {
  type = string
}
