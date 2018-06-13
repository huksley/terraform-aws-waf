#!/bin/bash
#
# Generates *-acl.tf files for ability to have dynamic WAF rules based on number of IPs
#
rm -Rf waf-acl.tf
rm -Rf wafregional-acl.tf

for N in `echo "1 2 3 4 5 6 7 8 9 10"`; do
  echo $N
  cat acl-template.txt | sed -re "s/#NUM#/$N/g;s/#ISREG#/!/g" >>waf-acl.tf
  cat acl-template.txt | sed -re "s/#NUM#/$N/g;s/#ISREG#//g;s/aws_waf_/aws_wafregional_/g" >>wafregional-acl.tf
  I=0
  while (( $I < $N )); do
    echo -n $I

    echo ""  >> waf-acl.tf
    cat >> waf-acl.tf << EOF
  rules {
    action {
      type = "\${var.rule_action}"
    }

    priority = "$I"
    rule_id  = "\${aws_waf_rule.waf_rule.$I.id}"
  }
EOF

    echo ""  >> wafregional-acl.tf
    cat >> wafregional-acl.tf << EOF
  rule {
    action {
      type = "\${var.rule_action}"
    }

    priority = "$I"
    rule_id  = "\${aws_wafregional_rule.waf_rule.$I.id}"
  }
EOF

    I=`expr $I + 1`
  done
  echo "}" >> waf-acl.tf
  echo ""  >> waf-acl.tf

  echo "}" >> wafregional-acl.tf
  echo ""  >> wafregional-acl.tf
done
