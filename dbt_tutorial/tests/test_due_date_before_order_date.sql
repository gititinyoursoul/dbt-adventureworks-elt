SELECT due_date, order_date, count(1) as occurrences
FROM {{ ref('stg_sales__order_headers') }}
WHERE due_date < order_date
GROUP BY due_date, order_date