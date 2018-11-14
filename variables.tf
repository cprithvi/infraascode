variable "image" {
  description = "image for nginx container"
  default = "nginx:1.11-alpine"
}
variable "container_name" {
  description = "Name of container"
  default = "nginx-web-server"
}
variable "int_port" {
  description = "internal port for web server container"
  default = "80"
}
variable "ext_port" {
  description = "external port for web server container"
  default = "80"
}

variable "container_path" {
  description = "container's path where a host path will be mounted"
  default = "/usr/share/nginx/html"
}
variable "host_path" {
  description = "host location which will be mapped to container"
  default = "/home/cprithvi/www"
}

