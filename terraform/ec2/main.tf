provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {

  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install docker.io -y
              sudo systemctl start docker
              EOF

  tags = {
    Name = "DevOpsPractice"
  }
}
