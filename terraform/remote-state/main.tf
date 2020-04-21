provider "google" {
  project     = var.state_project
  version     = "~>2.15"
}

resource "google_storage_bucket" "imagestore" {
  name          = "edgeware-validators"
  force_destroy = true
}
