#data "aws_ami" "amazon_linux" {
# most_recent = true
#owners      = ["amazon"]

#filter {
# name   = "name"
#values = ["al2023-ami-2023.*-x86_64"]
#}
#}

#resource "aws_security_group" "ec2_web_sg" {
# name        = "sg_ec2_web_publica"
# description = "Permite acesso HTTP na porta 80"
# vpc_id      = aws_vpc.clc_vpc.id

#ingress {
# description = "HTTP"
#from_port   = 80
#to_port     = 80
#protocol    = "tcp"
#cidr_blocks = ["0.0.0.0/0"]
#}

#egress {
# from_port   = 0
# to_port     = 0
##cidr_blocks = ["0.0.0.0/0"]
#}

#tags = {
#  Name = "sg_ec2_web_publica"
##}
#}

#resource "aws_instance" "web" {
# ami                         = data.aws_ami.amazon_linux.id
# instance_type               = "t2.micro"
# subnet_id                   = aws_subnet.public_subnet_1c.id
# vpc_security_group_ids      = [aws_security_group.ec2_web_sg.id]
# associate_public_ip_address = true

#user_data = <<-EOF
#           #!/bin/bash
##         dnf install -y httpd
####     EOF

#  tags = {
#   Name = "ec2_apache_1c"
# }
#}