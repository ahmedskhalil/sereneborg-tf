
variable "instance_type" {
  description = "EC2 instance type to provision"
  default = "t3.nano"
}

variable "ami_filter" {
  description = "Name and owner filter for Amazon Machine Image (AMI)"

  type = object ({
    name = string
    owner = string
  })

  default = {
    name = "itnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" #Bitname-ID
  }
}

variable "environment" {
  description = "Deployment environment"

  type = object ({
    name = string
    network_prefix = string
  })

  default = {
    name = "dev"
    network_prefix = "10.0"
  }
}

variable "asg_min" {
  description = "Min # of instances for the Auto Scaling Group (ASG)"
  default = 1
}

variable "asg_max" {
  description = "Max # of instances for the Auto Scaling Group (ASG)"
  default = 2
}