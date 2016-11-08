provider "scaleway" {
  access_key   = "${var.scaleway_access}"
  organization = "${var.scaleway_org}"
  region       = "${var.scaleway_region}"
}

provider "cloudflare" {
  email = "${var.cloudflare_email}"
  token = "${var.cloudflare_token}"
}
