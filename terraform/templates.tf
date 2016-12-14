data "template_file" "user_data" {
  template = "${file("../templates/user_data.yml")}"

  vars {
    ssh_port = "${var.ssh_port}"
  }
}
