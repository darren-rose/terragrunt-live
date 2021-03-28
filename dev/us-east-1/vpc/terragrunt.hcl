include {
  path = find_in_parent_folders()
}

terraform {
  source = "git::git@github.com:darren-rose/terraform-modules.git//vpc?ref=v0.0.1"
}

inputs = {
  vpc_id = "vpc-edb20390"
}


