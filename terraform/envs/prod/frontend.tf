provider "aws" {}

module "frontend" {
  source               = "../../modules/frontend"
}