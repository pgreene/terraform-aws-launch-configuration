resource "aws_launch_configuration" "general" {
  name_prefix = var.name
  //image_id = "${data.aws_ami.ubuntu.id}"
  image_id = var.image_id
  instance_type = var.instance_type
  iam_instance_profile = var.iam_instance_profile
  key_name = var.key_name
  security_groups = var.security_groups
  associate_public_ip_address = var.associate_public_ip_address
  user_data = var.user_data
  user_data_base64 = var.user_data_base64
  enable_monitoring = var.enable_monitoring
  ebs_optimized = var.ebs_optimized
  spot_price = var.spot_price
  placement_tenancy = var.placement_tenancy

  root_block_device {
    volume_size = var.root_block_device_volume_size
    volume_type = var.root_block_device_volume_type
    iops = var.root_block_device_iops
    delete_on_termination = var.root_block_device_delete_on_termination
    encrypted = var.root_block_device_encrypted
  }

  dynamic ebs_block_device {
    for_each = var.ebs_block_device == null ? [] : list(var.ebs_block_device)
      content {
      device_name = ebs_block_device.value.ebs_block_device_name
      snapshot_id = ebs_block_device.value.ebs_block_device_snapshot_id
      volume_type = ebs_block_device.value.ebs_block_device_volume_type
      volume_size = ebs_block_device.value.ebs_block_device_volume_size
      iops = ebs_block_device.value.ebs_block_device_iops
      delete_on_termination = ebs_block_device.value.ebs_block_device_delete_on_termination
      encrypted = ebs_block_device.value.ebs_block_device_encrypted
    }
  }

  dynamic ephemeral_block_device {
    for_each = var.ephemeral_block_device == null ? [] : list(var.ephemeral_block_device)
    content {
      device_name = var.ephemeral_block_device_name
      virtual_name = var.ephemeral_block_device_virtual_name
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}