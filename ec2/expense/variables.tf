variable "image_id" {
  type = string
  default = "ami-031d574cddc5bb371"

}


variable "instance_name" {
  type = list(string)
  default = ["backend","frontend","database"]

}


variable "zone_id" {
  type = string
  default = "Z02402351G5IGA1PI9NLI"

}

variable "dns_name" {
  type = string
  default = "ilovedevops.fun"

}


variable "count-no" {
    default = 3

}




