# resource "null_resource" "get_curl_google" {
# 	provisioner "local-exec" {
#     command = "mv terraform_log.txt /logs/terraform_log${date()}"
#   }
# }

# resource "aws_eip" "null_test" { 
#   domain = "vpc"
#   depends_on = [null_resource.get_curl_google]
# }