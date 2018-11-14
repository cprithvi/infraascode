resource "docker_image" "image_id" {
  name = "${var.image}"
}


resource "docker_container" "container_id" {
  name = "${var.container_name}"
  image = "${var.image}"
  depends_on = ["docker_image.image_id"]
  ports {
    internal = "${var.int_port}"
    external = "${var.ext_port}"
  }
  volumes {
    container_path  = "${var.container_path}"
    host_path = "${var.host_path}"
  }
}

