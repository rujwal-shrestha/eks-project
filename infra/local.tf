locals {

   prefix = "${var.owner}-${var.application}-${var.environment}" 
   
   vpc = {
      private_subnets = [for k, v in local.vpc.azs : cidrsubnet(local.vpc.vpc_cidr, 3, k + 3)]
      public_subnets  = [for k,v in local.vpc.azs : cidrsubnet(local.vpc.vpc_cidr, 3, k)]
      azs = ["us-east-1a", "us-east-1b"]
      vpc_cidr = "10.0.0.0/16"
   }

   tags = {
      owner = "Rujwal"
      project = "eks-project"
   } 
}
