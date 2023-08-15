resource "aws_vpc" "myvpc0022" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "myvpc0022"
  }
} 
resource "aws_internet_gateway" "myigw01" {
  vpc_id = "${aws_vpc.myvpc0022.id}"

  tags = {
    Name = "myigw01"
  }
}
resource "aws_subnet" "PublicSubnet" {
  vpc_id     = "${aws_vpc.myvpc0022.id}"
  cidr_block = "10.0.1.0/28"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "PublicSubnet_myvpc0022"
   }
 }
resource "aws_subnet" "PrivateSubnet" {
  vpc_id     = "${aws_vpc.myvpc0022.id}"
  cidr_block = "10.0.2.0/28"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "PrivateSubnet_myvpc0022"
   }
 }



