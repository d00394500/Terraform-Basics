
terraform {
    required_providers {
        docker = {
        source  = "kreuzwerker/docker"
        version = "~> 3.0.1"
        }
    }
}

provider "docker" {}

resource "docker_image" "nginx" {
    name         = "nginx"
    keep_locally = false
}

resource "docker_container" "classapi" {
    image = "bubbaj/it4200-fall-2026:5.0.0"
    name  = "class"

    ports {
        internal = 8000
        external = 8000
    }
}
