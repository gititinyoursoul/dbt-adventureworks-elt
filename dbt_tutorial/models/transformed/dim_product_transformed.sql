{{ config(
    materialized = 'table',
    indexes=[
      {'columns': ['product_id'], 'unique': True}
    ]
)}}


select 
    productid as product_id,
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
    productsubcategoryid as productsubcategory_id,
    productmodelid as productmodel_id,
    sellstartdate as sellstart_date,
    sellenddate as sellend_date,
    discontinueddate as discontinued_date,
    rowguid as rowgu_id,
    modifieddate as modified_date,
    -- FLAGS for analysis
    color in ('Multi', 'Silver/Black') as flag_color,
    {{ flag_outliers_iqr('standardcost') }} as flag_standardcost_outliers
from {{ source('production', 'product') }}