variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"

}

variable "instance_type" {
    default= "t3.micro"
}
variable ec2tags{
    type= map
    default = {
        Name = "terraform-demo1"
        Terraform =true
        project = "joindevops"
    }
}

variable "sg_name" {
    type= string
    default = "allow_all"
    description = "security group name to attach ec2 instance"

  
}

variable "Portno" {
    type = list
    default = ["0.0.0.0/0"]
  
}

variable "ingress_from_port" {
type = number
default = 0  
}

variable "ingress_to_port" {
type = number
default = 0  
}

variable "engress_from_port" {
type = number
default = 0  
}

variable "engress_to_port" {
type = number
default = 0  
}


