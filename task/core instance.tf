resource "oci_core_instance" "task_instance" {
  compartment_id = var.compartment_id
  availability_domain = "YOUR_AD"
  shape = "VM.Standard2.1"
  
  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }
    create_vnic_details {
        assign_public_ip = true
        subnet_id = oci_core_subnet.my_subnet.id
    }
  source_details {
    source_type = "image"
    source_id   = "YOUR_IMAGE_OCID"
  }
}
