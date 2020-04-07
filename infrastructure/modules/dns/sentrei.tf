resource "google_dns_record_set" "vapras_com_A" {
  name         = google_dns_managed_zone.vapras.dns_name
  managed_zone = google_dns_managed_zone.vapras.name
  type         = "A"
  ttl          = 300

  rrdatas = ["151.101.1.195", "151.101.65.195"]
}

resource "google_dns_record_set" "vapras_com_MX" {
  name         = google_dns_managed_zone.vapras.dns_name
  managed_zone = google_dns_managed_zone.vapras.name
  type         = "MX"
  ttl          = 300

  rrdatas = ["1 aspmx.l.google.com.", "5 alt1.aspmx.l.google.com.", "5 alt2.aspmx.l.google.com.", "10 alt3.aspmx.l.google.com.", "10 alt4.aspmx.l.google.com."]
}

resource "google_dns_record_set" "vapras_com_SPF" {
  name         = google_dns_managed_zone.vapras.dns_name
  managed_zone = google_dns_managed_zone.vapras.name
  type         = "SPF"
  ttl          = 300

  rrdatas = ["\"v=spf1\" \"include:_spf.google.com\" \"~all\""]
}

resource "google_dns_record_set" "vapras_com_TXT" {
  name         = google_dns_managed_zone.vapras.dns_name
  managed_zone = google_dns_managed_zone.vapras.name
  type         = "TXT"
  ttl          = 300

  rrdatas = ["\"v=spf1\" \"include:_spf.google.com\" \"~all\""]
}
