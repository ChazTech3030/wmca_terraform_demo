provider "aws" {
  region     = "eu-west-1"
  secret_key = data.vault_generic_secret.instance_size_demo.data["secret_key"]
  access_key = data.vault_generic_secret.instance_size_demo.data["access_key"]
}

provider "vault" {
  address = "https://terraform-wmca23-vault-public-vault-7a2c04a8.054609df.z1.hashicorp.cloud:8200"
  token = "hvs.CAESIDZAdPpE3IUQKTuzRGeuXuQUm_ZJQ2O4A-mOIZbQz8IpGicKImh2cy4yQmlKVENMQkRNcWtMbDdSZEtnOGJzeU0uR1dFQXAQywM"
}