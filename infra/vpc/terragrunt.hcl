include "vpc" {
  path = find_in_parent_folders()
}

locals {
  enabled = false
}

inputs = {
  desired_count = 1
}

remote_state {
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  backend = devops-workshop-dadd30a3-7b5e-4c7e-baca-9804ce726d09
  key = "default/infra/vpc/terraform.tfstate"
}
