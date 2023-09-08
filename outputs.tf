# output "private_ips" {
#   value = aws_instance.first_instance[*].private_ip
#   sensitive = true
# }

output "test" { 
    value = "test 2"
}

# output "vault_secret_stuff" {
#   value = data.vault_generic_secret.instance_size_demo.data["InstanceSize_dev"]
#   sensitive = true
# }
