provider "google" {
  project = "<project_id>"
  region  = "us-central1"
}

resource "google_container_cluster" "primary" {
  name               = "multi-cloud-cluster"
  location           = "us-central1"
  initial_node_count = 2

  node_config {
    machine_type = "e2-medium"
  }
}
