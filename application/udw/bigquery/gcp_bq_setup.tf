##############################################
#             Dataset Creation               #
##############################################

##############################################
#          UDW_BELLA                         #
##############################################
resource "google_bigquery_dataset" "udw_bella" {
  project     = var.project_name
  dataset_id  = "UDW_BELLA"
  location    = var.location
  labels = {
    dataset-name = "udw_bella"
    environment = var.env_label
  }
}