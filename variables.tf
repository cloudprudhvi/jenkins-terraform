variable "vpc_cidr" {
  type        = string
  description = "This is to define the cidr block of VPC"
  default     = "10.1.0.0/16"
}
variable "public_cidr" {
  type        = string
  description = "This is to define the cidr block of VPC"
  default     = "10.2.1.0/24"
}
variable "ec2count" {
  type        = number
  description = "this define sthe number of ec2 instances"
  default     = 2
}
variable "ec2ami" {
  type        = string
  description = "this defines the ami ID"
  default     = "ami-0c2d06d50ce30b442"
  #sensitive   = true
}
variable "ec2type" {
  type        = map(string)
  description = "select the instance type"
  default = {
    "dev"  = "t2.micro"
    "test" = "t2.medium"
    "prod" = "t2.large"
  }

}
