resource "aws_instance" "myinstance_mumbai" {
  ami           = "ami-021f7978361c18b01"
  instance_type = "t2.micro"
  count         = 1
  tags = {
    Name = "myinstance_mumbai"
  }  
}

resource "aws_instance" "myinstance_singapore" {
  ami           = "ami-059b01eb1dee1e15c"
  instance_type = "t2.micro"
  count         = 1
  provider = aws.syg
  tags = {
    Name = "myinstance_singapore"
  }   
}

