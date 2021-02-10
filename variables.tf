variable "gce-region" {
  default     = ""
  description = "gce region for cluster"
  type        = "string"
}

variable "gce-project" {
  default     = ""
  description = "gce project to be used"
  type        = "string"
}


variable "k8s-context" {
  default     = ""
  description = "k8s context to use"
  type        = "string"
}

variable "namespace" {
  default     = "kube-system"
  description = "namespace to use"
  type        = "string"
}

variable "spotinst_account" {
  default     = ""
  description = "spotinst account to use"
  type        = "string"
}

variable "spotinst_token" {
  default     = ""
  description = "spotinst token to use"
  type        = "string"
}

variable "spotinst_clusterId" {
  default     = ""
  description = "spotinst cluster ID to use"
  type        = "string"
}
