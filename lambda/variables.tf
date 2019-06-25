variable "lambda_file_name" {
  type = "string"
}

variable "lambda_function_name" {
  type = "string"
}

variable "lambda_handler" {
  type = "string"
  default = "exports.test"
}

variable "lambda_runtime" {
  type = "string"
  default = "nodejs8.10"
}

variable "lambda_variables" {
  type = "map"
  default = {
    foo = "bar"
  }
}

variable "tags" {
  type = "map"
  default = {
    Name = "lambda"
    Project = "test"
  }
}
