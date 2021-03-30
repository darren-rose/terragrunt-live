include {
  path = find_in_parent_folders()
}

locals {
  env_vars    = read_terragrunt_config(find_in_parent_folders("env.hcl", "env.hcl"))
  region_vars = read_terragrunt_config(find_in_parent_folders("region.hcl", "region.hcl"))
}

terraform {
  source = "git::git@github.com:darren-rose/terraform-modules.git//s3?ref=v0.0.2"
}

inputs = {
  name        = "training-general-${local.env_vars.locals.environment}-${local.region_vars.locals.aws_region}"
  environment = local.env_vars.locals.environment
}


