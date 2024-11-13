
with products as (

  select * from {{ ref('int_dim_products') }}

),
  
final as (
  
  select 
    product_id,
    "name",
    productnumber,
    makeflag,
    finishedgoodsflag,
    color,
    safetystocklevel,
    reorderpoint,
    standardcost,
    listprice,
    "size",
    sizeunitmeasurecode,
    weightunitmeasurecode,
    weight,
    daystomanufacture,
    productline,
    "class",
    "style",
    productsubcategory_id,
    productmodel_id,
    sellstart_date,
    sellend_date,
    discontinued_date,
    rowgu_id,
    modified_date
    
  from products
  
  )
  
  select * from final