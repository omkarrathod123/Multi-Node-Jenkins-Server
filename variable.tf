variable "region" {
  type = string
  default = "ap-south-1"
}
variable "user_data_main" {
  type = string
  default = "./ShellScripts/jenkins.sh"
}
variable "user_data_node" {
  type = string
  default = "./ShellScripts/java.sh"
}