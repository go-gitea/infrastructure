resource "cloudflare_record" "mx" {
  domain   = "${var.cloudflare_domain}"
  name     = "@"
  value    = "${var.mail_domain}"
  type     = "MX"
  priority = 10
  proxied  = false
}

resource "cloudflare_record" "gitea" {
  domain  = "${var.cloudflare_domain}"
  name    = "@"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "blog" {
  domain  = "${var.cloudflare_domain}"
  name    = "blog"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "docs" {
  domain  = "${var.cloudflare_domain}"
  name    = "docs"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "dl" {
  domain  = "${var.cloudflare_domain}"
  name    = "dl"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "code" {
  domain  = "${var.cloudflare_domain}"
  name    = "code"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "storage" {
  domain  = "${var.cloudflare_domain}"
  name    = "storage"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "lgtm" {
  domain  = "${var.cloudflare_domain}"
  name    = "lgtm"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "coverage" {
  domain  = "${var.cloudflare_domain}"
  name    = "coverage"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "drone" {
  domain  = "${var.cloudflare_domain}"
  name    = "drone"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "try" {
  domain     = "${var.cloudflare_domain}"
  name       = "try"
  value      = "${lookup(var.demo_names, 0)}.${var.cloudflare_domain}"
  type       = "CNAME"
  proxied    = false
  depends_on = ["digitalocean_droplet.demo"]
}

