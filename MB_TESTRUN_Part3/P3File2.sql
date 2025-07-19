-- four_table_purchase_orders.sql (for SQL*Plus)
SET LINESIZE 120
SET PAGESIZE 50
SET VERIFY OFF

-- Format headers
-- COLUMN vendor_name             HEADING 'Vendor Name'                  FORMAT A30
-- COLUMN num_supply_orders       HEADING 'Number of Supply Orders'     FORMAT 999

SELECT
  pu.vendor_name                AS vendor_name,
  COUNT(DISTINCT o.order_id)    AS num_supply_orders
FROM
  Orders o
  JOIN OrdersTransaction ot
    ON o.order_id    = ot.order_id                 -- explosion (free)
  JOIN Transaction tx
    ON ot.transaction_id = tx.transaction_id
  JOIN Purchase pu
    ON tx.transaction_id = pu.transaction_id       -- real table
  JOIN Payment pay
    ON tx.transaction_id = pay.transaction_id      -- real table
WHERE
       o.order_type        = 'Delivery'               -- constraint #1: supply orders only
    AND pay.payment_status  = 'Successful'           -- constraint #2: only successful payments
GROUP BY
  pu.vendor_name;

