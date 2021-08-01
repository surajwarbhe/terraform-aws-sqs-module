module "aws_sqs_module" {
  source  = "surajwarbhe/aws_sqs_module/aws"
  version = "0.1.0"
}

# Module      : AWS SQS
# Description : Terraform module to create SQS resource on AWS for managing queue.
resource "aws_sqs_queue" "default" {

  visibility_timeout_seconds        = var.visibility_timeout_seconds
  message_retention_seconds         = var.message_retention_seconds
  max_message_size                  = var.max_message_size
  delay_seconds                     = var.delay_seconds
  receive_wait_time_seconds         = var.receive_wait_time_seconds
  policy                            = var.policy
  redrive_policy                    = var.redrive_policy
  fifo_queue                        = var.fifo_queue
  content_based_deduplication       = var.content_based_deduplication
  tags                              = {
            name        = var.name
            repository  = var.repository
            environment = var.environment
            managedby   = var.managedby
            } 
}
