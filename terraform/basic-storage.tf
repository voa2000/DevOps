# Set google provider with project name.
provider "google" {
  project = "terraform-27" # Update: unique project id.
  region  = "europe-west2"
}

# Creates a GCS bucket.
resource "google_storage_bucket" "my_terraform_bucket" {
  name     = "my-terraform1-bucket" # Update: Unique bucket name
  location = "europe-west2"
}
