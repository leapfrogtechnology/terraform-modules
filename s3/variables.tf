variable "bucket_name" {}

variable "tags" {
  type = "map"
  default = {
    Name = "bucket"
    Project = "test"
  }
}
