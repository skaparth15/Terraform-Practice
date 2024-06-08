resource "aws_security_group" "expense-aws_security_group" {
    name        = "allow_tls"
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

  resource "aws_instance" "test-instance" {
  ami           = "ami-031d574cddc5bb371"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    Name = "test-instance"
  }
}

