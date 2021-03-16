resource "aws_route_table" "route-dmz" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.vpc-gw.id}"
  }

  tags = {
    Name       = "route_network_DMZ_${var.ENV}"
    Terraform  = "true"
    Ambiente   = "${var.ENV}"
    APP        = "network"
    Projeto    = "network"
    Requerente = "${var.requerente}"
  "kubernetes.io/cluster/${var.cluster-name}-${var.ENV}" = "shared" }
}

resource "aws_route_table_association" "vpc-dmz-2-a" {
  subnet_id      = "${aws_subnet.vpc-public-0.id}"
  route_table_id = "${aws_route_table.route-dmz.id}"
}

resource "aws_route_table_association" "vpc-dmz-2-b" {
  subnet_id      = "${aws_subnet.vpc-public-1.id}"
  route_table_id = "${aws_route_table.route-dmz.id}"
}

resource "aws_route_table_association" "vpc-dmz-2-c" {
  subnet_id      = "${aws_subnet.vpc-public-2.id}"
  route_table_id = "${aws_route_table.route-dmz.id}"
}


resource "aws_route_table_association" "vpc-dmz-2-d" {
  subnet_id      = "${aws_subnet.vpc-public-3.id}"
  route_table_id = "${aws_route_table.route-dmz.id}"
}
