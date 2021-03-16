


resource "aws_subnet" "vpc-public-0" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.CIDR_network_DMZ_A}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.network_DMZ_A}"

  tags = {
    Name                                                   = "network_DMZ_A_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}

resource "aws_subnet" "vpc-public-1" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.CIDR_network_DMZ_B}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.network_DMZ_B}"

  tags = {
    Name                                                   = "network_DMZ_B_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}

resource "aws_subnet" "vpc-public-2" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.CIDR_network_DMZ_C}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.network_DMZ_C}"

  tags = {
    Name                                                   = "network_DMZ_C_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}

resource "aws_subnet" "vpc-public-3" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.CIDR_network_DMZ_D}"
  map_public_ip_on_launch = "true"
  availability_zone       = "${var.network_DMZ_D}"

  tags = {
    Name                                                   = "network_DMZ_D_${var.ENV}"
    Terraform                                              = "true"
    Ambiente                                               = "${var.ENV}"
    APP                                                    = "network"
    Projeto                                                = "network"
    Requerente                                             = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
    modalidade                                             = "projeto"

  }
}
