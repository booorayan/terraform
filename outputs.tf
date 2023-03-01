#Display the provisioned server IP address
output "instance_public_ip" {
  value = vultr_instance.test_vm.main_ip
}

#Display default password
#output "instance_default_password" {
#  value = vultr_instance.test_vm.default_password
#  sensitive = true
#}
