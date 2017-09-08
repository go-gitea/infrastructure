resource "cloudflare_record" "mx1" {
  domain   = "${var.cloudflare_domain}"
  name     = "@"
  value    = "mx.zoho.com"
  type     = "MX"
  priority = 10
  proxied  = false
}

resource "cloudflare_record" "mx2" {
  domain   = "${var.cloudflare_domain}"
  name     = "@"
  value    = "mx2.zoho.com"
  type     = "MX"
  priority = 20
  proxied  = false
}

resource "cloudflare_record" "mx3" {
  domain   = "${var.cloudflare_domain}"
  name     = "mailgun"
  value    = "mxa.mailgun.org"
  type     = "MX"
  priority = 10
  proxied  = false
}

resource "cloudflare_record" "mx4" {
  domain   = "${var.cloudflare_domain}"
  name     = "mailgun"
  value    = "mxb.mailgun.org"
  type     = "MX"
  priority = 10
  proxied  = false
}

resource "cloudflare_record" "spf1" {
  domain   = "${var.cloudflare_domain}"
  name     = "zoho"
  value    = "v=spf1 mx include:zoho.com ~all"
  type     = "SPF"
  proxied  = false
}

resource "cloudflare_record" "txt1" {
  domain   = "${var.cloudflare_domain}"
  name     = "_acme-challenge.coverage"
  value    = "OPuLFURRN5kvhFzJBMCY9AMY6DThIi7YonbaheKguGc"
  type     = "TXT"
  proxied  = false
}

resource "cloudflare_record" "txt2" {
  domain   = "${var.cloudflare_domain}"
  name     = "@"
  value    = "v=spf1 include:zoho.com ~all"
  type     = "TXT"
  proxied  = false
}

resource "cloudflare_record" "txt3" {
  domain   = "${var.cloudflare_domain}"
  name     = "k1._domainkey.mailgun"
  value    = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDUz1pPYWPp2BPsov+ds4O1PVe2FaptKqPaxXqwk/BDv8xeWf9FnMmt2+m+cODM8jr+c9pZeSmkhXkX/VVbIaaZE3ilpJymn+cHmHRXhGWhjB9eMw4Md6DswQtzu55U8m6PUaP7q2e2LZaMW6NafXsCsjj2RrGRedgFIOtw02E6RQIDAQAB"
  type     = "TXT"
  proxied  = false
}

resource "cloudflare_record" "txt4" {
  domain   = "${var.cloudflare_domain}"
  name     = "mailgun"
  value    = "v=spf1 include:mailgun.org ~all"
  type     = "TXT"
  proxied  = false
}

resource "cloudflare_record" "txt5" {
  domain   = "${var.cloudflare_domain}"
  name     = "zoho._domainkey"
  value    = "v=DKIM1; k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCdlMfEWjnNTTEnlfrCUmdXDYehLExTJWTJFPv8VileUh9RBCXoHAeUOasCxD4xJq6iEd/mVoaV0ojTppYnf4++G3UJRYUIRrlLDnVD6vQfAQegIT9wVyANj98kFxi5ptJLZNqFSfWz1+/E4M/ekp+A1Rynh9rrW+rvC5yLstudYwIDAQAB"
  type     = "TXT"
  proxied  = false
}

resource "cloudflare_record" "discourse" {
  domain  = "${var.cloudflare_domain}"
  name    = "discourse"
  value   = "gitea.hosted-by-discourse.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "mailgun" {
  domain  = "${var.cloudflare_domain}"
  name    = "email.mailgun"
  value   = "mailgun.org"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "status" {
  domain  = "${var.cloudflare_domain}"
  name    = "status"
  value   = "stats.uptimerobot.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "zoho" {
  domain  = "${var.cloudflare_domain}"
  name    = "zb14818752"
  value   = "zmverify.zoho.com"
  type    = "CNAME"
  proxied = false
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

resource "cloudflare_record" "code" {
  domain  = "${var.cloudflare_domain}"
  name    = "code"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "coverage" {
  domain  = "${var.cloudflare_domain}"
  name    = "coverage"
  value   = "${lookup(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "dl" {
  domain  = "${var.cloudflare_domain}"
  name    = "dl"
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

resource "cloudflare_record" "drone" {
  domain  = "${var.cloudflare_domain}"
  name    = "drone"
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

resource "cloudflare_record" "storage" {
  domain  = "${var.cloudflare_domain}"
  name    = "storage"
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

resource "cloudflare_record" "try-drone" {
  domain     = "${var.cloudflare_domain}"
  name       = "drone.try"
  value      = "${lookup(var.demo_names, 0)}.${var.cloudflare_domain}"
  type       = "CNAME"
  proxied    = false
  depends_on = ["digitalocean_droplet.demo"]
}

