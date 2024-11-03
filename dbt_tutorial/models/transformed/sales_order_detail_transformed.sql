{{ config(materialized='ephemeral') }}

SELECT 
    salesorderid as salesorder_id, 
    salesorderdetailid as salesorderdetail_id, 
    carriertrackingnumber, 
    orderqty as order_qty, 
    productid as product_id, 
    specialofferid as specialoffer_id, 
    unitprice, 
    unitpricediscount, 
    rowguid as row_id, 
    modifieddate as modified_date
from {{ source('sales', 'salesorderdetail') }}