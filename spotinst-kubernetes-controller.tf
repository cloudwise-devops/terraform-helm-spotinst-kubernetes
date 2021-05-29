resource "helm_release" "spotinst-controller" {
  name       = "spotinst-kubernetes-cluster-controller"
  repository = var.helm_repos.spotinst-repo
  chart      = "spotinst-kubernetes-cluster-controller"
  version    = var.spotist-helm-chart-version
  namespace  = var.namespace
  values = [
    <<EOT
    spotinst:
      token: ${var.spotinst-token}
      account: ${var.spotinst-account}
      clusterIdentifier: ${var.spotinst-clusterId}
      disableAutoUpdate: false
      enableCsrApproval: true
    image:
      repository: spotinst/kubernetes-cluster-controller
      pullPolicy: Always
      pullSecrets: []
    EOT
  ]

}