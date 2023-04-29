terraform {
  backend "s3" {
    bucket   = "kwangjin-tfstate"
    region   = "ap-northeast-2"
    key      = "terraform/output/oidc-with-terraform-in-aws"
    role_arn = "arn:aws:iam::767404772322:role/github-actions"
  }
}