-- Data for MB_MENU_ITEMS
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Lucky Plate', '2-pc Chicken, Mashed Potato, Coleslaw and Bun', 17.50);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Chicken Burger', 'Classic chicken patty with fresh lettuce and sauce', 10.90);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Fish and Chips', 'Crispy fish fillet with golden fries', 15.00);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Nasi Lemak MB', 'Fragrant coconut rice with spicy sambal, anchovies, egg and fried chicken', 14.50);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Cheesy Wedges', 'Potato wedges topped with creamy cheese sauce', 7.80);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('MB Crispy Chicken (1pc)', 'Signature fried chicken, crispy and juicy', 6.50);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Chicken Porridge', 'Warm chicken porridge with shredded chicken and spring onion', 8.20);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Twister Fries', 'Seasoned curly fries, perfect for sharing', 6.90);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Ice Cream Sundae', 'Vanilla ice cream with chocolate or strawberry topping', 5.50);
INSERT INTO MB_MENU_ITEMS (item_name, item_description, price) VALUES ('Iced Lemon Tea', 'Refreshing iced tea with a hint of lemon', 4.00);

-- Data for MB_CUSTOMERS
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Ahmad', 'Rosli', 'ahmad.rosli@example.com', '012-3456789');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Siti', 'Aminah', 'siti.aminah@example.com', '019-8765432');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Lim', 'Wei', 'lim.wei@example.com', '016-1234567');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Priya', 'Devi', 'priya.devi@example.com', '011-2345678');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('David', 'Tan', 'david.tan@example.com', '017-9876543');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Nurul', 'Zahid', 'nurul.zahid@example.com', '013-5678901');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Kenny', 'Chong', 'kenny.chong@example.com', '018-7654321');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Muthu', 'Raja', 'muthu.raja@example.com', '014-9012345');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Melissa', 'Wong', 'melissa.wong@example.com', '010-4567890');
INSERT INTO MB_CUSTOMERS (first_name, last_name, email, phone_number) VALUES ('Hafiz', 'Aziz', 'hafiz.aziz@example.com', '015-2109876');

-- Data for MB_STAFF
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Ali', 'Hassan', 'Manager', TO_DATE('2022-03-15', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Nora', 'Chan', 'Crew Leader', TO_DATE('2023-01-20', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Muthu', 'Kumar', 'Cook', TO_DATE('2022-11-01', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Sarah', 'Lee', 'Cashier', TO_DATE('2024-02-10', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Fatimah', 'Yusof', 'Service Crew', TO_DATE('2023-07-05', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Daniel', 'Lim', 'Cook Helper', TO_DATE('2024-03-01', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Ain', 'Abdul', 'Cleaner', TO_DATE('2023-09-10', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Ganesh', 'Pillai', 'Delivery Coordinator', TO_DATE('2022-06-12', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Mei Ling', 'Goh', 'Assistant Manager', TO_DATE('2021-08-22', 'YYYY-MM-DD'));
INSERT INTO MB_STAFF (first_name, last_name, position, hire_date) VALUES ('Syed', 'Ismail', 'Security Guard', TO_DATE('2024-04-05', 'YYYY-MM-DD'));

-- Data for MB_OUTLETS
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB AEON Mall Kinta City', 'Lot F01, AEON Mall Kinta City, Jalan Teh Khuan Lye', 'Ipoh', 'Perak');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB KLCC', 'Lot G34, Suria KLCC, Jalan Ampang', 'Kuala Lumpur', 'W.P. Kuala Lumpur');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB Paradigm Mall JB', 'Lot 4-15, Paradigm Mall Johor Bahru, Jalan Skudai', 'Johor Bahru', 'Johor');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB Gurney Plaza', 'Lot B1-05, Gurney Plaza, Persiaran Gurney', 'George Town', 'Penang');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB IOI City Mall', 'Lot LG-20, IOI City Mall, IOI Resort City', 'Putrajaya', 'W.P. Putrajaya');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB Sunway Pyramid', 'Lot LG2.30, Sunway Pyramid, Jalan PJS 11/15', 'Petaling Jaya', 'Selangor');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB Queensbay Mall', 'Lot 3F-01, Queensbay Mall, 100 Persiaran Bayan Indah', 'Bayan Lepas', 'Penang');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB Mid Valley Megamall', 'Lot LG-050, Mid Valley Megamall, Lingkaran Syed Putra', 'Kuala Lumpur', 'W.P. Kuala Lumpur');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB Imago Shopping Mall', 'Lot LG-01, Imago Shopping Mall, Coastal Highway', 'Kota Kinabalu', 'Sabah');
INSERT INTO MB_OUTLETS (outlet_name, address, city, state) VALUES ('MB Vivacity Megamall', 'Lot G-050, Vivacity Megamall, Jalan Wan Alwi', 'Kuching', 'Sarawak');

