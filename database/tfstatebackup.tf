terraform {
  backend "gcs" {
    bucket = "idp-devops-azure"
    prefix = "terraformcloudsql.tfstate"
  }
}
