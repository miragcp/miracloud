##############################################
#             Dataset Creation               #
##############################################

##############################################
#          UDW_BELLA                         #
##############################################
resource "google_bigquery_dataset" "udw_bella" {
  project     = var.project_name
  dataset_id  = "UDW_BELLA"
  location    = "US"
  labels = {
    dataset-name = "udw_bella"
    environment = var.env_label
  }
}
#Deploy stationary shop dataset
resource "google_bigquery_dataset" "stationary" {
  dataset_id                  = var.stationary
  friendly_name               = "stationary"
  description                 = "Stationary Shop dataset"
  location                    = var.stationary_DS_location #check the location
  #default_table_expiration_ms = 3600000
}

# notebook table
resource "google_bigquery_table" "tbl_notebook" {
  dataset_id = var.stationary
  table_id = var.tbl_notebook

  time_partitioning {
    type = "DAY"
  }
  schema = file()
}

resource "google_bigquery_table" "tbl_pen" {
  dataset_id = var.pen
  table_id = var.tbl_pen

  time_partitioning {
    type = "DAY"
  }
  schema = file()
}