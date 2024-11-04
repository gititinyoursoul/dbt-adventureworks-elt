
with products as (

  select * from {{ ref('int_dim_products') }}

),

exclude_flagged_rows as (
  
  select 
      product_id,
      name,
      productnumber,
      makeflag,
      finishedgoodsflag,
      color,
      safetystocklevel,
      reorderpoint,
      standardcost,
      listprice,
      size,
      sizeunitmeasurecode,
      weightunitmeasurecode,
      weight,
      daystomanufacture,
      productline,
      class,
      style,
      productsubcategory_id,
      productmodel_id,
      sellstart_date,
      sellend_date,
      discontinued_date,
      rowgu_id,
      modified_date
      
  from products p
  
  where       
      -- exclude FLAGS
      flag_color is not True
      and flag_standardcost_outliers IS NULL
  
  )
  
select * from exclude_flagged_rows 