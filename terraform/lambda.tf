resource "aws_lambda_function" "backend" {
  function_name = "${var.project_name}-backend"
  runtime       = "python3.12"
  handler       = "app.handler"
  role          = aws_iam_role.lambda_role.arn
  filename      = "lambda.zip"
  source_code_hash = filebase64sha256("lambda.zip")
}
