terraform {
    required_version = "0.11.11"
}

provider "aws" {
    profile = "default"
    region = "us-east-2"
}

module "consul" {
    source      = "hashicorp/consul/aws"
    num_servers = "3"
}