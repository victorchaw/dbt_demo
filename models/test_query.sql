{{ config(materialized='table')}}

select price, bathrooms, bedrooms, property_type 
from {{sources('demofivetran', 'demo_documentation') }}
where price = "45"