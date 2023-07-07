resource "oci_containerengine_cluster" "oke_cluster" {
    #Required
    compartment_id = var.compartment_id
    kubernetes_version = var.cluster_kubernetes_version
    name = var.cluster_name
    vcn_id = var.vcn_id
    cluster_pod_network_options {
      cni_type =  "FLANNEL_OVERLAY"
    }
    endpoint_config {
      is_public_ip_enabled = false
      subnet_id = var.subnet_endpoint_id
    }
   options {
    service_lb_subnet_ids = var.subnet_lb_id
   } 
  type = var.type_oke     
}
