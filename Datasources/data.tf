data "aws_ami" "joindevops" {
    owners           = ["973714476881"]
    most_recent      = true
    
    filter {
        name   = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

#     filter {
#         name = "Architecture"
#         values = ["x86_64"]
#     }
# }

output "ami_id" {
    value = data.aws_ami.joindevops.id
}

data "aws_instance" "mongodb"{

    instance_id = "i-0ba05af5d09c2e70d"
}

output "mongob" {
    value= data.aws_instance.mongodb.public_ip
  
}