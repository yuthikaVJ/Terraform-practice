variable "instance_type" {
    description = "EC2 instance type"
    type = string
}

variable "ami_id"{
    description = "AMI ID"
    type = string
}

variable "key_name"{
    description = "Key pair name"
    type = string
}
variable "sg"{
    description = "Security group ID"
    type = string
}