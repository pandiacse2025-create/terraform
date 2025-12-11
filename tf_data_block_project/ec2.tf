data "aws_ami" "instance" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "name"
    values = var.ami
  }
}

data "aws_subnet" "selected" {
  id = "subnet-0613b5494200e5fed"
}

resource "aws_instance" "webserver" {
  ami           = data.aws_ami.instance.id
  instance_type = var.machinetype
  key_name      = "democlass2"
  subnet_id     = data.aws_subnet.selected.id

  tags = {
    Name = "HelloWorld"
  }
}

