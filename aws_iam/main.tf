resource "aws_iam_user" "developer" {
  name = "user-dv"
}

resource "aws_iam_policy" "ec2_policy" {
  name = "EC2FullAccessCustom"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [{
      Effect = "Allow"

      Action = [
        "ec2:*"
      ]

      Resource = "*"
    }]
  })
}

resource "aws_iam_user_policy_attachment" "attach" {
  user       = aws_iam_user.developer.name
  policy_arn = aws_iam_policy.ec2_policy.arn
}