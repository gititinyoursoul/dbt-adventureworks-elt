with sales__order_headers as (
    
    select * from {{ ref("stg_sales__order_headers") }}
    
),

sales__order_details as (
    
    select * from {{ ref("stg_sales__order_details") }}
    
),

tables_joined as (
    
SELECT 
    h.salesorder_id, 
    d.salesorderdetail_id,
    h.revisionnumber, 
    h.order_date, 
    h.due_date, 
    h.ship_date, 
    h.status, 
    h.onlineorderflag, 
    h.purchaseordernumber, 
    h.subtotal, 
    h.taxamt, 
    h.freight, 
    h.totaldue,
    d.carriertrackingnumber, 
    d.order_qty, 
    d.product_id, 
    d.specialoffer_id, 
    d.unitprice, 
    d.unitpricediscount
    
FROM sales__order_headers AS h
JOIN sales__order_details AS d
    ON h.salesorder_id = d.salesorder_id

)

select * from tables_joined