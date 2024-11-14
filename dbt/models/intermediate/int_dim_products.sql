
with products as (

  select * from {{ ref('stg_production__products') }}

),

transformed as (
  
  select 
      p.*,
      -- FLAGS for analysis
      color in ('Multi', 'Silver/Black') as flag_color,
      {{ flag_outliers_iqr('products', 'standardcost') }} as flag_standardcost_outliers
      
  from products p
  
  ),
  
filtered_flagged_rows as (
  
  select * 
  
  from transformed 
  
  where       
  -- exclude FLAGS
  flag_color is not True
  and flag_standardcost_outliers IS NULL

)

select * from filtered_flagged_rows