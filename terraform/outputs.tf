output "demo_ipv4" {
  value = "${join(" ", digitalocean_droplet.demo.*.ipv4_address)}"
}

output "demo_ipv6" {
  value = "${join(" ", digitalocean_droplet.demo.*.ipv6_address)}"
}

output "demo_names" {
  value = "${join(" ", cloudflare_record.demov4.*.hostname)}"
}

output "server_ipv4" {
  value = "${join(" ", digitalocean_droplet.server.*.ipv4_address)}"
}

output "server_ipv6" {
  value = "${join(" ", digitalocean_droplet.server.*.ipv6_address)}"
}

output "server_names" {
  value = "${join(" ", cloudflare_record.serverv4.*.hostname)}"
}
