variable "name" {
  default = ""
}

variable "image_id" {
  description = ""
  default = ""
}

variable "instance_type" {
  description = ""
  default = ""
}

variable "iam_instance_profile" {
  description = "(Optional) The name attribute of the IAM instance profile to associate with launched instances."
  default = null
}

variable "key_name" {
  default = null
}

variable "security_groups" {
  default = null
}

variable "associate_public_ip_address" {
  default = null
}

variable "user_data" {
  default = null
}

variable "user_data_base64" {
  default = null
}

variable "enable_monitoring" {
  description = "(Optional) Enables/disables detailed monitoring. This is enabled by default."
  default = false
}

variable "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized."
  default = false
}

variable "spot_price" {
  description = "(Optional; Default: On-demand price) The maximum price to use for reserving spot instances."
  default = null
}

variable "placement_tenancy" {
  description = "(Optional) The tenancy of the instance. Valid values are default or dedicated, see AWS's Create Launch Configuration for more details"
  default = null
}

variable "root_block_device_volume_size" {
  default = 40
}

variable "root_block_device_volume_type" {
  description = " (Optional) The type of volume. Can be standard, gp2, or io1. (Default: standard)."
  default = "standard"
}

variable "root_block_device_iops" {
  default = null
}

variable "root_block_device_delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed on instance termination"
  default = true
}

variable "root_block_device_encrypted" {
  default = null
}

variable "ebs_block_device" {
  default = null
}

variable "ebs_block_device_name" {
  default = null
}

variable "ebs_block_device_snapshot_id" {
  default = null
}

variable "ebs_block_device_volume_size" {
  default = null
}

variable "ebs_block_device_volume_type" {
  description = " (Optional) The type of volume. Can be standard, gp2, or io1. (Default: standard)."
  default = null
}

variable "ebs_block_device_iops" {
  default = null
}

variable "ebs_block_device_delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed on instance termination"
  default = null
}

variable "ebs_block_device_encrypted" {
  default = null
}

variable "ephemeral_block_device" {
  default = null
}

variable "ephemeral_block_device_name" {
  default = null
}

variable "ephemeral_block_device_virtual_name" {
  default = null
}

