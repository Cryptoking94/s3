variable "region" {
  description = "The AWS region to create the S3 bucket in"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "The ACL for the S3 bucket"
  type        = string
  default     = "private"
}

variable "force_destroy" {
  description = "Force destroy the S3 bucket"
  type        = bool
  default     = false
}

variable "versioning_enabled" {
  description = "Enable versioning on the S3 bucket"
  type        = bool
  default     = false
}

variable "lifecycle_enabled" {
  description = "Enable lifecycle rules on the S3 bucket"
  type        = bool
  default     = false
}

variable "lifecycle_id" {
  description = "ID for the lifecycle rule"
  type        = string
  default     = ""
}

variable "lifecycle_prefix" {
  description = "Prefix for the lifecycle rule"
  type        = string
  default     = ""
}

variable "transition_days" {
  description = "Days after which to transition to another storage class"
  type        = number
  default     = 30
}

variable "transition_storage_class" {
  description = "Storage class to transition to"
  type        = string
  default     = "GLACIER"
}

variable "expiration_days" {
  description = "Days after which to expire objects"
  type        = number
  default     = 365
}

variable "tags" {
  description = "Tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}
