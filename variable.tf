#aws region as string
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
variable "instance_type_list" {
  description = "aws instance type"
  type = string
  default = ["t3.micro","t2.micro","t3.large"]
}
variable "instance_type_map" {
  description = "ec2 instance type"
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "qa" = "t3.small"
    "prod" = "t3.large"
  }
}
