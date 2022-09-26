variable "env" {}
variable "ENV" {}
variable "env_label" {}

#vaiable for project name
variable "project_name" {}
variable "zone" {
    default = "us-central1-a"
}

#variable "region" {
 default = "us-central1-a"
}

#variable for network
variable "host_project_name" {}
variable "network_name" {}
variable "subnet" {}


#compute Engine
variable "compute_network_tag" {
    default = [""]
}


##################################
#BigQuery WRITER/READER groups and users per dataset
variable "udw_cloud_build_audit_gw" {default = "" }
variable "udw_cloud_build_audit_uw" {default = "" }
variable "udw_cloud_build_audit_gr" {default = "" }
variable "udw_cloud_build_audit_uw" {default = "" }


variable "udw_bella_gw" {}
variable "udw_bella_uw" {}
variable "udw_bella_gr" {}
variable "udw_bella_uw" {}