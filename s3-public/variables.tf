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
variable "bucket_index_document" {
  type = "string"
  default = "index.html"
}
variable "bucket_error_document" {
  type = "string"
  default = "index.html"
}
