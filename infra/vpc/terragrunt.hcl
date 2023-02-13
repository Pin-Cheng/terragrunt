include "vpc" {
  path = find_in_parent_folders()
}

locals {
  enabled = false
}

inputs = {
  desired_count = 1
}
