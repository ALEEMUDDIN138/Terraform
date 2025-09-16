variable "filename" {
  description = "List of file names to create"
  type        = list(string)
  default     = [
    "Apple.txt",
    "Banana.txt",
    "Mango.txt"
  ]
}
