#Resource Block where we are going to create an resource ec2 s3
resource "aws_instance" "ec2_demo"{
    ami = data.aws_ami.amznlinux2.id
    instance_type = var.instance_type
   vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
    tags = {
        Name="Ec2 gopal1"
    }
}