resource "aws_instance" "bastion" {
  ami           = data.aws_ami.amazon-linux-2.id
  instance_type = var.instance_type
  tags = {
    env = "dev"
    author = "mohitdhingra27"
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  tags = {
    env = "dev"
    author = "mohitdhingra27"
  }
}
