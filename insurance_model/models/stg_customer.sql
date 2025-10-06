with raw as (
    select
        customer_id,
        name,
        state,
        policy_type
    from {{ source('RAW', 'CUSTOMERS') }}  -- raw table in Snowflake
)

select * from raw