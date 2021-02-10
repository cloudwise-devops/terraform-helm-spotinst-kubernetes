resource "helm_release" "spotinst-controller" {
  name       = "spotinst-kubernetes-cluster-controller"
  repository = "https://spotinst.github.io/spotinst-kubernetes-helm-charts"
  chart      = "spotinst-kubernetes-cluster-controller"
  version    = "1.0.84"
  namespace  = var.namespace

  values = [
    <<EOT
    spotinst:
      token: ${var.spotinst_token}
      account: ${var.spotinst_account}
      clusterIdentifier: ${var.spotinst_clusterId}
      disableAutoUpdate: false
      enableCsrApproval: true
    image:
      repository: spotinst/kubernetes-cluster-controller
      pullPolicy: Always
      pullSecrets: []
    EOT
  ]

}