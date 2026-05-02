{{
    config(
        materialized = 'incremental',
        unique_key = 'LISTING_ID'
    )
}}
SELECT
    LISTING_ID,
    HOST_ID,
    PROPERTY_TYPE,
    ROOM_TYPE,
    CITY,
    COUNTRY,
    ACCOMMODATES,
    BEDROOMS,
    BATHROOMS,
    PRICE_PER_NIGHT,
    {{ tag("CAST(PRICE_PER_NIGHT AS NUMBER)") }} AS PRICE_TAG_PER_NIGHT,
    CREATED_AT
FROM {{ ref('bronze_listings')}}