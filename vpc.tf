resource "ibm_is_vpc" "ocp4-vpc" {
  name = "ocp4-vpc"
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