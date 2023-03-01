
resource "vultr_instance" "test_vm" {
  plan   = var.plan
  region = var.region
  os_id  = var.os_id
  enable_ipv6 = var.enable_ipv6
  label = "test_vm"
  firewall_group_id = vultr_firewall_group.test_firewall_group.id
}

resource "vultr_object_storage" "tf_label" {
  cluster_id = 2
  label = "tf_label"

}

resource "vultr_block_storage" "test_blockStorage" {
  region  = var.region
  size_gb = 10
  attached_to_instance = vultr_instance.test_vm.id
}

resource "vultr_firewall_group" "test_firewall_group" {
  description = "Test firewall group"
}

resource "vultr_firewall_rule" "ssh_firewall_rule" {
  firewall_group_id = vultr_firewall_group.test_firewall_group.id
  ip_type           = "v4"
  protocol          = "tcp"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = "22"
}

resource "vultr_firewall_rule" "http_firewall_rule" {
  firewall_group_id = vultr_firewall_group.test_firewall_group.id
  ip_type           = "v4"
  protocol          = "tcp"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = "80"
}

resource "vultr_firewall_rule" "https_firewall_rule" {
  firewall_group_id = vultr_firewall_group.test_firewall_group.id
  ip_type           = "v4"
  protocol          = "tcp"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = "443"
}

resource "vultr_firewall_rule" "icmp_firewall_rule" {
  firewall_group_id = vultr_firewall_group.test_firewall_group.id
  ip_type           = "v4"
  protocol          = "icmp"
  subnet            = "0.0.0.0"
  subnet_size       = 0
#  port              = "443"
}

resource "vultr_firewall_rule" "dns_tcp_firewall_rule" {
  firewall_group_id = vultr_firewall_group.test_firewall_group.id
  ip_type           = "v4"
  protocol          = "tcp"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = "53"
}

resource "vultr_firewall_rule" "dns_udp_firewall_rule" {
  firewall_group_id = vultr_firewall_group.test_firewall_group.id
  ip_type           = "v4"
  protocol          = "udp"
  subnet            = "0.0.0.0"
  subnet_size       = 0
  port              = "53"
}
