#using terraform we need to get the list of az in a specific the region i provide in provider.terraform hi hellow
data "aws_availability_zones" "my_azones" {
  all_availability_zones = true

  filter {
    name   = "opt-in-status"
    values = ["not-opted-in", "opted-in"]
  }
}
#check that the instance is supported in particular az is not
data "aws_ec2_instance_type_offerings" "my_inst_type" {
  filter {
    name   = "instance-type"
    values = ["t3.micro"]
  }

  filter {
    name   = "location"
    values = [each.key]
  }

  location_type = "availability-zone-id"
}

#output all the az mapped to supported instance type
output "output-v3-1" {
  value = {
      for az, details in data.aws_ec2_instance_type_offerings.my_inst_type: az => details.instance_type
     
  }
}

#output all the az that are not supporting instance type
output "output-v3-2" {
  value = {
      for az, details in data.aws_ec2_instance_type_offerings.my_inst_type:
      az => details.instance_type if length(details.instance_type)!=0 }
  }
}
