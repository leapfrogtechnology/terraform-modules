variable "api_name" {
  type = "string"
}

variable "api_description" {
  type = "string"
}

variable "api_resource_path" {
  type = "string"
}

variable "api_http_method" {
  type = "string"
  default = "GET"
}

variable "api_authorization" {
  type = "string"
  default = "NONE"
}

variable "lambda_invoke_arn" {
  type = "string"
}

variable "development_stage" {
  type = "string"
}

variable "lambda_arn" {
  type = "string"
}
