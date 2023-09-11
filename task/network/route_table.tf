resource "oci_core_route_table" "public_route_table" {
  compartment_id = vars.compartment_id
  vcn_id         = oci_core_virtual_network.my_vcn.id
  display_name  = "PUBLIC_ROUTE_TABLE"

}

resource "oci_core_route_rule" "public_route_rule" {
  route_table_id  = oci_core_route_table.public_route_table.id
  destination     = "0.0.0.0/0"
  network_entity_id = oci_core_internet_gateway.internet_gateway.id
}