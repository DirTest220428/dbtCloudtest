{# models/test_mailsend_B.sql #}

{{ config( materialized = 'table' ) }}

SELECT
    *
FROM
    {{ ref('test_mid2') }}
WHERE
    MAIL_NAME = 'mail_B'
ORDER BY RAND()
LIMIT 5