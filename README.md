# terraform-helm-spotinst-kubernetes
Terraform module to install helm chart wrapped in terraform

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| helm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| helm\_repos | Helm repo | `map(string)` | <pre>{<br>  "spotinst-repo": "https://spotinst.github.io/spotinst-kubernetes-helm-charts"<br>}</pre> | no |
| namespace | namespace to use | `string` | `"kube-system"` | no |
| spotinst-account | spotinst account to use | `string` | n/a | yes |
| spotinst-clusterId | spotinst cluster ID to use | `string` | n/a | yes |
| spotinst-token | spotinst token to use | `string` | n/a | yes |
| spotist-helm-chart-version | spoinst helm image version | `string` | `"1.0.90"` | no |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
