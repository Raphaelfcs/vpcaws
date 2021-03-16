
resource "aws_subnet" "vpc-private-0" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.CIDR_network_APP_A}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.network_APP_A}"

  tags = {
    Name                                                   = "network_APP_A_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}

resource "aws_subnet" "vpc-private-1" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.CIDR_network_APP_B}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.network_APP_B}"

  tags = {
    Name                                                   = "network_APP_B_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}


resource "aws_subnet" "vpc-private-2" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.CIDR_network_APP_C}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.network_APP_C}"

  tags = {
    Name                                                   = "network_APP_C_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}


resource "aws_subnet" "vpc-private-3" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.CIDR_network_APP_D}"
  map_public_ip_on_launch = "false"
  availability_zone       = "${var.network_APP_D}"

  tags = {
    Name                                                   = "network_APP_D_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}