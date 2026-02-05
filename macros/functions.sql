 {% macro margin_percent (revenue, purchase_cost) %}
     SAFE_DIVIDE (({{revnue}} - {{purchase_cost}}), {{ revenue }})
 {% endmacro %}