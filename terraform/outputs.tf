output "server_ips" {
  value = "${join(" ", scaleway_ip.server.*.ip)}"
}

output "server_names" {
  value = "${join(" ", cloudflare_record.server.*.hostname)}"
}
