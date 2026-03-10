resource "aws_instance" "web" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install -y nodejs npm git

              cd /home/ubuntu
              git clone https://github.com/Vedxnt299/lendendevops-assignment.git

              cd lendendevops-assignment
              npm install

              node index.js &
              EOF

  tags = {
    Name = "devops-assignment-instance"
  }
}