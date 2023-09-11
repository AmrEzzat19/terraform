# Gets a list of VNIC attachments on the instance
data "oci_core_vnic_attachments" "instance_vnics" {
  compartment_id      = var.compartment_ocid
  availability_domain = var.availability_domain
  instance_id         = oci_core_instance.task_instance.id
}

# Gets the OCID of the first VNIC
data "oci_core_vnic" "instance_vnic1" {
  vnic_id = data.oci_core_vnic_attachments.instance_vnics.vnic_attachments[0]["vnic_id"]
}

# Gets a list of private IPs on the first VNIC
data "oci_core_private_ips" "private_ips1" {
  vnic_id = data.oci_core_vnic.instance_vnic1.id
}


resource "oci_core_public_ip" "reserved_public_ip_assigned" {
  compartment_id = var.compartment_ocid
  display_name   = "RESERVED_PUBLIC_IP"
  lifetime       = "RESERVED"
  private_ip_id  = data.oci_core_private_ips.private_ips2.private_ips[0]["id"]
}