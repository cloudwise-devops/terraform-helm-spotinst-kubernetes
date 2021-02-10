variable "k8s-context" {
  description = "k8s context to use"
  type        = "string"
}

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
  default     = "1.0.84"
}
