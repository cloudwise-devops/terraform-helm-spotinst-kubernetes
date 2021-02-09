terraform {
  required_version = ">= 0.11.7"
  backend "gcs" {
    bucket  = "insert bucket"
    prefix  = "terraform/spotinst-kubernetes-controller"
  }
}

provider "google" {
  project = var.gce-project
  region  = var.gce-region
  version = "~> 2.9.1"
}

provider "helm" {
  namespace          = "kube-system"
  install_tiller     = true
  service_account    = "tiller-cluster-admin"
  max_history        = 10
  tiller_image       = "gcr.io/kubernetes-helm/tiller:v2.13.1"
  enable_tls         = true
  ca_certificate     = var.helm_cluster_admin_tls_ca_path
  client_certificate = var.helm_cluster_admin_tls_client_cert
  client_key         = var.helm_cluster_admin_tls_client_key
  insecure           = true
  version            = "~> 0.10.4"
  kubernetes {
    config_context = var.k8s-context
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_context = var.k8s-context
}

