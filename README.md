# AWS WAF rules

Currently only supporting specifying IP blocking rules, up to 10 IP CIDR blocks
In default configuration, will block all traffic specified by WAF ACL, allowing access only to IPs declared.

## Example

```hcl
# List of allowed IPs
locals {
  ip_list = [
    "MyBlock1:1.1.1.0/24",
    "MyBlock2:2.2.2.0/24",
    "MyIp3:8.8.8.8/32"
  ]
}

# Create WAF ACL for CloudFront Global, afterwards you can attach it to distribution to restrict access
module "waf_limitip_cf" {
  source     = "github.com/huksley/terraform-aws-waf?ref=1.0_GA"
  enabled    = "true"
  regional   = "false"
  aws_region = "${var.aws_region}"
  prefix     = "${var.namespace}-${var.stage}-cf"
  ip_list    = "${local.ip_list}"
}

# Create WAF ACL for CloudFront Regional, afterwards you can attach it to ALB to restrict access
module "waf_limitip_alb" {
  source     = "github.com/huksley/terraform-aws-waf?ref=1.0_GA"
  enabled    = "true"
  regional   = "true"
  aws_region = "${var.aws_region}"
  prefix     = "${var.namespace}-${var.stage}-alb"
  ip_list    = "${local.ip_list}"
}
```
