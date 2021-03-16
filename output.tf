output "vpc" {
  value = "${aws_vpc.vpc.id}"
}
output "aws_internet_gateway" {
  value = "${aws_internet_gateway.vpc-gw.id}"
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = "${aws_vpc.vpc.cidr_block}"
}

output "aws_route_table_dmz" {
  value = "${aws_route_table.route-dmz.id}"
}

output "aws_route_table_app" {
  value = "${aws_route_table.route-app.id}"
}

output "aws_eip" {
  value = "${aws_eip.network-nat.id}"
}

output "aws_nat_gateway" {
  value = "${aws_nat_gateway.nat-gw.id}"
}

output "aws_vpn_gateway" {
  value = "${aws_vpn_gateway.vpn_gw.id}"
}

output "aws_vpn_connection" {
  value = "${aws_vpn_connection.main.id}"
}

output "aws_vpn_connection_route" {
  value = "${aws_vpn_connection_route.office-0.id}"
}

output "subnet-dmz-0" {
  value = "${aws_subnet.vpc-public-0.id}"
}

output "subnet-dmz-1" {
  value = "${aws_subnet.vpc-public-1.id}"
}

output "subnet-dmz-2" {
  value = "${aws_subnet.vpc-public-2.id}"
}

output "subnet-dmz-3" {
  value = "${aws_subnet.vpc-public-3.id}"
}

output "subnet-app-0" {
  value = "${aws_subnet.vpc-private-0.id}"
}

output "subnet-app-1" {
  value = "${aws_subnet.vpc-private-1.id}"
}

output "subnet-app-2" {
  value = "${aws_subnet.vpc-private-2.id}"
}

output "subnet-app-3" {
  value = "${aws_subnet.vpc-private-3.id}"
}

