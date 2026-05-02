{% set nights_booked = 5 %}
SELECT * FROM {{ ref('bronze_bookings') }}
WHERE nights_booked > {{ nights_booked }}