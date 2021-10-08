output "instance_publicip" {
  description = "Ec2 instance public ip"
  value = toset([for instance in aws_instance.ec2_demo: instance.public_ip])
}

output "instance_publicdns" {
  description = "Ec2 instance public ip"
  value = toset([for instance in aws_instance.ec2_demo: instance.public_dns])
}