variable "namespace" {
  default     = "kube-system"
  description = "namespace to use"
  type        = "string"
}

variable "spotinst-account" {
  description = "spotinst account to use"
  type        = "string"
}

variable "spotinst-token" {
  description = "spotinst token to use"
  type        = "string"
}

variable "spotinst-clusterId" {
  description = "spotinst cluster ID to use"
  type        = "string"
}


variable "spotist-helm-chart-version" {
  description = "spoinst helm image version"
  type        = string
  default     = "1.0.90"
}


variable "helm_repos" {
  type        = map(string)
  description = "Helm repo"
  default = {
    spotinst-repo = "https://spotinst.github.io/spotinst-kubernetes-helm-charts"
  }
}
