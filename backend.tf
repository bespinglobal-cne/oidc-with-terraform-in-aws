terraform {
  backend "s3" {
    bucket   = "kwangjin-tfstate"
    region   = "ap-northeast-2"
    key      = "terraform/output/oidc-with-terraform-in-aws"
  }
}