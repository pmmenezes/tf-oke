#variable "root_compartiment_id" {
#  description = "O valor do OICD docompartimento root"
#  type        = string
#}
variable "cluster_kubernetes_version" {
  description = "Versão do cluster"
  default = "v1.26.2"
  type = string
}
variable "cluster_name" {
  description = "Nome do Cluster"
}
variable "vcn_id" {
   description = "OCID da VCN onde ficará o kuberntes"
}
variable "compartment_id" {
  description = "OCID do compartimento onde ficará o kuberntes"
  
}

variable "subnet_endpoint_id" {
  description = "Subnet do acesso ao endpoint do kuberntes"
  
}
variable "subnet_lb_id" {
  description = "Subnet onde os loadblancers dos services serão provisionados"
  
}

variable "type_oke" {
  description = "Select ENHANCED_CLUSTER or BASIC_CLUSTER"
  default = "BASIC_CLUSTER"
}