-- eight_table_extended_report.sql (for SQL*Plus)
SET LINESIZE 200
SET PAGESIZE 50
SET VERIFY OFF

-- Format headers
COLUMN first_name            HEADING 'First Name'          FORMAT A15
COLUMN loyalty_points        HEADING 'Loyalty Points'      FORMAT 999
COLUMN item_name             HEADING 'Menu Item Name'      FORMAT A30
COLUMN product_name          HEADING 'Product Name'        FORMAT A30
COLUMN order_type            HEADING 'Order Type'          FORMAT A15
COLUMN transaction_amount    HEADING 'Transaction Amount'  FORMAT 999,999
COLUMN feedback_rating       HEADING 'Feedback Rating'     FORMAT 999
COLUMN outlet_name           HEADING 'Outlet Name'         FORMAT A25

SELECT
  p.first_name,
  c.loyalty_points,
  m.item_name,
  pr.product_name,
  o.order_type,
  tx.transaction_amount,
  fb.rating_score             AS feedback_rating,
  outl.outlet_name
FROM
  Person p
  JOIN Customer c
    ON p.person_id = c.person_id
  JOIN CustomerMenu cm
    ON c.customer_id = cm.customer_id      -- explosion (free)
  JOIN Menu m
    ON cm.menu_id = m.menu_id
  JOIN ProductMenu pm
    ON m.menu_id = pm.menu_id             -- explosion (free)
  JOIN Product pr
    ON pm.product_id = pr.product_id
  JOIN ProductOrders po
    ON pr.product_id = po.product_id      -- explosion (free)
  JOIN Orders o
    ON po.order_id = o.order_id
  JOIN OrdersTransaction ot
    ON o.order_id = ot.order_id           -- explosion (free)
  JOIN Transaction tx
    ON ot.transaction_id = tx.transaction_id
  JOIN TransactionFeedback tf
    ON tx.transaction_id = tf.transaction_id -- explosion (free)
  JOIN Feedback fb
    ON tf.feedback_id = fb.feedback_id         -- real table
  JOIN Outlet outl
    ON m.outlet_id = outl.outlet_id            -- real table
WHERE
       c.loyalty_points           > 50   -- constraint #1
   AND o.total_amount              < 1000 -- constraint #2
   AND tx.transaction_status      = 'Completed' -- constraint #3
   AND fb.rating_score            >= 1         -- constraint #4: positive feedback only
ORDER BY
  fb.rating_score DESC;
