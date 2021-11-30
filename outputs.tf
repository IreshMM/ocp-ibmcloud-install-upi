output "ocp-svc-ip-address" {
  value = ibm_is_floating_ip.ocp-svc-floating-ip.address
}