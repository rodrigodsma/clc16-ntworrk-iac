terraform {
  backend "s3" {
    bucket       = "terraform-state-rodrigo-martins-clc16-471112613332-us-east-1-an"
    key          = "terraform/state"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true
  }
}
