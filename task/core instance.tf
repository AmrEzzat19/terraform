
resource "oci_core_instance" "task_instance" {
  compartment_id = var.compartment_id
  availability_domain = "ORCALE_ACCOUNT_AVAILABILTY_DOMAIN"
  
  #instance type
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
    #ID of ubuntu image
    source_id   = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaap7velf36uvsguk7e6eyg5tefp74ymj4gnc7rwka3v7flpq74p7gq"
  }
}
