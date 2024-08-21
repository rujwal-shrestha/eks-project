locals {

   prefix = "${var.owner}-${var.application}-${var.environment}" 

   cluster_version = var.cluster_version
   vpc = {
      azs = ["us-east-1a", "us-east-1b"]
      vpc_cidr = "10.0.0.0/16"
   }

   tags = {
      owner = "Rujwal"
      project = "eks-project"
   } 
}
