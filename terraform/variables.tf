variable "do_token" {
  type = "string"
}

variable "cloudflare_email" {
  default = "admin@gitea.io"
  type = "string"
}

variable "cloudflare_token" {
  type = "string"
}

variable "cloudflare_domain" {
  type    = "string"
  default = "gitea.io"
}

variable "demo_count" {
  type    = "string"
  default = "1"
}

variable "demo_images" {
  type = "map"

  default = {
    "0" = "ubuntu-16-04-x64"
  }
}

variable "demo_names" {
  type = "map"

  default = {
    "0" = "dchi"
  }
}

variable "demo_regions" {
  type = "map"

  default = {
    "0" = "nyc1"
  }
}

variable "demo_sizes" {
  type = "map"

  default = {
    "0" = "s-1vcpu-2gb"
  }
}

variable "server_count" {
  type    = "string"
  default = "1"
}

variable "server_images" {
  type = "map"

  default = {
    "0" = "ubuntu-16-04-x64"
  }
}

variable "server_names" {
  type = "map"

  default = {
    "0" = "pangu"
  }
}

variable "server_regions" {
  type = "map"

  default = {
    "0" = "nyc1"
  }
}

variable "server_sizes" {
  type = "map"

  default = {
    "0" = "s-4vcpu-8gb"
  }
}

variable "ssh_keys" {
  type = "map"

  default = {
    "lunny1"          = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNxqUBNvl59j7Xkw3I1rXkiz0LWNvOK2KFFgLB4C101xv6C/UGjCJPlAWYl5lrTokICqi8fmLkVzAuhhGaPs28Eo55lARl1uZoTSuuobKaZHc/SZzIqn2NgSYV9WNzskpo8IkN2K5DWCYr73x6tskJ5BT9hcXWaPRb8s7dEPnw7NduhMroqlNBFgCwIgkYrjjNNIEZt5G5q2aYFLmIRRZ1JimuAJBlmQJCw+W049tjjNUKY4f2Fm9zIbktPZvSgT2kRvMWxUc8KR1kyzMVaDgqFJKQFjEoZ3kKTfkf3FV2O6tIZHA9fnRYABQy+7HAjRRFcVEu7usu12BKZ0QHKhWT lunny@gitea.io"
    "lafriks1"        = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAB+wCwJEbmp2zS0aREkMdUGyfinYTCsb56Cprbr+Oe1WMpsuf0efBUy5ZJ0AIfsfT40elnzyxCpw2m5WlzR1TgpEOMcuB21dqhqA5L10eoWjbMXf5N2fyeKMUguBjuIwemzRj2sIQwAoDY3FWfafrUwwswtbIBkZWT4kiwXwOqsXgzkqGf+w37oP0XhxF+HliN9qwx95RVQa9322ErLlRN4tsJs0qv6XyZGmyWO934ksPCsHXuPwz2iONXUWzf9SeTSJEfQyNup++LqMaXVbTggc+fNzJM5tyDAFLxbMSdVmbey7MAeluWLe5MKlBysFnlE68nXh8aoB11gr+w1+o6DTntbjjUlzpw5yTMnRMVHMOEDcBOv5ABaOU8D7jm45GnFtcH/hnPYecOWP639x7M20QGT4Z/9pN7WVlSyxW2lha2t2oi2Gn+5VEcN5YKsHKW7TyH1mg+miumwwR8Nvq93M7dnncA1+T/w1waJUriYGjYszqMMkhx/HVLo5ySdB2nsn0qkCP1/9RMn+3vVbyCiqeZOodo8iNRrdrwKJss9SH9AwHwodFfaoF0wgYbbGtB6frX1mRB1Z6UMlef4NomuPnXfMJxrrdFcbyyOIQQhzZg1EhoHF8BS5/laqw/DFg2xQ41cAVk8VludwBNeICI0ow+tR4wUyWeoA3cPQ== lauris@nix.lv"
    "techknowlogick1" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClV5D6vq8Gouppt0JoQgwgM2z75rvJP0XYN+i9+C50scnrvkcjZnNbreFbNVHuadjk/eTdJq6/Vlpows8S8hzZbN9ltv5PrSUICYbVPDvNjN5P3Q/2uX1SiTMHP8Znf32pYDFfRpJZt5GBG0Sj3RpRudLaOZQ9809b8W/vRDHJlknTvXWz/2wX2HUQjpd48fRl/2MlmX5CxGWt2EGxO92NAVHruNt4vD7AAnT0GOOAk6UPUgsFD3BAQapkAAkaAaeZxK3xYdhOGD4+te7nwq4UNqUkkOLLBaEWEY1ZUXx1gBRx2/3wjqYM+UMhjGaQoXJqYNs6/LSsSinnFlCB0pKp techknowlogick@gitea.io"
  }
}

variable "ssh_port" {
  type    = "string"
  default = "22022"
}
