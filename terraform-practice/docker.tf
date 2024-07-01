resource "docker_image" "my-nginx-image" {
        name = "nginx:latest"
        keep_locally = false
}

resource "docker_container" "my-nginx-container" {
        image = docker_image.my-nginx-image.name
        name = "nginx-automated"
        ports{
                internal = 80
                external = 80
}
}