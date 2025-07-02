terraform {
  backend "gcs" {
    bucket = "idp-devops-azure"
    prefix = "terraformvm.tfstate"
  }
}
