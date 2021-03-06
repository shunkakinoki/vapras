resource "google_dns_record_set" "master_vapras_com_A" {
  name         = "master.${google_dns_managed_zone.vapras.dns_name}"
  managed_zone = google_dns_managed_zone.vapras.name
  type         = "A"
  ttl          = 300

  rrdatas = ["151.101.1.195", "151.101.65.195"]
}
