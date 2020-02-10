provider "aws" {
    profile = "default"
    region  = var.region
}

resource "aws_instance" "htu-test" {
    ami           = "ami-039a23204cb2a1879"
    instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
    vpc      = true
    instance = aws_instance.htu-test.id
}

output "ip" {
    value = aws_eip.ip.public_ip
}

