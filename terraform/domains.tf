resource "cloudflare_record" "servers" {
  count  = "${var.server_count}"
  domain = "${var.cloudflare_domain}"
  name   = "server"
  value  = "${element(scaleway_ip.server.*.ip, count.index)}"
  type   = "A"
}

resource "cloudflare_record" "server" {
  count  = "${var.server_count}"
  domain = "${var.cloudflare_domain}"
  name   = "${lookup(var.server_names, count.index)}"
  value  = "${element(scaleway_ip.server.*.ip, count.index)}"
  type   = "A"
}

resource "cloudflare_record" "blog" {
  domain = "${var.cloudflare_domain}"
  name   = "blog"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "docs" {
  domain = "${var.cloudflare_domain}"
  name   = "docs"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "dl" {
  domain = "${var.cloudflare_domain}"
  name   = "dl"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "storage" {
  domain = "${var.cloudflare_domain}"
  name   = "storage"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "code" {
  domain = "${var.cloudflare_domain}"
  name   = "code"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "lgtm" {
  domain = "${var.cloudflare_domain}"
  name   = "lgtm"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "coverage" {
  domain = "${var.cloudflare_domain}"
  name   = "coverage"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "drone" {
  domain = "${var.cloudflare_domain}"
  name   = "drone"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "gitea" {
  domain = "${var.cloudflare_domain}"
  name   = "@"
  value  = "${cloudflare_record.servers.hostname}"
  type   = "CNAME"
}

resource "cloudflare_record" "mx" {
  domain   = "${var.cloudflare_domain}"
  name     = "@"
  value    = "${var.mail_domain}"
  type     = "MX"
  priority = 10
}
