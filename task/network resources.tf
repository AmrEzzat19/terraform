resource "oci_core_vcn" "my_vcn" {

  cidr_block  = vars.cidr_block
  compartment_id = vars.compartment_id

}

resource "oci_core_subnet" "my_subnet" {
  vcn_id = oci_core_vcn.my_vcn.id  
  cidr_block = vars.subnet_cidr
  compartment_id =  vars.compartment_id
}
