# terraform-aws-sqs-module
These variables have default values and don't have to be set to use this module. You may set these variables to override their default values. This module has no required variables.
content_based_deduplication bool
Description: Enables content-based deduplication for FIFO queues.
Default: false

delay_seconds number
Description: The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes).
Default: 0

enabled bool
Description: Whether to create SQS queue.
Default: true

environment string
Description: Environment (e.g. `prod`, `dev`, `staging`).
Default: "Production"

fifo_queue bool
Description: Boolean designating a FIFO queue.
Default: false

managedby string
Description: (no description specified)
Default: "surajwarbhe777@gmail.com"

max_message_size number
Description: The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB).
Default: 262144

message_retention_seconds number
Description: The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days).
Default: 345600

name string
Description: (no description specified)
Default: "SQS-1"

policy string
Description: The JSON policy for the SQS queue.
Default: ""

receive_wait_time_seconds number
Description: The time for which a Receive Message call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds).
Default: 0

redrive_policy string
Description: The JSON policy to set up the Dead Letter Queue, see AWS docs. Note: when specifying maxReceiveCount, you must specify it as an integer (5), and not a string ("5").
Default: ""

repository string
Description: Terraform AWS-SQS Module Repo
Default: "https://github.com/surajwarbhe/terraform-aws-sqs-module"

visibility_timeout_seconds number
Description: The visibility timeout for the queue. An integer from 0 to 43200 (12 hours).
Default: 30

