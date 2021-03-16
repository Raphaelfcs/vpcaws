# Internet VPC
resource "aws_vpc" "vpc" {
  cidr_block           = "${var.CIDRVPC}"
  instance_tenancy     = "${var.instance_tenancy}"
  enable_dns_support   = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_classiclink   = "${var.enable_classiclink}"
  tags = {
    Name                                                   = "${var.name_vpc}"
    terraform                                              = "true"
    ambiente                                               = "${var.ENV}"
    app                                                    = "network"
    projeto                                                = "network"
    requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"
  }
}

# Internet GW
resource "aws_internet_gateway" "vpc-gw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = {
    Name                                                   = "IE_network_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}

