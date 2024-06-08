resource "aws_instance" "expense" {
  ami           = var.image_id
  instance_type = "t2.micro"
  count = var.count-no
  vpc_security_group_ids = [aws_security_group.expense-aws_security_group.id]

  tags = {
    Name = var.instance_name[count.index]
  }
}
