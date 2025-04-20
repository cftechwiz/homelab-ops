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
      version = "2.22.0"
    }
    nexus = {
      source  = "datadrivers/nexus"
      version = "1.21.2"
    }
    sops = {
      source  = "carlpett/sops"
      version = "1.2.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.13.0"
    }
  }
  required_version = ">= 1.3.0"
}

data "sops_file" "secrets" {
  source_file = "secret.sops.yml"
}
