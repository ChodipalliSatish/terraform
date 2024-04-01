# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "civil-song-398416"
  region  = "us-central1"
}
# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "gke-cluster-demo"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}