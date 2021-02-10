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