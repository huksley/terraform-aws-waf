#  Declares IP range
resource "aws_waf_ipset" "ipset" {
  count = "${var.enabled && !var.regional ? length(var.ip_list) : 0}"
  name  = "${var.prefix}-waf-ip-${replace(element(var.ip_list, count.index), "/:.*/", "")}"

  ip_set_descriptors {
    type  = "IPV4"
    value = "${replace(element(var.ip_list, count.index), "/^.*:/", "")}"
  }
}

# Single IP rule condition
resource "aws_waf_rule" "waf_rule" {
  count       = "${var.enabled && !var.regional ? length(var.ip_list) : 0}"
  depends_on  = ["aws_waf_ipset.ipset"]
  name        = "${var.prefix}-waf-rule-${replace(element(var.ip_list, count.index), "/:.*/", "")}"
  metric_name = "${replace(var.prefix, "-", "")}WAFRule${replace(replace(element(var.ip_list, count.index), "/:.*/", ""), "-", "")}"

  predicates {
    data_id = "${element(aws_waf_ipset.ipset.*.id, count.index)}"
    negated = false
    type    = "IPMatch"
  }
}
