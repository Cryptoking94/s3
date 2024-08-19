region                   = "us-east-1"
bucket_name              = "my-unique-bucket-name"
acl                      = "private"
force_destroy            = false
versioning_enabled       = true
lifecycle_enabled        = true
lifecycle_id             = "example-lifecycle-rule"
lifecycle_prefix         = "logs/"
transition_days          = 30
transition_storage_class = "STANDARD_IA"
expiration_days          = 365
tags = {
  Environment = "Dev"
  Project     = "Terraform Example"
}