-- Data for MB_ORDERS
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-06-30 14:30:00', 'YYYY-MM-DD HH24:MI:SS'), 35.50, 'Credit Card');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-06-30 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 22.80, 'Cash');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-07-01 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 48.00, 'E-Wallet');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-07-01 13:00:00', 'YYYY-MM-DD HH24:MI:SS'), 17.50, 'Debit Card');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-07-01 16:45:00', 'YYYY-MM-DD HH24:MI:SS'), 55.20, 'Credit Card');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-07-01 19:30:00', 'YYYY-MM-DD HH24:MI:SS'), 28.90, 'Cash');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-07-02 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 41.70, 'E-Wallet');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-07-02 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), 12.00, 'Cash');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-07-02 17:10:00', 'YYYY-MM-DD HH24:MI:SS'), 63.10, 'Credit Card');
INSERT INTO MB_ORDERS (order_date, total_amount, payment_method) VALUES (TO_TIMESTAMP('2025-07-02 20:05:00', 'YYYY-MM-DD HH24:MI:SS'), 30.00, 'E-Wallet');

-- Data for MB_SUPPLIERS
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Chicken Farm Sdn Bhd', 'Mr. Wong', '03-11112222');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Fresh Veggies Co.', 'Ms. Devi', '04-33334444');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Beverage Distributors', 'Mr. Tan', '05-55556666');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Packaging Solutions Inc.', 'Ms. Lim', '03-77778888');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Dairy Products Sdn Bhd', 'Mr. Raj', '06-99990000');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Grain Millers Malaysia', 'Mr. Lee', '07-12345678');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Spice Importers Ltd.', 'Ms. Priya', '03-98765432');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Frozen Goods Supply', 'Mr. Chong', '08-23456789');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Bakery Ingredients Co.', 'Ms. Anne', '03-45678901');
INSERT INTO MB_SUPPLIERS (supplier_name, contact_person, phone_number) VALUES ('Cleaning Supplies Hub', 'Mr. Bala', '04-56789012');

-- Data for MB_INVENTORY
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Frozen Chicken', 500, 'kg');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Potatoes', 200, 'kg');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Cooking Oil', 100, 'liters');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Soft Drinks', 300, 'cans');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Burger Buns', 400, 'pieces');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Lettuce', 50, 'heads');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Tomatoes', 30, 'kg');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Flour', 150, 'kg');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Cheese Slices', 250, 'packs');
INSERT INTO MB_INVENTORY (item_name, quantity, unit_of_measure) VALUES ('Paper Napkins', 1000, 'pieces');

