provider "google" {
  credentials = file("${var.gcp_credentials}")
  project     = var.project_id
  region      = var.region
}

resource "google_container_cluster" "primary" {
  name     = "client-x-cluster"
  location = var.region
  initial_node_count = 3
}
