SELECT
    order_id,
    product_name,
    amount,
    country,
    order_date,
    {{ dynamic_partition('order_date', 'MONTH') }}  -- Dynamic partitioning
FROM `sales-analytics-464517.sales_data.raw_sales`