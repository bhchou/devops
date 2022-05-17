output "free_load_balancer_public_ip" {
    value = [for ip in oci_network_load_balancer_network_load_balancer.ksa_nlb.ip_addresses : ip if ip.is_public == true]
}

