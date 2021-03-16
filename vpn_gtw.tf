resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags = {
    Name                             = "vpn_network_${var.ENV}"
    Terraform                        = "true"
    Ambiente                         = "${var.ENV}"
    APP                              = "network"
    Projeto                          = "network"
    Requerente                       = "${var.requerente}"
    "kubernetes.io/cluster/eks-appname" = "shared"
  }
  depends_on = ["aws_vpc.vpc"]
}


#resource "aws_vpn_connection" "main" {
#  vpn_gateway_id      = "${aws_vpn_gateway.vpn_gw.id}"
#  customer_gateway_id = "${var.COSTUMER_GTW_VPN}"
#  type                = "ipsec.1"
#  static_routes_only  = true
#  tags = {
#    Name                             = "appname_vpn_network_${var.ENV}"
#    Terraform                        = "true"
#    Ambiente                         = "${var.ENV}"
#    APP                              = "network"
#    Projeto                          = "network"
#    CentrodeCusto                    = "infra"
#    Service                          = "VPN"
#    Requerente                       = "${var.requerente}"
#    "kubernetes.io/cluster/eks-appname" = "shared"
#  }
#}