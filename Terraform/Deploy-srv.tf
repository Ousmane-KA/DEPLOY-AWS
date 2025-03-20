provider "aws" {
  region = "eu-west-1" 
}

resource "aws_instance" "srv_web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "key-pair.pem"  
  security_groups = ["default"]

  tags = {
    Name = "SRV-WEB-01"
  }
}

resource "aws_instance" "srv_app" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "key-pair.pem"
  security_groups = ["default"]

  tags = {
    Name = "SRV-APP-01"
  }
}

resource "aws_instance" "srv_db" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  key_name      = "key-pair.pem"
  security_groups = ["default"]

  tags = {
    Name = "SRV-DB-01"
  }
}

output "srv_web_ip" {
  value = aws_instance.srv_web.public_ip
}

output "srv_app_ip" {
  value = aws_instance.srv_app.public_ip
}

output "srv_db_ip" {
  value = aws_instance.srv_db.public_ip
}
