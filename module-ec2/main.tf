module "security_group_module" {
  source = "./security-group"
}

module "ec2_module" {
  source = "./ec2"
  security_group_id = module.security_group_module.security_group_id
}