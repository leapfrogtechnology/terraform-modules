variable "bucket_name" {
  type = "string"
}

variable "tags" {
  type = "map"
  default = {
    Name = "bucket"
    Project = "test"
  }
}
