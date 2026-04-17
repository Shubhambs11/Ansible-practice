# This is a simple variable of type map

variable "instances" {
    description = "Map of instance name to AMI IDs, SSH users, and OS family"

    type = map(object({
        ami_id   = string
        user = string
        os_family = string
        instance_type = string
    }))

  # by default, value to put in variable

    default = {
        "control-node-ubuntu" = {
            ami_id  = "ami-0c558c1f8d5a5b0a2" #Ubuntu Server 24.04 LTS
            user = "ubuntu"
            os_family = "ubuntu"
            instance_type = "t3.micro"
        }
        "worker-ubuntu" = {
            ami_id   = "ami-0c558c1f8d5a5b0a2" #Ubuntu Server 24.04 LTS
            user = "ubuntu"
            os_family = "ubuntu"
            instance_type = "t3.micro"
        }
        "worker-redhat" = {
            ami_id   = "ami-04c7815cd1d6c8fa4" #RHEL 9
            user = "ec2-user"
            os_family = "redhat"
            instance_type = "t3.micro"
        }
        "worker-amazon-linux" = {
            ami_id   = "ami-0cc96c4cd98401dae" #Amazon linux 2023
            user = "ec2-user"
            os_family = "amazon"  
            instance_type = "t3.micro"
        }
    }
}