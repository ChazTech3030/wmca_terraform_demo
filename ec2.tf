resource "aws_instance" "first_instance" {
  ami             = data.aws_ami.ami_number.id
  instance_type   = var.instance_size
  security_groups = ["allow_tls"]
  count           = lower(var.is_production) == "yes" ? 3 : 1
  tags = {
    Name = var.instance_name[count.index]
  }

  key_name = "terraform_ssh_access"
  connection {
    type = "ssh"
    user = "ec2-user"
    private_key = data.vault_generic_secret.instance_size_demo.data["aws_key_for_instance"]
    host = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
    "echo Hello, from Terraform >> newfile.txt"
    ]
  }
}