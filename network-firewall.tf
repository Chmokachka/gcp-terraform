# allow http traffic
resource "google_compute_firewall" "allow-http" {
  name = "${var.app_name}-fw-allow-http"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
  target_tags = ["http"]
  source_ranges = ["0.0.0.0/0"]
}
# allow https traffic
resource "google_compute_firewall" "allow-https" {
  name = "${var.app_name}-fw-allow-https"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
  target_tags = ["https"]
  source_ranges = ["0.0.0.0/0"]
}
# allow ssh traffic
resource "google_compute_firewall" "allow-ssh" {
  name = "${var.app_name}-fw-allow-ssh"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags = ["ssh"]
  source_ranges = ["0.0.0.0/0"]
}
# allow rdp traffic
resource "google_compute_firewall" "allow-rdp" {
  name = "${var.app_name}-fw-allow-rdp"
  network = "${google_compute_network.vpc.name}"
  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }
  target_tags = ["rdp"]
  source_ranges = ["0.0.0.0/0"]
}