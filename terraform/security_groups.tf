resource "aws_security_group" "packer_build" {
  name        = "packer-build"
  description = "Security Group for Packer Builds"
  vpc_id      = "vpc-090377310c7acf853"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "packer-build"
  }
}
