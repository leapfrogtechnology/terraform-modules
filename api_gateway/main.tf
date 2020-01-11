resource "aws_api_gateway_rest_api" "api" {
  name        = var.api_name
  description = var.api_description
}

resource "aws_api_gateway_resource" "api-resource" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  parent_id   = aws_api_gateway_rest_api.api.root_resource_id
  path_part   = var.api_resource_path
}

resource "aws_api_gateway_method" "api-resource" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.api-resource.id

  http_method = var.api_http_method

  authorization = var.api_authorization
}

resource "aws_api_gateway_integration" "lambda" {
  rest_api_id = aws_api_gateway_rest_api.api.id
  resource_id = aws_api_gateway_resource.api-resource.id

  http_method = aws_api_gateway_method.api-resource.http_method

  type = "AWS_PROXY"
  uri = var.lambda_invoke_arn
  integration_http_method = "POST"

}

resource "aws_api_gateway_deployment" "lambda" {
  rest_api_id = aws_api_gateway_rest_api.api.id

  stage_name = var.development_stage

  depends_on = [
    "aws_api_gateway_integration.lambda"
  ]
}

resource "aws_lambda_permission" "apigw" {
  statement_id  = "AllowExecutionFromApiGateway"
  action        = "lambda:InvokeFunction"
  function_name = var.lambda_arn
  principal     = "apigateway.amazonaws.com"

  source_arn = "${replace(aws_api_gateway_deployment.lambda.execution_arn, var.development_stage, "")}*/*"
}


