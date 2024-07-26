resource "google_container_cluster" "k8s_cluster" {
  name     = "k8s-cluster"
  location = "europe-west1"
  network  = google_compute_network.vpc.name
  node_config {
    machine_type = "n1-standard-1"
  }
  initial_node_count = 1
}

