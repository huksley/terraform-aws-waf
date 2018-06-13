# ACL which matches if there is 1 IP in ip_list
resource "aws_waf_web_acl" "waf_acl1" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 1 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }
}

# ACL which matches if there is 2 IP in ip_list
resource "aws_waf_web_acl" "waf_acl2" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 2 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }
}

# ACL which matches if there is 3 IP in ip_list
resource "aws_waf_web_acl" "waf_acl3" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 3 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "2"
    rule_id  = "${aws_waf_rule.waf_rule.2.id}"
  }
}

# ACL which matches if there is 4 IP in ip_list
resource "aws_waf_web_acl" "waf_acl4" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 4 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "2"
    rule_id  = "${aws_waf_rule.waf_rule.2.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "3"
    rule_id  = "${aws_waf_rule.waf_rule.3.id}"
  }
}

# ACL which matches if there is 5 IP in ip_list
resource "aws_waf_web_acl" "waf_acl5" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 5 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "2"
    rule_id  = "${aws_waf_rule.waf_rule.2.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "3"
    rule_id  = "${aws_waf_rule.waf_rule.3.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "4"
    rule_id  = "${aws_waf_rule.waf_rule.4.id}"
  }
}

# ACL which matches if there is 6 IP in ip_list
resource "aws_waf_web_acl" "waf_acl6" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 6 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "2"
    rule_id  = "${aws_waf_rule.waf_rule.2.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "3"
    rule_id  = "${aws_waf_rule.waf_rule.3.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "4"
    rule_id  = "${aws_waf_rule.waf_rule.4.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "5"
    rule_id  = "${aws_waf_rule.waf_rule.5.id}"
  }
}

# ACL which matches if there is 7 IP in ip_list
resource "aws_waf_web_acl" "waf_acl7" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 7 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "2"
    rule_id  = "${aws_waf_rule.waf_rule.2.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "3"
    rule_id  = "${aws_waf_rule.waf_rule.3.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "4"
    rule_id  = "${aws_waf_rule.waf_rule.4.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "5"
    rule_id  = "${aws_waf_rule.waf_rule.5.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "6"
    rule_id  = "${aws_waf_rule.waf_rule.6.id}"
  }
}

# ACL which matches if there is 8 IP in ip_list
resource "aws_waf_web_acl" "waf_acl8" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 8 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "2"
    rule_id  = "${aws_waf_rule.waf_rule.2.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "3"
    rule_id  = "${aws_waf_rule.waf_rule.3.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "4"
    rule_id  = "${aws_waf_rule.waf_rule.4.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "5"
    rule_id  = "${aws_waf_rule.waf_rule.5.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "6"
    rule_id  = "${aws_waf_rule.waf_rule.6.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "7"
    rule_id  = "${aws_waf_rule.waf_rule.7.id}"
  }
}

# ACL which matches if there is 9 IP in ip_list
resource "aws_waf_web_acl" "waf_acl9" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 9 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "2"
    rule_id  = "${aws_waf_rule.waf_rule.2.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "3"
    rule_id  = "${aws_waf_rule.waf_rule.3.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "4"
    rule_id  = "${aws_waf_rule.waf_rule.4.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "5"
    rule_id  = "${aws_waf_rule.waf_rule.5.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "6"
    rule_id  = "${aws_waf_rule.waf_rule.6.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "7"
    rule_id  = "${aws_waf_rule.waf_rule.7.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "8"
    rule_id  = "${aws_waf_rule.waf_rule.8.id}"
  }
}

# ACL which matches if there is 10 IP in ip_list
resource "aws_waf_web_acl" "waf_acl10" {
  count       = "${var.enabled && !var.regional && length(var.ip_list) == 10 ? 1 : 0}"
  depends_on  = ["aws_waf_ipset.ipset", "aws_waf_rule.waf_rule"]
  name        = "${var.prefix}-waf-acl"
  metric_name = "${replace(var.prefix, "-", "")}WAFAcl"

  default_action {
    type = "${var.default_action}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "0"
    rule_id  = "${aws_waf_rule.waf_rule.0.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "1"
    rule_id  = "${aws_waf_rule.waf_rule.1.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "2"
    rule_id  = "${aws_waf_rule.waf_rule.2.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "3"
    rule_id  = "${aws_waf_rule.waf_rule.3.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "4"
    rule_id  = "${aws_waf_rule.waf_rule.4.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "5"
    rule_id  = "${aws_waf_rule.waf_rule.5.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "6"
    rule_id  = "${aws_waf_rule.waf_rule.6.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "7"
    rule_id  = "${aws_waf_rule.waf_rule.7.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "8"
    rule_id  = "${aws_waf_rule.waf_rule.8.id}"
  }

  rules {
    action {
      type = "${var.rule_action}"
    }

    priority = "9"
    rule_id  = "${aws_waf_rule.waf_rule.9.id}"
  }
}

