{{ config(materialized='table')}}

select price, bathrooms, bedrooms, property_type 
from {{ source('demo_dbt_link_fivetran', 'demo_documentation') }}
where price = "45"