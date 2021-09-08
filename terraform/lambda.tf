
resource "aws_lambda_function" "hello_world" {
  function_name       = local.function_name
  runtime             = "nodejs12.x"
  handler             = "index.handler"
  timeout             = 10
  publish             = true
  filename              = var.lambda_package
  source_code_hash      = filesha256(var.lambda_package)
  role                  = aws_iam_role.lambda_exec.arn
  environment {
    variables = {
      DEMO_URL = var.repo_url
    }
  }
  tags = local.common_tags
}

resource "aws_iam_role" "lambda_exec" {
  name = "${var.app_id}-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "lambda_policy" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}
