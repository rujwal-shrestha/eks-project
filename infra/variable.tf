variable "owner" {
  description = "Owner of the project"
}

variable "application" {
  description = "Name of the Application"
}

variable "environment" {
  description = "Environment"
}

variable "cluster_version" {
  description = "Cluster version to be used"
}

variable "ami_release_version" {
  description = "AMI release version"
}

variable "min_size" {
  description = "Min size of nodes"
}

variable "max_size" {
  description = "Max size of nodes"
}

variable "desired_size" {
  description = "Desired size of nodes"
}