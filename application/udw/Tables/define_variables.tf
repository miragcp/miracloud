variable "env" {}
variable "ENV" {}
variable "env_label" {}

#vaiable for project name
variable "project_name" {}
variable "zone" {
    default = "us-central1-a"
}

variable "region" {
 default = "us-central1"
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
