{{ config(
    materialized='table',
    description='Summary of customers by state and policy type'
) }}

select
    state,
    policy_type,
    count(distinct customer_id) as total_customers
from {{ ref('stg_customer') }}  -- depends on staging
group by state, policy_type
order by state, policy_type
