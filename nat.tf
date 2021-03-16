# nat gw
resource "aws_eip" "network-nat" {
  vpc = true
  tags = {
    Name       = "eip_nat_network_${var.ENV}"
    Terraform  = "true"
    Ambiente   = "${var.ENV}"
    APP        = "network"
    Projeto    = "network"
    Requerente = "${var.requerente}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_nat_gateway" "nat-gw" {
  allocation_id = "${aws_eip.network-nat.id}"
  subnet_id     = "${aws_subnet.vpc-public-0.id}"
  depends_on    = ["aws_internet_gateway.vpc-gw"]
  tags = {
    Name                             = "nat_gtw_network_${var.ENV}"
    Terraform                        = "true"
    Ambiente                         = "${var.ENV}"
    APP                              = "network"
    Projeto                          = "network"
    Requerente                       = "${var.requerente}"
    "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared"
  }

  lifecycle {
    create_before_destroy = true
  }
}
