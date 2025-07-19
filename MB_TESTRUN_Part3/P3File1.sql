-- two_table_kitchen_ingredient.sql (for SQL*Plus)
SET LINESIZE 100
SET PAGESIZE 50
SET VERIFY OFF

-- Format headers
COLUMN kitchen_type         HEADING 'Kitchen Type'          FORMAT A30
COLUMN ingredient_name      HEADING 'Ingredient Name'       FORMAT A30

SELECT
  k.kitchen_type,
  i.ingredient_name
FROM
  Kitchen k
  JOIN Ingredient i
    ON k.kitchen_id = i.kitchen_id;
