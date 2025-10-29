variable "instances" {
    # default = ["mongob", "redis", "mysql"]

    # # default = {
    # #     mongodb = "t3.micro"
    # #     redis = "t2.micro"
    # #     mysql = "t3.small"
    # # }

    # default = {
    #     mongodb = {
    #         instance_type = "t3.micro"
            
    #     }

  default = {
    mongodb = {
      instance_type = "t3.micro"
    }
    # redis = {
    #   instance_type = "t2.micro"
    # }
    # mysql = {
    #   instance_type = "t3.small"
    # }
  }
}

variable "zone_id" {
  default = "Z05390352I6EFXPEJQ0I3"
}

variable "domain_name" {
  default = "arjundevops27.fun"
}

  
