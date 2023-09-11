#print public ip of instance after applying configration files
output "public-ip-for-compute-instance" {
  value = oci_core_instance.task_instance.public_ip
}
