# Enables whole module (all resources)
variable "enabled" {
  default = "true"
}

# If set to false, will create global ACLs for CloudFront, 
# if set to true, will create regional ACLs for ALB
variable "regional" {
  default = "false"
}

# Prefix for all names, allowed symbols - letters and number.
# Dashes (-) will be removed when creating CloudWatch metric name
variable "prefix" {
  default = "default"
}

# List of IPs in CIDR format (i.e. NETWORK/RANGE)
# Single IP: someip:127.0.0.1/32
# Network: someip:127.0.0.0/24
# FIXME: currently can contain MAX 5 IP blocks
variable "ip_list" {
  default = []
}

# Action for whole ACL
variable "default_action" {
  default = "BLOCK"
}

# Action for every IP
variable "rule_action" {
  default = "ALLOW"
}

# AWS region
variable "aws_region" {
  default = ""
}
