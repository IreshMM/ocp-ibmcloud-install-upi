data "ibm_is_security_group" "ocp4-vpc-security-group" {
    name = "ocp4-vpc-security-group"
    depends_on = [ibm_is_vpc.ocp4-vpc]
}

resource "ibm_is_security_group_rule" "allow-ssh" {
    group = data.ibm_is_security_group.ocp4-vpc-security-group.id
    direction = "inbound"
    remote = "0.0.0.0/0"
    tcp {
        port_min = 22
        port_max = 22
    }
    depends_on = [data.ibm_is_security_group.ocp4-vpc-security-group]
 }