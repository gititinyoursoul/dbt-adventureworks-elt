SELECT due_date, order_date, count(1) as occurrences
FROM {{ ref('sales_order_header_transformed') }}
WHERE due_date < order_date
GROUP BY due_date, order_date