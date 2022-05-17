resource "oci_artifacts_container_repository" "docker_repository" {
  compartment_id = var.compartment_id
  display_name   = "k8s-kubernetes-nginx"
  is_immutable = false
  is_public    = false
}

