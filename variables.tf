variable "name" {
  type        = string
  default     = "SQS-1"
}

variable "repository" {
  type        = string
  default     = "https://github.com/surajwarbhe/terraform-aws-sqs-module"
  description = "Terraform AWS-SQS Module Repo"
}

variable "environment" {
  type        = string
  default     = "Production"
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "managedby" {
  type        = string
  default     = "surajwarbhe777@gmail.com"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Whether to create SQS queue."
}

variable "visibility_timeout_seconds" {
  type        = number
  default     = 30
  description = "The visibility timeout for the queue. An integer from 0 to 43200 (12 hours)."
}

variable "message_retention_seconds" {
  type        = number
  default     = 345600
  description = "The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days)."
}

variable "max_message_size" {
  type        = number
  default     = 262144
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB)."
}

variable "delay_seconds" {
  type        = number
  default     = 0
  description = "The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes)."
}

variable "receive_wait_time_seconds" {
  type        = number
  default     = 0
  description = "The time for which a Receive Message call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds)."
}

variable "policy" {
  type        = string
  default     = ""
  sensitive   = true
  description = "The JSON policy for the SQS queue."
}

variable "redrive_policy" {
  type        = string
  default     = ""
  sensitive   = true
  description = "The JSON policy to set up the Dead Letter Queue, see AWS docs. Note: when specifying maxReceiveCount, you must specify it as an integer (5), and not a string (\"5\")."
}

variable "fifo_queue" {
  type        = bool
  default     = false
  description = "Boolean designating a FIFO queue."
}

variable "content_based_deduplication" {
  description = "Enables content-based deduplication for FIFO queues."
  type        = bool
  default     = false
}
