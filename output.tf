output "instance_publicip" {
  description = "Ec2 instance public ip"
  value = aws_instance.ec2_demo.public_ip
}

output "instance_publicdns" {
  description = "Ec2 instance public ip"
  value = aws_instance.ec2_demo.public_dns
}