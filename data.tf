data "aws_ami" "ami_number" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023*-kernel-*-x86_64"] # al2023-ami-2023.1.20230825.0-kernel-6.1-x86_64
  }
}





data "vault_generic_secret" "instance_size_demo" {
  path = "kv/any_path_value"
}
