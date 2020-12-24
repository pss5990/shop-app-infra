resource "google_container_cluster" "primary" {
  name     = var.gke_cluster_name
  location = var.project_default_region

  # Removed default node pool for a custom managed one
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = google_compute_network.vpc_network.name
  subnetwork               = google_compute_subnetwork.vpc_subnetwork.name
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  location   = var.project_default_region
  cluster    = google_container_cluster.primary.name
  node_count = var.gke_cluster_node_count
  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
    machine_type = "n1-standard-1"
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}

output "cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE cluster name"
}
