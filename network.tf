resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_network_name
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "vpc_subnetwork" {
  name          = var.vpc_subnetwork["name"]
  region        = var.vpc_subnetwork["region"]
  ip_cidr_range = var.vpc_subnetwork["cidr_range"]
  network       = google_compute_network.vpc_network.id
}
