resource "aws_instance" "Demo" {
  ami           = "ami-04823729c75214919"
  instance_type = var.instance_type
  count         = 1
  tags = {
    Name      = "test-dev-server"
    terraform = true
    owner     = "dev"
    env       = "dev"
  }

}