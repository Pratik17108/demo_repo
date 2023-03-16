{% snapshot demo_snapshot %}
    {{
        config(
            target_database = 'DBT_DB',
            target_schema = 'Snap',
            unique_key='ID',
            strategy='check',
            check_cols = 'all',
            invalidate_hard_deletes=True
        )
    }}

    select * from {{ source('jaffle_shop', 'orders') }}
 {% endsnapshot %}