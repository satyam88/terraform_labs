data "aws_ami" "example_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "example_instance" {
  ami           = data.aws_ami.example_ami.id
  instance_type = "t2.micro" 
}