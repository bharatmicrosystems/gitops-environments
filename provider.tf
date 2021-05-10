provider "google" {
  project     = var.project_id
  region      = "us-central1"
  zone        = "us-central1-c"
}

terraform {
  backend "gcs" {
    bucket  = "tf-state-gitops-terraform-${var.project_id}"
    prefix  = "gitops-terraform"
  }
}
