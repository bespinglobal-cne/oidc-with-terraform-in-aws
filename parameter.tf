locals {
  my_parameters = {
    environment = "development"
    mykey       = "myvalue"
  }
}

module "ssm_parameters" {
  for_each = local.my_parameters
  source   = "./modules/ssm"
  name     = each.key
  value    = each.value
}

output "all-my-parameters" {
  value = { for k, parameter in module.ssm_parameters : k => parameter.arn }
}