terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "vapras"
    workspaces {
      name = "vapras-master"
    }
  }
}
