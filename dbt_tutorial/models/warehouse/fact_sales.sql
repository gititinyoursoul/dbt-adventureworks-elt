with fact_sales as (
    
    select * from {{ ref("int_fact_sales") }}
    
)

select * from fact_sales