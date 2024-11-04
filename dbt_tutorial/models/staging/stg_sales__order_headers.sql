{{ config(materialized='ephemeral') }}

SELECT 
    salesorderid as salesorder_id, 
    revisionnumber, 
    orderdate as order_date, 
    duedate as due_date, 
    shipdate as ship_date, 
    status, 
    onlineorderflag, 
    purchaseordernumber,  
    subtotal, 
    taxamt, 
    freight, 
    totaldue, 
    rowguid as row_id,
    modifieddate as modified_date
FROM {{ source('sales', 'salesorderheader') }}