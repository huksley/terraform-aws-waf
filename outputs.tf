output "aws_waf_acl_id" {
  value = "${coalesce(join("", aws_waf_web_acl.waf_acl1.*.id), join("", aws_waf_web_acl.waf_acl2.*.id), join("", aws_waf_web_acl.waf_acl3.*.id), join("", aws_waf_web_acl.waf_acl4.*.id), join("", aws_waf_web_acl.waf_acl5.*.id), join("", aws_waf_web_acl.waf_acl6.*.id), join("", aws_waf_web_acl.waf_acl7.*.id), join("", aws_waf_web_acl.waf_acl8.*.id), join("", aws_waf_web_acl.waf_acl9.*.id), join("", aws_waf_web_acl.waf_acl10.*.id))}"
}

output "aws_wafregional_acl_id" {
  value = "${coalesce(join("", aws_wafregional_web_acl.waf_acl1.*.id), join("", aws_wafregional_web_acl.waf_acl2.*.id), join("", aws_wafregional_web_acl.waf_acl3.*.id), join("", aws_wafregional_web_acl.waf_acl4.*.id), join("", aws_wafregional_web_acl.waf_acl5.*.id), join("", aws_wafregional_web_acl.waf_acl6.*.id), join("", aws_wafregional_web_acl.waf_acl7.*.id), join("", aws_wafregional_web_acl.waf_acl8.*.id), join("", aws_wafregional_web_acl.waf_acl9.*.id), join("", aws_wafregional_web_acl.waf_acl10.*.id))}"
}
