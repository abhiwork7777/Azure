terraform {
  backend "gcs" {
    bucket = "idp-devops-azure"
    prefix = "terraformstorage.tfstate"
  }
}
