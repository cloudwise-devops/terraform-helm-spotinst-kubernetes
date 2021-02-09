variable "gce-region" {
  default = "insert region"
}

variable "gce-project" {
  default = "insert project"
}


variable "k8s-context" {
}

variable "helm_cluster_admin_tls_client_key" {
}

variable "helm_cluster_admin_tls_client_cert" {
}

variable "helm_cluster_admin_tls_ca_path" {
}

variable "namespace" {
  default = "kube-system"
}

variable "spotinst_account" {
    default = ""
}

variable "spotinst_token" {
    default = ""
}
