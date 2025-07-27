variable "ami" {
  type = string
  default = "ami-021a584b49225376d"
  description = "  ami-021a584b49225376d is default"
}
variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "t2 micro is default to main server"
}
variable "av_zone" {
  type = string
  default = "ap-south-1b"
}
variable "tags" {
  type = map(string)
  default = {
    "Name" = "Jenkins"
    "Environment" = "Developer"
    "Owner" = "Omkar"
    "Project Type" = "Demo"
    "Project" = "Multi node in jenkins"
  }
}
variable "user_data" {
  type = string
  default = ""
  description = "No Default value"
}