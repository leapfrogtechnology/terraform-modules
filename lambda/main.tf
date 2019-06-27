resource "aws_lambda_function" "lambda" {
  filename      = var.lambda_file_name
  function_name = var.lambda_function_name
  role          = var.lambda_executation_role_arn
  handler       = var.lambda_handler

  source_code_hash = filebase64sha256(var.lambda_file_name)

  runtime = var.lambda_runtime

  environment {
    variables = var.lambda_variables
  }

  tags = var.tags
}
