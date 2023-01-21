module "qa" {
  source = "../modules/website"
  environment = {
    name = "qa"
    network_prefix = "10.1"
  }
  asg_min = 1
  asg_max = 1
}