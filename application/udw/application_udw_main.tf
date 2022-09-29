provider "google" {
  project = "solar-theory-361919"
}

terraform {
# required version = "=0.12/28"
backend "gcs"{
}
}

module "gcp_bigquery_dataset_module" {
    source = "./bigquery/"
    project_name=var.project_name
    location="US"
    env_label = var.env_label
    env=var.env
 }

