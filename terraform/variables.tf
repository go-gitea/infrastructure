variable "do_token" {
  type = "string"
}

variable "cloudflare_email" {
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
    "0" = "1gb"
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
    "0" = "8gb"
  }
}

variable "ssh_keys" {
  type = "map"

  default = {
    "tboerger1" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCc1nE4kCs9WXEEbotF+0Rivnr/9I0fc56QLZTqIr4Rsl3iZcvVDgYJmh6rPcl9xKBptNo/jK1EJF/bm2APf6wIU5Q7tNjeIw5IMJnBRBfPdQujXumb1LZMGnQvPT/gHdpVZvPkYlKkBocOJGPG99GZL0FlXXpc4eDYrgCMfCzRFG1SbQWcUdipbJJgELmbiOy7c5eHtb9i51x7g99pC91WnpInuN4pa0AFHwDQpBhS8RSLFEAfWNNs4T3SiYiUUq0lIHBoIoTM8fTTzhshXAlGWuwsZ9c9luEAw+n4QL8oD9a2ycWTJ3JCRK3CC/+J2MqCROSL4zpVA7+PFrloScMV tboerger@gitea.io"
    "tboerger2" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1vlBRSgKE2LN6Tbp5pQ4qVVOXlqUnhI4fkEJLCGAGmsQGu5usxNvp9UJq0cGt6Sq1htoDmgIjEZwCE/np8/O7ZQPyHpwOWtUlS4WWiXKW0GYaeoYsuMabMLbuV1CpSZhb93zy7ZLIKUYpP7WHyZmivDaXnYkn2IOu3fvDtTQdXbwlCer96dIQjNE/KEH4/gUXetrLMYYg26gUnSDeHaxGrLQAfA9jNG1EbXiUkx8cFmZLEREHjwkBAHcwZDkqbLvZr+ExAKIVUcSzj1ep5sOrtSpbwxRtmDscviFPruJmsx/Jjl9fMhpZq8lIQb6aQ0qq09KGv1WP4YbLGRItvq9T tboerger@gitea.io"
    "tboerger3" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCjASyOuvhSdzOeJCC/9crxcuztTY/AeFV7v59wQrCwozS2hPBcy5UJ4li80ly79t2D/ppCsiGDQjxCpMUKq++canqCIRZ1d6/6ylQPZIQw0rCGRHXDIKlc99i3Fz94XD85ZtFdGe2TWq1T2EEgmCRM9dGWq+f5iloRxnoSrCTXpy8JshnO5kMyQovChKzLBKdHIxddBDlEHxvWI0UcvWNuA8J2nrrOfMdMVKdPa5xeveX2V5oW3YClku7b/W6jO1rdkZ0tyl1n+wbETGmWQC+V4HE5qxK0u+Zmyz/4J+82sKQC6uEWbC9dFRslq+84rd4LyCD2467ZmzzV6HcyWJhL tboerger@gitea.io"
    "bkc1"      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCianSaWiFmKklsBv1GlN2wLx9MTfVqjUHSKyYz54AbCBBpXzOx6mrc86DiNuYHmCGDJAHywtCEQfZQTC0gqI62bKhjtI7tVo3Pp47cpAYLX8i4DR5YOHDTZTBRrLAsoACu+Cv905LD/R7FAtR5rKDXl8706HS0ftIiB1bsOBaH2UMIKZHfKg2swR4uMRsLec8GC4lZ5G1kVbtuT9jor7lvWPABstdp7eAe7Ty6/K0HvAo9IXdPdIbKUxVAkwpYnCsh+Ri4AFwWSnDTpBp/w2v4MarhMFno3Qm+3Kqusug1V8/XxsxPD1PVPVZnRocbuocTcuB1uhyWMYh29x7hN6bp bkc@gitea.io"
    "bkc2"      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2Sovl8XfHqhiAo1GQpsJ/Z8YMvs+xPt1NMsHa5mqAtaMSGsaxIgfpL80+oSX7/itHZJfi7OcRz7R8LzJfy6WKMZUzSkkXXZlxYT328qlMzRPOtkyDWBgIY7ArcDkiyY2MFnbv5uIgilpRKFxFNxx7TuUucOmrB9SHTINy1rDiLHbvZTyJH83WVRo8V6+2JB1N1hyBWbsLNRL9VTAb3v1RvRaDUq92HJqLN77SrxHitst/7PnSimIdnPN04pogP8bDqD/XVL08ZAOXgIQvXqHIC6V+UebLSw18tw/Iac7rYNyYo949NnzQCZ0lB3/yi+L/3Hq9rpiDp3GmANQRRcBN bkc@gitea.io"
    "bkc3"      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9WgmBjn7jlFzAz7QPE5p3F+wG2Dbcg616J/vQk1e0Z4hlRSejoFoA9JVV8IuKBdXYDCieqctvbd01S/5dyDOq8rIoyLa1vfYAqkztzShjZ91WAnv8JOU2o5YC1HtiSKP4ygDzTztr97L1Mv29S3RM1ZFjiNo/0gncMK2uI7z9BgzTXkHEvWPqOy+ca8f6HFVDTL5wfer1oY0gkj4fbYdHclpFrMQh0WBI/Z4YvZz7oRmJHajyRfmTu5X/iLsFk8daP+O7wJpQPwKsefczZmrHyKLC4DgrcHEBzvfyfRa/MQNdJZ+ohayomX51xpsAfBOb4AlJbM7o2SgyJcnfolK7 bkc@gitea.io"
    "lunny1"    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDNxqUBNvl59j7Xkw3I1rXkiz0LWNvOK2KFFgLB4C101xv6C/UGjCJPlAWYl5lrTokICqi8fmLkVzAuhhGaPs28Eo55lARl1uZoTSuuobKaZHc/SZzIqn2NgSYV9WNzskpo8IkN2K5DWCYr73x6tskJ5BT9hcXWaPRb8s7dEPnw7NduhMroqlNBFgCwIgkYrjjNNIEZt5G5q2aYFLmIRRZ1JimuAJBlmQJCw+W049tjjNUKY4f2Fm9zIbktPZvSgT2kRvMWxUc8KR1kyzMVaDgqFJKQFjEoZ3kKTfkf3FV2O6tIZHA9fnRYABQy+7HAjRRFcVEu7usu12BKZ0QHKhWT lunny@gitea.io"
    "appleboy1" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC3uQtMr300gb2icmedgrYgsI/slCgS8mDkPS1G0rlEACyMund4lMo+C8vTnhfoq7CmWGFDuGXXMGcgnnhiN67EXf4xKwCiypmvV4hrisd5FDyluNvUo9wdsqcq3Nv8jNYid27uidgx2v1o4bjidV8F163M5OuQV/Ij1uYsoZ4GiZvLAq5W09twqThEcz9Us9PljQlpqMxoF68hEyL3FM7MioOPshQiENf/3yRohHTzcDYI369hjJu7OpFqp+VORDc/Lma8bOufd/jGZsOBSiV9wjwYLHUHJsSzYv2Cg+jdmUnYjfqUsabwH1bjTVtiRKiXfZMeFF8ju5d9I7ExNp4x appleboy@gitea.io"
  }
}

variable "ssh_port" {
  type    = "string"
  default = "22022"
}
