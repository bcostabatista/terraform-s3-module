variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket."
  type        = bool
  default     = false
}

variable "prevent_destroy" {
  description = "Prevents accidental deletion of the bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}