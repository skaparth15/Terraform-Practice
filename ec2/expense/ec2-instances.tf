resource "aws_security_group" "expense-aws_security_group" {
    name        = "expense-aws_security_group"
    description = "Allow TLS inbound traffic and all outbound traffic"

    tags = {
    Name = "expense-aws_security_group"
  }
ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
}
