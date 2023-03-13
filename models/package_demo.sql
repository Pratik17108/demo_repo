with demo_table as
(

    select customer_id ,
            first_name,
    {{ dbt_utils.generate_surrogate_key(['customer_id', 'first_name']) }} as surogate_key

    from {{ ref('stg_customers') }}

)

select * from demo_table


