terraform {
  cloud {
    hostname     = "app.terraform.io"
    organization = "colinfallwell"
    workspaces {
      name = "arpa-home-storage"
    }
  }
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "3.0.1"
    }
    nexus = {
      source  = "datadrivers/nexus"
      version = "1.21.2"
    }
    sops = {
      source  = "carlpett/sops"
      version = "0.7.2"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.13.1"
    }
  }
  required_version = ">= 1.3.0"
}

data "sops_file" "secrets" {
  source_file = "secret.sops.yml"
}
