provider "aws" {
    region = "us-east-1"

    # Home lab / design-only mode
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
}