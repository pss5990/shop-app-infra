terraform {
  required_version = ">= 0.12"
  required_providers {
    google = {
      version = "3.5.0"
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  credentials = file(var.project_sa_key)
  project     = var.poject_id
  region      = var.project_default_region
  zone        = var.project_default_zone
}
