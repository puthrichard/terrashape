terraform {
# Define as many providers as you need
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.0"
        }
    }
}

provider "aws" {
    region = "us-east-2"
    shared_credentials_file = "~/.aws/credentials"
}

# resource "<provider>_<resource_type>" "name(scoped to terraform)" {
#     config options....
#     key = "value"
# }

resource "aws_instance" "riley" {
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"
}