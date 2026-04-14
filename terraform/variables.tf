variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "app_name" {
  description = "Application name"
  default     = "customer-order-portal"
}

variable "image_tag" {
  description = "Docker image tag (commit SHA)"
  default     = "latest"
}
