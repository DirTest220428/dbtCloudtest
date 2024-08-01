{# models/test_sentlog.sql #}

{{ config( materialized = 'incremental' ) }}
{% set AB_test = ['A', 'B'] %}

{% for AB in AB_test %}
(
SELECT
    *
    ,{{now()}} AS SENT_DATE
FROM
    {% if AB == 'A' %} {{ ref('test_mailsend_A') }} {% endif %}
    {% if AB == 'B' %} {{ ref('test_mailsend_B') }} {% endif %}
)
{% if not loop.last %} UNION ALL {% endif %}
{% endfor %}