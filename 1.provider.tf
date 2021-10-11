#terraform setting block when i do terraform init. this block will download the plugin required to communicate with aws. 
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
          #  version = "~> 2.8" #but in production always providers a version
        }
    }
}




#provider block
#once the plugin has been download in aws they have region specific plugin. 
provider "aws" {
  region = var.aws_region
}



