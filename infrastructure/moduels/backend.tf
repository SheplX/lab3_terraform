terraform {
  backend "s3" {
      bucket = "data-iti"
      key    = "terraform.tfstate"
      region = "us-east-2"
      encrypt = true

  }
}