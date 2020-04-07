resource "google_dns_record_set" "alpha_vapras_com_A" {
  name         = "alpha.${google_dns_managed_zone.vapras.dns_name}"
  managed_zone = google_dns_managed_zone.vapras.name
  type         = "A"
  ttl          = 300

  rrdatas = ["151.101.1.195", "151.101.65.195"]
}
