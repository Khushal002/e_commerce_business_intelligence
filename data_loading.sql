COPY customers FROM '/tmp/olist_customers_dataset.csv' DELIMITER ',' CSV HEADER;
COPY orders FROM '/tmp/olist_orders_dataset.csv' DELIMITER ',' CSV HEADER;
COPY order_items FROM '/tmp/olist_order_items_dataset.csv' DELIMITER ',' CSV HEADER;
COPY order_payments FROM '/tmp/olist_order_payments_dataset.csv' DELIMITER ',' CSV HEADER;
COPY products FROM '/tmp/olist_products_dataset.csv' DELIMITER ',' CSV HEADER;