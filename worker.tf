# woker nodes
resource "ibm_is_instance" "worker" {
  name    = "worker-${count.index}"
  image   = "r006-988caa8b-7786-49c9-aea6-9553af2b1969"
  profile = "bx2-2x8"

  primary_network_interface {
    name = "eth0"
    subnet = ibm_is_subnet.ocp4-subnet.id
    primary_ipv4_address = "10.240.0.${count.index + 20}"
  }

  vpc  = ibm_is_vpc.ocp4-vpc.id
  zone = "us-south-1"
  keys = [ibm_is_ssh_key.iresh-pc-ssh-key.id]

  count = 1
}