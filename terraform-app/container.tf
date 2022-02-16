resource "docker_container" "wordpress" {
  count = var.n_ins
  name  = "wordpress-${count.index}"
  image = "wordpress:latest"
  restart = "always"

  ports {
    internal = "80"
    external = "9001" + count.index
  }
}