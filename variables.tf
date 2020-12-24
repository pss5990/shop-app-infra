variable "project_sa_key"{
	type = string
	default = "../credentials/loans-project-editor-sa.json"
}

variable "poject_id" {
  type    = string
  default = "loans-278211"
}

variable "project_default_region" {
  type    = string
  default = "europe-west2"
}

variable "project_default_zone" {
  type    = string
  default = "europe-west2-a"
}

variable "gke_cluster_name" {
  type    = string
  default = "shop-app"
}

variable "gke_cluster_node_count" {
  type    = number
  default = 1
}

variable "vpc_network_name" {
  type    = string
  default = "shop-app"
}

variable "vpc_subnetwork" {
  type = map
  default = {
    name       = "subnet-eu"
    region     = "europe-west2"
    cidr_range = "10.132.0.0/20"
  }
}
