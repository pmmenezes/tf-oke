#data "oci_identity_compartments" "compartiments" {
#  compartment_id = var.root_compartiment_id
#  compartment_id_in_subtree = true
#  state                     = "Active"
#}

data "oci_core_services" "oci_services" {
}





