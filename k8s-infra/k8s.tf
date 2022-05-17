provider "kubernetes" {
  config_path = "/Users/zhoubinghong/.kube/ksa-k8s-config"
}

provider "oci" {
  region = var.region
}

resource "kubernetes_namespace" "free_namespace" {
  metadata {
    name = "free-ns"
  }
}

