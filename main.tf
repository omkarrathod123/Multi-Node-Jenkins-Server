module "mainJenkinsUbuntu" {
  source = "./EC2"
  user_data = file(var.user_data_main)
  tags = {
    Name = "Jenkins - Main"
  }
}
module "nodeJenkinsUbuntu" {
  source = "./EC2"
  user_data = file(var.user_data_node)
  count = 2
  tags = {
    Name = "Jenkins - Node"
  }
}