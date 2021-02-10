# terraform-helm-spotinst-kubernetes
Terraform module to install helm chart wrapped in terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| google | ~> 2.9.1 |
| helm | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| helm | ~> 1.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| gce-project | gce project to be used | `string` | `""` | no |
| gce-region | gce region for cluster | `string` | `""` | no |
| k8s-context | k8s context to use | `string` | `""` | no |
| namespace | namespace to use | `string` | `"kube-system"` | no |
| spotinst-account | spotinst account to use | `string` | `""` | no |
| spotinst-clusterId | spotinst cluster ID to use | `string` | `""` | no |
| spotinst-token | spotinst token to use | `string` | `""` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
