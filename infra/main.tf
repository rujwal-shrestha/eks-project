module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.1"

  name = "${local.prefix}-vpc"
  cidr = local.vpc.vpc_cidr

  azs                   = local.vpc.azs
  public_subnets        = local.vpc.ublic_subnets
  private_subnets       = local.vpc.private_subnets

  enable_nat_gateway   = true
  create_igw           = true
  enable_dns_hostnames = true
  single_nat_gateway   = true

  # Manage so we can name
  manage_default_network_acl    = true
  manage_default_route_table    = true
  manage_default_security_group = true
}
