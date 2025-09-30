
provider "aws" {
  region = "us-east-1"
}

terraform {
 backend "s3"{
  region = "us-east-1"
  bucket = "terraform-state-bucket2025"
  key = "terraform.tfstate"
 }
}

resource "aws_instance" "one" {
  ami           = "ami-0886832e6b5c3b9e2"
  instance_type = "t3.micro"
  tags = {
    Name = "dev-server"
  }
}
