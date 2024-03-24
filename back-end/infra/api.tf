provider "aws" {
  region = "us-west-1"
}

resource "aws_apigatewayv2_api" "this" {
  name          = "inject-api"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "this" {
  name        = "dev9"
  api_id      = aws_apigatewayv2_api.this.id
  auto_deploy = true
}

output "api_url" {
  value = join("", [
    aws_apigatewayv2_stage.this.invoke_url,
    "/",
    aws_apigatewayv2_api.this.name
  ])
}