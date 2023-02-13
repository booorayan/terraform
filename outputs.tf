#Display the provisioned server IP address
output "instance_public_ip" {
  value = vultr_instance.test_vm.main_ip
}
