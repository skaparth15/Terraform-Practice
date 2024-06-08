resource "aws_instance" "local" {
  ami           = local.image-id
  instance_type = local.instance_type
  //count = var.count-no
  vpc_security_group_ids = [local.sg-id]

  tags = {
    Name = var.instance_name
  }
}
