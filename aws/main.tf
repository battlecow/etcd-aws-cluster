variable "namespace" {
  default = "default"
}

variable "ssh_key" {
  default = "default_key"
}

variable "min" {
  default = 3
}

variable "max" {
  default = 3
}

variable "desired" {
  default = 3
}

variable "root_volume_size" {
  default = 64
}

variable "instance_type" {
  default = "t2.small"
}

variable "vpc_id" {}

variable "security_groups" {
  default = []
}

variable "subnet_ids" {
  default = []
}

variable "pki_ca_url" {}

variable "pki_etcd_server_key" {}

variable "pki_image" {
  default = "coldog/pki:latest"
}

variable "controller_image" {
  default = "coldog/etcd-aws-cluster:latest"
}
