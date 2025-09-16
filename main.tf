terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.3.0"
    }
  }
}

variable "filenames" {
  description = "List of files to create"
  type        = set(string)
  default     = ["Apple.txt", "Banana.txt", "Mango.txt"]
}

resource "local_file" "pet" {
  for_each = var.filenames
  filename = "${path.module}/${each.value}"  # creates files in current module directory
  content  = "Hello Terraform"
}
