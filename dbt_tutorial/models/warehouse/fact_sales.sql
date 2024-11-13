with fact_sales as (
    
    select * from {{ ref("int_fact_sales") }}
    
),

dim_products as (
    select * from {{ref("int_dim_products")}}
)

select fact.* 
from fact_sales fact
join dim_products dim on dim.product_id = fact.product_id