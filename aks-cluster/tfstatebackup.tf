terraform {
  backend "gcs" {
    bucket = "idp-devops-azure"
    prefix = "terraformaks.tfstate"
  }
}
