resource "digitalocean_droplet" "demo" {
  count = "${var.demo_count}"
  name  = "${lookup(var.demo_names, count.index)}"

  image     = "${lookup(var.demo_images, count.index)}"
  region    = "${lookup(var.demo_regions, count.index)}"
  size      = "${lookup(var.demo_sizes, count.index)}"
  user_data = "${data.template_file.user_data.rendered}"

  ssh_keys = ["${digitalocean_ssh_key.owners.*.id}"]

  ipv6               = true
  backups            = false
  private_networking = false
  resize_disk        = false
}

resource "cloudflare_record" "demov4" {
  count = "${var.demo_count}"
  name  = "${lookup(var.demo_names, count.index)}"

  domain = "${var.cloudflare_domain}"
  value  = "${element(digitalocean_droplet.demo.*.ipv4_address, count.index)}"
  type   = "A"
}

resource "cloudflare_record" "demov6" {
  count = "${var.demo_count}"
  name  = "${lookup(var.demo_names, count.index)}"

  domain = "${var.cloudflare_domain}"
  value  = "${element(digitalocean_droplet.demo.*.ipv6_address, count.index)}"
  type   = "AAAA"
}
