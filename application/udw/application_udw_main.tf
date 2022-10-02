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
  pen = ""
  stationary = ""
  stationary_DS_location = ""
  tbl_notebook = ""
  tbl_pen = ""
}


variable "project_id" {
  default = ""
}


# modules
module "dataset" {
  source = "./bigquery/"
  stationary_DS_location = var.stationary_DS_location
  stationary = var.stationary

  env          = ""
  env_label    = ""
  location     = ""
  pen          = ""
  project_name = ""
  tbl_notebook = ""
  tbl_pen      = ""
}

module "table" {
  source = "./bigquery/"
  ##stationary_id = module.stationary_dataset_id
  tbl_notebook = var.tbl_notebook
  tbl_pen = var.tbl_pen
  env = ""
  env_label = ""
  location = ""
  pen = ""
  project_name = ""
  stationary = ""
  stationary_DS_location = ""
}