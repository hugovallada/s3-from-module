terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.31.0"
    }
  }

  backend "s3" {
    bucket = "hugovallada-tfstate"
    key    = "tf-state/[nome_do_projeto]/terraform.tfstate" //TODO: Substituir pelo nome do projeto
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "hugovallada"
      managed-by = "terraform"
    }
  }
}

module "s3" {
  source            = "https://github.com/hugovallada/s3-from-module.git"
  bucket_name       = "s3-module"
  public_access     = true
  lyfecicle_enabled = true
  days              = 20
}
