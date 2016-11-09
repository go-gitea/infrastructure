data "scaleway_image" "server" {
  architecture = "x86_64"
  name         = "${var.server_image}"
}

data "scaleway_bootscript" "server" {
  architecture = "x86_64"
  name_filter  = "docker"
}

resource "scaleway_server" "server" {
  count               = "${var.server_count}"
  name                = "${lookup(var.server_names, count.index)}"
  image               = "${data.scaleway_image.server.id}"
  bootscript          = "${data.scaleway_bootscript.server.id}"
  type                = "${var.server_type}"
  tags                = "${var.server_tags}"
  enable_ipv6         = false
  dynamic_ip_required = false

  volume {
    size_in_gb = 150
    type       = "l_ssd"
  }
}

resource "scaleway_ip" "server" {
  count  = "${var.server_count}"
  server = "${element(scaleway_server.server.*.id, count.index)}"
}
