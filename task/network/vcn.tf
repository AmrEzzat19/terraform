#creating virtual cloud network
resource "oci_core_vcn" "my_vcn" {
  cidr_block  = vars.cidr_block
  compartment_id = vars.compartment_id
  display_name = "MY_VCN"
}