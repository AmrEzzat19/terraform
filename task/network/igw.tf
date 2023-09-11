resource "oci_core_internet_gateway" "internet_gateway" {
  compartment_id = vars.compartment_id
  vcn_id         = oci_core_virtual_network.my_vcn.id
  display_name  = "INTERNET_GATEWAY"
}
