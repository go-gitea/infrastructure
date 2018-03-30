resource "digitalocean_droplet" "server" {
  count = "${var.server_count}"
  name  = "${lookup(var.server_names, count.index)}"

  image     = "${lookup(var.server_images, count.index)}"
  region    = "${lookup(var.server_regions, count.index)}"
  size      = "${lookup(var.server_sizes, count.index)}"
  user_data = "${data.template_file.user_data.rendered}"

  ssh_keys = ["${digitalocean_ssh_key.owners.*.id}"]

  ipv6               = true
  backups            = true
  private_networking = false
  resize_disk        = true
}

resource "cloudflare_record" "serverv4" {
  count = "${var.server_count}"
  name  = "${lookup(var.server_names, count.index)}"

  domain = "${var.cloudflare_domain}"
  value  = "${element(digitalocean_droplet.server.*.ipv4_address, count.index)}"
  type   = "A"
}

resource "cloudflare_record" "serverv6" {
  count = "${var.server_count}"
  name  = "${lookup(var.server_names, count.index)}"

  domain = "${var.cloudflare_domain}"
  value  = "${element(digitalocean_droplet.server.*.ipv6_address, count.index)}"
  type   = "AAAA"
}
