variable "scaleway_access" {
  type = "string"
}

variable "scaleway_org" {
  type = "string"
}

variable "scaleway_region" {
  type    = "string"
  default = "ams1"
}

variable "cloudflare_email" {
  type = "string"
}

variable "cloudflare_token" {
  type = "string"
}

variable "cloudflare_domain" {
  type    = "string"
  default = "gitea.io"
}

variable "mail_domain" {
  type    = "string"
  default = "mx.ym.163.com"
}

variable "server_count" {
  type    = "string"
  default = "1"
}

variable "server_image" {
  type    = "string"
  default = "Ubuntu Xenial"
}

variable "server_type" {
  type    = "string"
  default = "VC1L"
}

variable "server_tags" {
  type    = "list"
  default = ["gitea"]
}

variable "server_names" {
  type = "map"

  default = {
    "0" = "laozi"
  }
}

variable "server_volume_count" {
  type    = "string"
  default = "1"
}

variable "server_volume_size" {
  type    = "string"
  default = "150"
}

variable "server_volume_names" {
  type = "map"

  default = {
    "0" = "laozi-01"
  }
}

variable "server_volume_map" {
  type = "map"

  default = {
    "0" = "0"
  }
}
