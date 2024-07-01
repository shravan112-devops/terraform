module "my-dev-module" {
        source = "./my-demo-module"
        env = "dev"
        instance-type = "t2.micro"
        ami = "ami-09040d770ffe2224f"
        instance-name = "dev-module"
}

module "my-prd-module" {
        source = "./my-demo-module"
        env = "prd"
        instance-type = "t2.small"
        ami = "ami-09040d770ffe2224f"
        instance-name = "prd-module"
}