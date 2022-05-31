variable "server_port" {
    description = "The port the server will use for HTTP requests"
    type        = number 
    default     = 8080
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-example"
}

variable "instance_security_group_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "terraform-example-instance"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "terraform-example-alb"
}



variable "number_example" {
    description = "An example of a number variable in Terraform"
    type        = number
    default     = 42
  
}

variable "list_example" {
  description = "An example of a list in Terraform"
  type        = list
  default     = ["a", "b", "c"]
}

variable "list_numeric_example" {
    description = "An example of a numeric list in Terraform"
    type        = list(number)
    default     = [1, 2, 3]

}

variable "map_example" {
    description = "An example of a map in Terraform"
    type        = map(string)

    default     = {
        key1 = "value1"
        key2 = "value2"
        key3 = "value3"
    }
  
}

variable "object_example" {
    description = "An example of a structure type in Terraform"
    type        = object( {
        name    = string
        age     = number
        tags    = list(string)
        enabled = bool
    })
  default = {
    name = "value1"
    age = 1
    tags = ["a", "b", "c"]
    enabled = true
  }
}

