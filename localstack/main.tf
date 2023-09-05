resource "aws_instance" "bichota" {
  ami           = var.ami
  instance_type = "t2.micro"
}
resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t2.micro"
}

variable "ami" {
  type        = string
  description = "api para la instancia ec2"
  default     = "ami-2342342342348"
}
output "output-ami" {
  value = aws_instance.bichota.ami
}