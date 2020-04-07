resource "google_dns_managed_zone" "vapras" {
  name     = "vapras"
  dns_name = "vapras.com."
}
