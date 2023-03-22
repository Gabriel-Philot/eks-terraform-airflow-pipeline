# Centralizing the state control file of Terraform
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-fuel-gabrielphilot"
    key ="state/igti/edc/mod3_desafio/terraform.tfstate"  
  }
}