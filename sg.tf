resource "aws_security_group" "vpc-ssh" {
  name        = "vpc-ssh"
  description = "Allow ssh inbound traffic"
 

  ingress = [
    {
      description      = "allow port 22"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      prefix_list_ids= null
      security_groups= null
      self = null
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  egress = [
    {
      description = "egreess"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      "ipv6_cidr_blocks": null
      prefix_list_ids= null
     security_groups= null
     self = null
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  tags = {
    Name = "vpc-ssh"
  }
}
resource "aws_security_group" "vpc-web" {
  name        = "vpc-web"
  description = "Allow 80 inbound traffic"
 

  ingress = [
    {
      description      = "allow port 80"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      prefix_list_ids= null
      security_groups= null
      self = null
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  egress = [
    {
      description = "egreess"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      "ipv6_cidr_blocks": null
      prefix_list_ids= null
     security_groups= null
     self = null
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  tags = {
    Name = "vpc-ssh"
  }
}