-- Data for MB_PROMOTIONS
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Ramadan Special', TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-04-10', 'YYYY-MM-DD'), 15.00);
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Family Feast Deal', TO_DATE('2025-06-15', 'YYYY-MM-DD'), TO_DATE('2025-07-31', 'YYYY-MM-DD'), 20.00);
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Weekday Lunch Promo', TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 10.00);
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Student Discount', TO_DATE('2025-02-01', 'YYYY-MM-DD'), TO_DATE('2025-11-30', 'YYYY-MM-DD'), 8.00);
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Weekend Combo', TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-08-31', 'YYYY-MM-DD'), 12.50);
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Kids Eat Free (Tuesdays)', TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 100.00); -- Representing free meal via 100% discount
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Super Saver Set', TO_DATE('2025-07-01', 'YYYY-MM-DD'), TO_DATE('2025-09-30', 'YYYY-MM-DD'), 25.00);
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Online Order Exclusive', TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-10-31', 'YYYY-MM-DD'), 5.00);
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Senior Citizen Discount', TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'), 7.00);
INSERT INTO MB_PROMOTIONS (promotion_name, start_date, end_date, discount_percentage) VALUES ('Festive Season Offer', TO_DATE('2025-12-01', 'YYYY-MM-DD'), TO_DATE('2025-12-25', 'YYYY-MM-DD'), 18.00);

-- Data for MB_FRANCHISEES
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Mega Bites Holdings', 'contact@megabites.com', TO_DATE('2020-05-20', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Delicious Ventures Sdn Bhd', 'info@deliciousventures.my', TO_DATE('2021-01-10', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Golden Spoon Group', 'admin@goldenspoon.com', TO_DATE('2019-09-01', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Tasty Treats Enterprise', 'support@tastytreats.biz', TO_DATE('2022-03-18', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Fast Food Empire', 'hello@fastfoodempire.net', TO_DATE('2023-06-25', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Flavor Fusion Sdn Bhd', 'contact@flavorfusion.com', TO_DATE('2021-11-05', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Gourmet Bites Enterprise', 'info@gourmetbites.my', TO_DATE('2022-08-14', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Urban Food Concepts', 'admin@urbanfood.net', TO_DATE('2023-01-20', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Peak Performance Food', 'support@peakfood.biz', TO_DATE('2020-02-29', 'YYYY-MM-DD'));
INSERT INTO MB_FRANCHISEES (franchisee_name, contact_email, agreement_date) VALUES ('Southern Delights Co.', 'enquiry@southerndelights.com', TO_DATE('2022-09-10', 'YYYY-MM-DD'));

-- Data for MB_DELIVERY_DRIVERS
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Kamal', 'Arif', 'Motorcycle');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Jenny', 'Ong', 'Car');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Raju', 'Palani', 'Motorcycle');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Melissa', 'Chua', 'Car');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Harith', 'Iskandar', 'Motorcycle');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Suresh', 'Kumar', 'Motorcycle');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Chloe', 'Tan', 'Car');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Faizal', 'Bakri', 'Motorcycle');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Grace', 'Lim', 'Car');
INSERT INTO MB_DELIVERY_DRIVERS (first_name, last_name, vehicle_type) VALUES ('Ben', 'Lee', 'Motorcycle');

-- Data for MB_FEEDBACK
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Ahmad Rosli', 5, 'Great food and fast service!');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Siti Aminah', 4, 'Enjoyed the meal, but the queue was a bit long.');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Lim Wei', 5, 'My kids loved the burgers. Will be back!');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Priya Devi', 3, 'Food was okay, but the table was not clean.');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('David Tan', 5, 'Consistently good quality. Marrybrown never disappoints!');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Nurul Zahid', 4, 'Good chicken, but wish there were more sauce options.');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Kenny Chong', 2, 'Order was incorrect and took too long.');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Muthu Raja', 5, 'Excellent Nasi Lemak, highly recommended!');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Melissa Wong', 3, 'Average experience, staff seemed busy.');
INSERT INTO MB_FEEDBACK (customer_name, rating, comments) VALUES ('Hafiz Aziz', 4, 'Value for money, especially the family meal.');

-- Data for MB_INGREDIENTS
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Chicken Thigh', 8.50);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Lettuce', 2.00);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Tomato', 3.50);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Breading Mix', 4.80);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Cooking Oil (Palm)', 6.20);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Flour (All-Purpose)', 3.00);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Eggs', 0.80);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Milk', 4.00);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Salt', 1.20);
INSERT INTO MB_INGREDIENTS (ingredient_name, unit_cost) VALUES ('Black Pepper', 2.50);

