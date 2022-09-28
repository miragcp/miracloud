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
 udw_bella_gw= var.udw_bella_gw
 udw_bella_gr= var.udw_bella_gr
 udw_bella_uw= var.udw_bella_uw
 udw_bella_ur= var.udw_bella_ur
 udw_bella_sqe= var.udw_bella_sqe
 }

 module "gcp_gcs_module" {
    source = "./google_cloud_storage/"
    project_name= var.project_name
    location= "US"
    storage_class = "MULTI_REGIONAL"
    storage_class_archive = "ARCHIVE"
    env_label = var.env_label
    env=var.env
    miragcp_bucket_name=var.miragcp_bucket_name

}