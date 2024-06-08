data "aws_ami" "data-form" {
  most_recent      = true
  owners           = ["381492013956"]


  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
  

}
