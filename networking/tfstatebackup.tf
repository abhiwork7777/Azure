terraform {
  backend "gcs" {
    bucket = "idp-devops-azure"
    prefix = "terraformvpc.tfstate"
  }
}
