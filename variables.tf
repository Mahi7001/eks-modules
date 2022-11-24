variable "cidr_block" {
}


variable "region" {
  type        = string
  description = "aws region"
  default = "ap-south-1"
}
variable "az" {
  type = list(any)
}
variable "public_subnets" {
  type = list(any)

}
variable "private_subnets" {
  type = list(any)
}



 variable "vpc_id" {
  
 }

variable "eks_version" {

}
variable "env" {
  
}
# variable "env-worker-node" {
# default = "non-prod"
# }

# variable "private_1" {
  
# }
# variable "private_2" {
  
# }
