resource "aws_security_group" "web_sg" {
  name        = "devops-assignment-sg"
  description = "Allow HTTP traffic"

  ingress {
    description = "Allow HTTP"
    from_port = 3000
    to_port = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}