variable "aws_region" {
  description = "Region in which aws resource need to be created"
  type = string
  default = "us-east-1"
}
variable "instance_type" {
  description = "aws instance type"
  type = string
  default = "t2.micro"
}