# AWS EC2 Instance Terraform Module

# EC2 Instances that will be created in the Private Subnets of the custom VPC
module "ec2_private" {
  depends_on = [module.vpc]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "3.3.0"
  for_each   = toset(["0", "1"])

  name                   = "${var.environment}-vm-${each.key}"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_sg.this_security_group_id]
  subnet_id              = element(module.vpc.private_subnets, tonumber(each.key))
  user_data              = file("${path.module}/apache-install.sh")
  tags                   = local.common_tags
}
