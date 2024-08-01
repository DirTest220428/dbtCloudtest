{% macro now() %}
    (TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL 9 HOUR))
{% endmacro %}