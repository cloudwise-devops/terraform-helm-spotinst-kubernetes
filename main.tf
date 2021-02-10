provider "google" {
  project = var.gce-project
  region  = var.gce-region
  version = "~> 2.9.1"
}

provider "helm" {
  version = "~> 1.0"
  kubernetes {
    config_context = var.k8s-context
    config_path    = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_context = var.k8s-context
}

