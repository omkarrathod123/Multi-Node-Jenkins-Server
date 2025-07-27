variable "region" {
  type = string
  default = "ap-south-1"
}
variable "user_data_main" {
  type = string
  default = "./Shell Script/jenkins.sh"
}
variable "user_data_node" {
  type = string
  default = "./Shell Script/java.sh"
}