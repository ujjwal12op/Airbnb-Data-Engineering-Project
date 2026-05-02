{{
    config
    (
    materialized='incremental',
    unique_key='HOST_ID'
    )
}}

 SELECT
    HOST_ID,
    REPLACE(HOST_NAME,' ','_') as HOST_NAME,
    HOST_SINCE,
    IS_SUPERHOST,
    CASE
        WHEN RESPONSE_RATE>95 THEN 'Excellent'
        WHEN RESPONSE_RATE>80 THEN 'Good'
        WHEN RESPONSE_RATE>60 THEN 'FAIR'
        ELSE 'POOR'
        END AS RESPONSE_RATE_QUALITY,
        CREATED_AT AS CREATED_AT
        
    FROM {{ref('bronze_hosts') }}
