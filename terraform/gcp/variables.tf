variable "state_project" {
  default = "edgeware-validators"
}

variable "project_id" {
  default = "edgeware-validators"
}

variable "location" {
  default = "us-east1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "machine_type" {
  default = "n1-standard-2"
}

variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDQtOTnXPOkk5p0xrgo6GXH5mPGZndyrLLYtyc8xY3AO5VGO7noSwf7vnVKcDBcBBoghtDHzeikkUYm4SD6ttDau114AY81NWWQeS05Mx9oJoOM8LkTWGubttt1R0B//0MFn7LqjuyyzhQAR0sbtPgxUj20jLIInfQwg5JoQZk+ywfO7WNvx+gQEmtDLh5r4Zgiq9NupCeEuQJQ0e60mOMnzThJqlZKRmfU16vtFZ8n9/9/5J6lGME09Ic9+AvuDr5P1yvnLmDpynlTwRutkKbGGdiJyJygW210yPQkJELHPNB1/1WihBqH5hIMCoBYyzyhHkemRZtT21BM8hlipioH6lKdaF+3EGJQxHOKFpfkJQE/i5aErighU4yrZ0wb+Tk0cq+FU1Ke38eCi/Ek1bpHX6HQjq9a/AMZQhbrzC4OOWz0gTW/SVVxYhjQWIsqGwqYThGm90LGtZEsfsRXsCUfcGTYp7Obq2XnRwbDWtqN5m2l+NiD2IWi/J3sSNt9aV8mi/enPa2aFV+MFTdQzWVhFZgOSJHAXbBp2TN8lnehdVDYiWSuAmp1y3V+SCzhLWvidOSTzHUn9woy4IM7bpryftZhLyHriFuwnbnWOjoV5i+HUmB0ddUB99yR36SHWI47NfZm1GGdD+uYT4wma45FmrdIbjfzv3rZsbfa9DEwcw== drewstone329@gmail.com"
}

variable "ssh_user" {
  default = "admin"
}

variable "node_count" {
  default = 1
}

variable "name" {
  default = "node"
}
