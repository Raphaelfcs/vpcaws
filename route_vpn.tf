resource "aws_vpn_connection_route" "office-0" {
  destination_cidr_block = "${var.CIDR_VPN_DESTINATION_office_0}"
  vpn_connection_id      = "${aws_vpn_connection.main.id}"
}

resource "aws_vpn_connection_route" "office-1" {
  destination_cidr_block = "${var.CIDR_VPN_DESTINATION_office_1}"
  vpn_connection_id      = "${aws_vpn_connection.main.id}"
}

resource "aws_vpn_connection_route" "office-2" {
  destination_cidr_block = "${var.CIDR_VPN_DESTINATION_office_2}"
  vpn_connection_id      = "${aws_vpn_connection.main.id}"
}

resource "aws_vpn_connection_route" "office-3" {
  destination_cidr_block = "${var.CIDR_VPN_DESTINATION_office_3}"
  vpn_connection_id      = "${aws_vpn_connection.main.id}"
}

