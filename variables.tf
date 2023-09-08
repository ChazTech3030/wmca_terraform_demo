variable "instance_name" {
  type = list(any)
  default = [
    "web_server_leg_001",
    "web_server_leg_002",
    "web_server_leg_003",
  ]
}

variable "is_production" {
  type        = string
  description = "Is prod (yes/no)?"
  default     = "no"
}

variable "infrastructure_count" {
  default = 3
}

variable "cidr_block_for_ingress" {
  default = "0.0.0.0/0"
}

variable "instance_size" {
  type = string
  # default = "t1.micro"
}

variable "instance_size_map" {
  default = {
    default  = "t1.micro",
    dev = "t2.micro",
    test = "t2.large"
    prod = "t2.xlarge"
  }
}
variable "instance_size_list" {
  default = ["t1.micro", "t2.micro", "t2.large"]
}

variable "port_list" { 
  type = list(number)
  default = [80, 443, 22]
}