-- Data for MB_EQUIPMENT
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Deep Fryer 1', TO_DATE('2025-05-10', 'YYYY-MM-DD'), TO_DATE('2025-08-10', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('POS System', TO_DATE('2025-06-01', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Beverage Dispenser', TO_DATE('2025-04-20', 'YYYY-MM-DD'), TO_DATE('2025-07-20', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Chicken Pressure Cooker', TO_DATE('2025-05-25', 'YYYY-MM-DD'), TO_DATE('2025-08-25', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Freezer Unit', TO_DATE('2025-06-15', 'YYYY-MM-DD'), TO_DATE('2025-09-15', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Grill Plate', TO_DATE('2025-03-05', 'YYYY-MM-DD'), TO_DATE('2025-07-05', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Ice Machine', TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-08-01', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Food Warmer', TO_DATE('2025-04-10', 'YYYY-MM-DD'), TO_DATE('2025-07-10', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Walk-in Cooler', TO_DATE('2025-06-20', 'YYYY-MM-DD'), TO_DATE('2025-09-20', 'YYYY-MM-DD'));
INSERT INTO MB_EQUIPMENT (equipment_name, last_maintenance_date, next_maintenance_date) VALUES ('Coffee Machine', TO_DATE('2025-02-15', 'YYYY-MM-DD'), TO_DATE('2025-07-15', 'YYYY-MM-DD'));

-- Data for MB_TRAINING_MODULES
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('Food Safety and Hygiene', 4, TO_DATE('2024-11-01', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('Customer Service Excellence', 3, TO_DATE('2025-01-15', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('Kitchen Operations', 6, TO_DATE('2024-12-01', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('POS System Training', 2, TO_DATE('2025-03-01', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('New Menu Item Introduction', 1.5, TO_DATE('2025-06-10', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('Inventory Management', 3.5, TO_DATE('2024-10-20', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('Handling Customer Complaints', 2.5, TO_DATE('2025-02-05', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('Delivery Protocol', 1.0, TO_DATE('2025-04-15', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('First Aid Basics', 4.0, TO_DATE('2024-09-01', 'YYYY-MM-DD'));
INSERT INTO MB_TRAINING_MODULES (module_name, duration_hours, last_updated) VALUES ('Waste Reduction Practices', 2.0, TO_DATE('2025-05-20', 'YYYY-MM-DD'));

-- Data for MB_MARKETING_CAMPAIGNS
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('Merdeka Day Special', 50000.00, TO_DATE('2025-08-01', 'YYYY-MM-DD'), TO_DATE('2025-09-16', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('Back to School Deals', 30000.00, TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-02-28', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('Digital Drive Thru Launch', 75000.00, TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-07-31', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('Hari Raya Ad Campaign', 60000.00, TO_DATE('2025-04-01', 'YYYY-MM-DD'), TO_DATE('2025-05-15', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('Year-End Holiday Promotion', 80000.00, TO_DATE('2025-11-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('New Product Launch: Fish Burger', 45000.00, TO_DATE('2025-07-01', 'YYYY-MM-DD'), TO_DATE('2025-08-31', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('Community Outreach Program', 20000.00, TO_DATE('2025-03-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('Ramadan Buka Puasa Set', 55000.00, TO_DATE('2025-03-15', 'YYYY-MM-DD'), TO_DATE('2025-04-05', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('School Holiday Promotion', 35000.00, TO_DATE('2025-05-20', 'YYYY-MM-DD'), TO_DATE('2025-06-30', 'YYYY-MM-DD'));
INSERT INTO MB_MARKETING_CAMPAIGNS (campaign_name, budget, start_date, end_date) VALUES ('Anniversary Mega Sale', 70000.00, TO_DATE('2025-10-01', 'YYYY-MM-DD'), TO_DATE('2025-10-31', 'YYYY-MM-DD'));

-- Data for MB_LOYALTY_PROGRAMS
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('MB Rewards Club', 0.10, 'Earn points with every purchase for exclusive discounts.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('Golden Tier Membership', 0.15, 'Premium tier with accelerated points and special benefits.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('Student Saver Card', 0.08, 'Discount program for registered students.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('Family Fun Pass', 0.12, 'Designed for families, offering bonus points on family meals.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('Birthday Treat Program', 0.05, 'Special points and offers during your birthday month.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('Corporate Perks Program', 0.07, 'Exclusive discounts for corporate partners.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('Delivery Rewards', 0.09, 'Earn extra points on delivery orders.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('Early Bird Special', 0.06, 'Bonus points for morning purchases.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('Weekend Warrior Points', 0.11, 'Increased points for weekend transactions.');
INSERT INTO MB_LOYALTY_PROGRAMS (program_name, points_per_dollar, description) VALUES ('New Member Welcome Bonus', 0.20, 'One-time bonus points for new sign-ups.');

-- Data for MB_PACKAGING_MATERIALS
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Chicken Box (Large)', 0.50);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Paper Bag (Medium)', 0.20);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Drink Cup (32oz)', 0.15);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Burger Wrapper', 0.08);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Sauce Sachet', 0.03);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Fries Pouch (Small)', 0.10);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Coleslaw Container', 0.12);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Cutlery Set (Plastic)', 0.07);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Napkin Dispenser Refill', 0.05);
INSERT INTO MB_PACKAGING_MATERIALS (material_name, cost_per_unit) VALUES ('Delivery Carrier Bag', 0.30);

-- Data for MB_RECIPES
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Marrybrown Fried Chicken', 20, 10);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Coleslaw', 10, 8);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Mashed Potato Gravy', 15, 12);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Nasi Lemak Sambal', 25, 6);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Fish Fillet Batter', 10, 15);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Chicken Burger Patty', 18, 12);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Cheesy Wedges Sauce', 8, 20);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Chicken Porridge Base', 30, 8);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Twister Fries Seasoning', 5, 25);
INSERT INTO MB_RECIPES (recipe_name, preparation_time_minutes, servings) VALUES ('Ice Cream Sundae Topping Prep', 5, 10);

-- Data for MB_WASTE_RECORDS
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-06-29', 'YYYY-MM-DD'), 'Fried Chicken', 5, 'Overcooked');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-06-29', 'YYYY-MM-DD'), 'Lettuce', 2, 'Spoiled');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-06-30', 'YYYY-MM-DD'), 'Fries', 3, 'Dropped');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-07-01', 'YYYY-MM-DD'), 'Burger Buns', 4, 'Expired');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-07-01', 'YYYY-MM-DD'), 'Soda', 1, 'Spilled');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-07-02', 'YYYY-MM-DD'), 'Fish Fillet', 2, 'Damaged Packaging');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-07-02', 'YYYY-MM-DD'), 'Mashed Potato', 1, 'Batch Error');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-07-03', 'YYYY-MM-DD'), 'Nasi Lemak Rice', 3, 'Leftover');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-07-03', 'YYYY-MM-DD'), 'Cooking Oil', 5, 'Contaminated');
INSERT INTO MB_WASTE_RECORDS (record_date, item_wasted, quantity_wasted, reason) VALUES (TO_DATE('2025-07-04', 'YYYY-MM-DD'), 'Ice Cream', 1, 'Equipment Malfunction');

-- Data for MB_UTILITIES
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Electricity', TO_DATE('2025-06-01', 'YYYY-MM-DD'), 1500.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Water', TO_DATE('2025-06-01', 'YYYY-MM-DD'), 350.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Gas', TO_DATE('2025-06-01', 'YYYY-MM-DD'), 800.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Internet', TO_DATE('2025-06-01', 'YYYY-MM-DD'), 250.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Waste Management', TO_DATE('2025-06-01', 'YYYY-MM-DD'), 180.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Electricity', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1450.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Water', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 320.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Gas', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 750.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Internet', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 250.00);
INSERT INTO MB_UTILITIES (utility_type, billing_month, amount_paid) VALUES ('Waste Management', TO_DATE('2025-05-01', 'YYYY-MM-DD'), 170.00);