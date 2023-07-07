# Example 
```yaml

terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "4.117.0"
    }
  }
}

provider "oci" {
#  tenancy_ocid = "ocid1.tenancy.oc1..aaaXXXXXXyeqyq5n47ezu2eikw2omkq" 
#  user_ocid = "ocid1.user.oc1..XXXXXXXi77h237lcmd4vc4bq" 
#  private_key_path = "~/.oci/oci_api_key.pem" 
#  fingerprint = "87:f1:b...7:6d:d2:e9" 
  region = "sa-vinhedo-1"
  config_file_profile = "DEFAULT" 
  }


module "oke" {
  source = "git@XXXX:v3/tf-oke"
  cluster_kubernetes_version = var.k8s_version
  cluster_name = "cluster-oke"
  vcn_id = "VCN_ID"
  compartiment_id = var.compartiment_id
  subnet_endpoint_id = var.subnet_endpoint_id
  subnet_lb_id = [ var.subnet_lb_id ]
}

```