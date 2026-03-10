resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t3.micro"

  associate_public_ip_address = true

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y nodejs npm git

              cd /home/ubuntu
              git clone https://github.com/Vedxnt299/lendendevops-assignment.git

              cd lendendevops-assignment/app
              npm install

              node index.js > output.log 2>&1 &
              EOF

  tags = {
    Name = "devops-assignment-instance"
  }
}