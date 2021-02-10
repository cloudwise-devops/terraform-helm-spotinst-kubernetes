# terraform-helm-spotinst-kubernetes
Terraform module to install helm chart wrapped in terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| helm | ~> 1.0 |

## Providers

| Name | Version |
|------|---------|
| helm | ~> 1.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| k8s-context | k8s context to use | `string` | n/a | yes |
| namespace | namespace to use | `string` | `"kube-system"` | no |
| spotinst-account | spotinst account to use | `string` | n/a | yes |
| spotinst-clusterId | spotinst cluster ID to use | `string` | n/a | yes |
| spotinst-token | spotinst token to use | `string` | n/a | yes |
| spotist-helm-chart-version | spoinst helm image version | `string` | `"1.0.84"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
