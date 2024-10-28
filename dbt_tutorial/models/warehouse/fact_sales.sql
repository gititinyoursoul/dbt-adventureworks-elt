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
FROM {{ ref("sales_order_header") }} AS h
JOIN {{ ref("sales_order_detail") }} AS d
ON h.salesorder_id = d.salesorder_id