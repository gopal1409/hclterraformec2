#Resource Block where we are going to create an resource ec2 s3
resource "aws_instance" "ec2_demo"{
    ami = data.aws_ami.amznlinux2.id
    instance_type = var.instance_type
    #instance_type = var.instance_type_list[1] #for list
    #instance_type = var.instance_type_map["prod"] #for map
    user_data = file("${path.module}/app1-install.sh")
  # vpc_security_group_ids = [aws_security_group.vpc-ssh.id,aws_security_group.vpc-web.id]
   count = 2
    tags = {
        "Name"= "count-Demo-${count.index}" 
    }
}