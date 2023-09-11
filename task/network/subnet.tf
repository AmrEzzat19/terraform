#creating subnet in virtual cloud network
resource "oci_core_subnet" "my_public_subnet" {
  
  vcn_id = oci_core_vcn.my_vcn.id
  cidr_block = vars.subnet_cidr
  compartment_id =  vars.compartment_id
  availability_domain = var.availability_domain
  display_name = "MY_SUBNET"
  security_list_ids   = oci_core_vcn.my_vcn.default_security_list_id
  route_table_id      = oci_core_vcn.my_vcn.PUBLIC_ROUTE_TABLE.id
  dhcp_options_id     = oci_core_vcn.my_vcn.default_dhcp_options_id
}