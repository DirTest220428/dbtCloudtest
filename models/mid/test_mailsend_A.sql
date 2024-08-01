{# models/test_mailsend_A.sql #}

{{ config( materialized = 'table' ) }}

SELECT
    *
FROM
    {{ ref('test_mid2') }}
WHERE
    MAIL_NAME = 'mail_A'
ORDER BY RAND()
LIMIT 5