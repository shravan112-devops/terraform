resource "docker_image" "my-image" {
        name = "shravan112/node-app:latest"
        keep_locally = false
}

resource "docker_container" "my-container" {
        image = docker_image.my-image.name
        name = "node-app-container"
        ports{
                internal = 8000
                external = 8000
}
}