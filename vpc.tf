resource "ibm_is_vpc" "ocp4-vpc" {
  name = "ocp4-vpc"
  default_security_group_name="ocp4-vpc-security-group"
}

resource "ibm_is_subnet" "ocp4-subnet" {
  name            = "ocp4-subnet"
  vpc             = ibm_is_vpc.ocp4-vpc.id
  zone            = "us-south-1"
  ipv4_cidr_block = "10.240.0.0/24"
}

resource "ibm_is_ssh_key" "iresh-pc-ssh-key" {
  name       = "iresh-pc"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC64dK7V6GBPV77TzGbsMlEKvZh0earMCCYL7lSseqpLECLVHrO7AjdDjM8jMGezPD4sHGAJN105ZZdu887M4+7KufuUF/CooVJ3e7iH/aL98LZBXxgbsebxvPJael2MULXO6koK26QHrY9FwtVjc1BQWG7MbCaCH3CjhNa+nefEaBhGj+0jnd2eDZjUCTMzFt/H50Ref9tRcAiQCwG9KBJVKMrhiSrjiKcfowVFNbvBunlLFb0Gy79UHP4AVHMl3burUS9cZlU092lBvY+oyTZrKucgm8lGB+d8t9uiMfGGv9uYmka20hPd672N+qa/PdwESXFkd9QoOVkVp3FpqA40TNyeW0DKIk4BOnn3xVzgs0SXyXqF7W8a4rltR0GTqvQ93FC6kdTwlQUhXEjXdUMM/zNJRXALV0Dw/av4QgON18a4UoU2Xd8jxBsQDf7ENlWXdfavFn6KhI/iY3IaOyezfnzlj5qbQBLom7nqFJj1YZW1C6rK51oCf9q2bQPrF0= iresh@iresh-pc"
}

resource "ibm_is_ssh_key" "ireshw-pc-ssh-key" {
  name       = "ireshw-pc"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCm8SeAJQIVuJEGTD7ulAEBm+jJFdhTIQKdwil9Edr2bVFKn9vAIF98mbFcL4RpGo6kvz6NhmbTgVn5m/hWSiHsRMaNn8kosXEKP2Ehzc22po3xC3D3FzaCQrJaU38s0Ua5wQ6n7LNc4wCA9wxHbdoXAz2rOWIJIinF6QrC0yS3zfg+w6Dvb9ogXU1UZkyVMm8HQCKhxC85Ts77ZuH5Oj5FiBVPU+eZErNUxK4psuLtQBs+PfTnYqglxB7v0fbna0pQwJwTQHOpkvBZq3d7OXgTZvWRwpTZvWyIjSwE24DUyehwpZIClxwYYn5cGGk3nIz+IdSvOAkBgNLhygwpuVGCjIKcJYnd/8l7hM6ui1OMNK+CC1NLj9uFXQY26Lqh/k48tO6+fCmvNOAlI3YG4h1QxaobqMmGHz6q8UeMhPthd/fRDq5dz0Crlgg3um6UL6Jkam8hoJ40cLF5ynjpJsuphjB3RhtezUDN4BPozzqlaI4CSLFLAdKyUeUFn/COtBc= iresh@ireshw-pc"
}