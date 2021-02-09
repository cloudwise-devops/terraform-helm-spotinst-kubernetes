resource "helm_release" "spotinst-controller" {
  name       = "spotinst-kubernetes-cluster-controller"
  repository = "https://spotinst.github.io/spotinst-kubernetes-helm-charts"
  chart      = "spotinst-kubernetes-cluster-controller"
  version    = "1.0.84"
  namespace   = var.namespace

  values = [
      "${file("values.yaml")}"
  ]
  
}