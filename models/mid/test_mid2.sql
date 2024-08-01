{# models/mid/test_mid2.sql #}

{{ config( materialized = 'ephemeral' ) }}

SELECT
     ID
    ,NAME
    ,EMAIL
    ,CASE
        WHEN MOD(NUM, 2) = 0 THEN 'mail_A'
        WHEN MOD(NUM, 2) = 1 THEN 'mail_B'
    END AS MAIL_NAME
FROM
    {{ ref('test_mid1') }}