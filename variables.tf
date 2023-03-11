variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "app_ami_filter" {
  description = "the ami filter name and owner vaule"
  type = object({
    name = string
    owners = string
  })
  default = {
    name =   "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owners = "979382823631" 
  }
}


variable "vpc_environment" {
  description = "the vpc environment variables"
   type = object({
    name = string
    cidr_prefix = string
  })
  
  default = {
    name = "dev"
    cidr_prefix = "10.0"
  }
}

variable "min_size"{
  description = "minimum size of the instance in the ASG"
  default = 1
}

variable "max_size"{
  description = "maximum size of the instance in the ASG"
  default = 2
}
