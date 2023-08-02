{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}

{% macro margin_percent_michel(turnover, purchase_cost) %}
   ({{ turnover }} - {{purchase_cost }})
{% endmacro %}
