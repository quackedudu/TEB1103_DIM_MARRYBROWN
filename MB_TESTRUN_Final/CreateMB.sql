

-- Create Person Table (Superclass)
CREATE TABLE Person (
 person_id VARCHAR2(10),
 ic_number VARCHAR2(20),
 first_name VARCHAR2(15),
 last_name VARCHAR2(15),
 date_of_birth DATE,
 gender VARCHAR2(10),
 phone_number VARCHAR2(20),
 email_address VARCHAR2(30),
 emergency_contact VARCHAR2(20),
 nationality VARCHAR2(15),
 PRIMARY KEY (person_id, ic_number),
 UNIQUE (person_id)
);

-- Create Training Table
CREATE TABLE Training (
 training_id VARCHAR2(10),
 session_code VARCHAR2(15),
 training_title VARCHAR2(40),
 trainer_name VARCHAR2(30),
 training_duration_hours NUMBER,
 training_date DATE,
 training_venue VARCHAR2(30),
 max_participants NUMBER,
 training_cost NUMBER,
 certification_provided VARCHAR2(20),
 PRIMARY KEY (training_id, session_code),
 UNIQUE (training_id)
);

-- Create Order Table
CREATE TABLE OrderTBL (
 order_id VARCHAR2(20),
 receipt_number VARCHAR2(20),
 order_datetime TIMESTAMP,
 order_type VARCHAR2(20),
 total_amount NUMBER,
 order_status VARCHAR2(20),
 delivery_address VARCHAR2(50),
 special_instructions VARCHAR2(30),
 estimated_delivery_time VARCHAR2(40),
 discount_applied NUMBER,
 PRIMARY KEY (order_id, receipt_number),
 UNIQUE (order_id)
);

-- Create Transaction Table
CREATE TABLE Transaction (
 transaction_id VARCHAR2(20),
 reference_id VARCHAR2(20),
 transaction_date DATE,
 transaction_amount NUMBER,
 currency_type VARCHAR2(20),
 exchange_rate NUMBER,
 transaction_status VARCHAR2(20),
 processing_fee NUMBER,
 authorization_code VARCHAR2(25),
 reconciliation_status VARCHAR2(25),
 PRIMARY KEY (transaction_id, reference_id),
 UNIQUE (transaction_id)
);

-- Create Kitchen Table
CREATE TABLE Kitchen (
 kitchen_id VARCHAR2(10),
 facility_code VARCHAR2(15),
 kitchen_type VARCHAR2(30),
 equipment_list VARCHAR2(50),
 capacity_rating VARCHAR2(20),
 safety_compliance VARCHAR2(20),
 last_inspection_date DATE,
 temperature_control VARCHAR2(20),
 waste_management VARCHAR2(20),
 hygiene_level VARCHAR2(15),
 PRIMARY KEY (kitchen_id, facility_code),
 UNIQUE (kitchen_id)
);

-- Create Outlet Table
CREATE TABLE Outlet (
 outlet_id VARCHAR2(10),
 franchise_code VARCHAR2(10),
 outlet_name VARCHAR2(30),
 location_address VARCHAR2(50),
 operating_hours VARCHAR2(25),
 seating_capacity NUMBER,
 opening_date DATE,
 contact_number VARCHAR2(20),
 area_size_sqft NUMBER,
 rental_amount NUMBER,
 Kitchen_id VARCHAR2(10),
 PRIMARY KEY (outlet_id, franchise_code),
 UNIQUE (outlet_id),
 FOREIGN KEY (kitchen_id) REFERENCES Kitchen(kitchen_id)
);

-- Create Customer Table (Subclass of Person)
CREATE TABLE Customer (
 customer_id VARCHAR2(10),
 membership_number VARCHAR2(15),
 registration_date DATE,
 loyalty_points NUMBER,
 preferred_outlet VARCHAR2(30),
 dietary_preferences VARCHAR2(30),
 birthday_month VARCHAR2(10),
 communication_preference VARCHAR2(15),
 last_visit_date DATE,
 total_spent NUMBER,
 person_id VARCHAR2(10), 
 UNIQUE (customer_id),
 FOREIGN KEY (person_id) REFERENCES Person(person_id),
 PRIMARY KEY (customer_id, membership_number)
);

-- Create Supplier Table (Subclass of Person)
CREATE TABLE Supplier (
 supplier_id VARCHAR2(10),
 vendor_code VARCHAR2(15),
 company_name VARCHAR2(50),
 business_registration VARCHAR2(20),
 payment_terms VARCHAR2(15),
 delivery_lead_time VARCHAR2(20),
 quality_certification VARCHAR2(30),
 contract_start_date DATE,
 contract_end_date DATE,
 credit_limit NUMBER,
 person_id VARCHAR2(10),
 UNIQUE (supplier_id),
 FOREIGN KEY (person_id) REFERENCES Person(person_id),
 PRIMARY KEY (supplier_id, vendor_code)
);

-- Create Employee Table (Superclass)
CREATE TABLE Employee (
 employee_id VARCHAR2(10),
 staff_number VARCHAR2(15),
 hire_date DATE,
 base_salary NUMBER,
 performance_rating NUMBER,
 years_of_experience NUMBER,
 reporting_manager VARCHAR2(30),
 person_id VARCHAR2(10), 
 UNIQUE (employee_id),
 PRIMARY KEY (employee_id, staff_number),
 FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

-- Create Staff Table (Subclass of Employee)
CREATE TABLE Staff (
 staff_id VARCHAR2(10),
 worker_code VARCHAR2(10),
 skill_level VARCHAR2(15),
 hourly_rate NUMBER,
 flexible_hours VARCHAR2(15),
 uniform_size VARCHAR2(15),
 equipment_assigned VARCHAR2(30),
 safety_training_date DATE,
 performance_incentive NUMBER,
 cross_training_areas VARCHAR2(35),
 employee_id VARCHAR2(10),
 UNIQUE (staff_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 PRIMARY KEY (staff_id, worker_code)
);

-- Create Manager Table (Subclass of Employee)
CREATE TABLE Manager (
 manager_id VARCHAR2(10),
 management_code VARCHAR2(10),
 management_level VARCHAR2(25),
 team_size NUMBER,
 budget_authority NUMBER,
 kpi_target NUMBER,
 bonus_eligibility VARCHAR2(20),
 leadership_training DATE,
 decision_making_power VARCHAR2(25),
 regional_responsibility VARCHAR2(35),
 employee_id VARCHAR2(10),
 UNIQUE (manager_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 PRIMARY KEY (manager_id, management_code)
);

-- Create Document Table (Superclass)
CREATE TABLE Document (
 document_id VARCHAR2(15),
 file_reference VARCHAR2(20),
 document_title VARCHAR2(50),
 creation_date DATE,
 document_type VARCHAR2(20),
 file_format VARCHAR2(15),
 file_size_mb NUMBER,
 access_level VARCHAR2(20),
 expiry_date DATE,
 digital_signature VARCHAR2(20),
 UNIQUE (document_id),
 PRIMARY KEY (document_id, file_reference)
);

-- Create Certificate Table (Subclass of Document)
CREATE TABLE Certificate (
 certificate_id VARCHAR2(20),
 cert_number VARCHAR2(25),
 certificate_name VARCHAR2(50),
 issuing_authority VARCHAR2(35),
 issue_date DATE,
 validity_period VARCHAR2(10),
 renewal_required VARCHAR2(20),
 compliance_type VARCHAR2(45),
 verification_status VARCHAR2(25),
 associated_standard VARCHAR2(35),
 document_id VARCHAR2(15),
 UNIQUE (certificate_id),
 FOREIGN KEY (document_id) REFERENCES Document(document_id),
 PRIMARY KEY (certificate_id, cert_number)
);

-- Create Salary Table (Subclass of Document)
CREATE TABLE Salary (
 salary_id VARCHAR2(15),
 payroll_number VARCHAR2(20),
 basic_pay NUMBER,
 allowances NUMBER,
 deductions NUMBER,
 net_pay NUMBER,
 pay_date DATE,
 tax_deducted NUMBER,
 epf_contribution NUMBER,
 socso_contribution NUMBER,
 document_id VARCHAR2(20),
 UNIQUE (salary_id),
 FOREIGN KEY (document_id) REFERENCES Document(document_id),
 PRIMARY KEY (salary_id, payroll_number)
);

-- Create Timesheet Table (Subclass of Document)
CREATE TABLE Timesheet (
 timesheet_id VARCHAR2(15),
 period_code VARCHAR2(15),
 work_period VARCHAR2(25),
 total_hours_worked NUMBER,
 overtime_hours NUMBER,
 break_duration NUMBER,
 approval_status VARCHAR2(20),
 submission_date DATE,
 approved_by VARCHAR2(30),
 pay_period VARCHAR2(30),
 document_id VARCHAR2(20),
 UNIQUE (timesheet_id),
 FOREIGN KEY (document_id) REFERENCES Document(document_id),
 PRIMARY KEY (timesheet_id, period_code)
);

-- Create Menu Table
CREATE TABLE Menu (
 menu_id VARCHAR2(10),
 item_code VARCHAR2(15),
 item_name VARCHAR2(30),
 category_type VARCHAR2(20),
 selling_price NUMBER,
 preparation_time_minutes NUMBER,
 calorie_count NUMBER,
 spice_level VARCHAR2(15),
 availability_status VARCHAR2(25),
 promotional_tag VARCHAR2(25),
 outlet_id VARCHAR2(10),
 UNIQUE (menu_id),
 PRIMARY KEY (menu_id, item_code),
 FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id)
);

-- Create Payment Table (Subclass of Transaction)
CREATE TABLE Payment (
 payment_id VARCHAR2(20),
 receipt_id VARCHAR2(20),
 amount NUMBER,
 payment_time TIMESTAMP,
 transaction_type VARCHAR2(10),
 payment_method VARCHAR2(30),
 cash_or_card VARCHAR2(15),
 payment_status VARCHAR2(20),
 change_given NUMBER,
 currency_paid VARCHAR2(15),
 transaction_id VARCHAR2(20),
 UNIQUE (payment_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
 PRIMARY KEY (payment_id, receipt_id)
);

-- Create Purchase Table (Subclass of Transaction)
CREATE TABLE Purchase (
 purchase_id VARCHAR2(20),
 po_number VARCHAR2(20),
 purchase_date DATE,
 purchase_amount NUMBER,
 vendor_name VARCHAR2(40),
 approval_status VARCHAR2(20),
 delivery_date DATE,
 invoice_number VARCHAR2(20),
 payment_due_date DATE,
 tax_amount NUMBER,
 transaction_id VARCHAR2(20),
 UNIQUE (purchase_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
 PRIMARY KEY (purchase_id, po_number)
);

-- Create Feedback Table
CREATE TABLE Feedback (
 feedback_id VARCHAR2(20),
 reference_number VARCHAR2(10),
 feedback_type VARCHAR2(20),
 rating_score NUMBER,
 feedback_text VARCHAR2(70),
 submission_date DATE,
 response_status VARCHAR2(20),
 follow_up_required VARCHAR2(5),
 complaint_category VARCHAR2(30),
 resolution_time_days NUMBER,
 outlet_id VARCHAR2(20),
 UNIQUE (feedback_id),
 PRIMARY KEY (feedback_id, reference_number),
 FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id)
);



-- Create Product Table
CREATE TABLE Product (
 product_id VARCHAR2(15),
 barcode VARCHAR2(20),
 product_name VARCHAR2(30),
 brand_name VARCHAR2(20),
 unit_measure VARCHAR2(20),
 shelf_life_days NUMBER,
 storage_temperature VARCHAR2(30),
 origin_country VARCHAR2(20),
 quality_grade VARCHAR2(15),
 packaging_type VARCHAR2(25),
 outlet_id VARCHAR2(10),
 kitchen_id VARCHAR2(10),
 UNIQUE (product_id),
 PRIMARY KEY (product_id, barcode),
 FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
 FOREIGN KEY (kitchen_id) REFERENCES Kitchen(kitchen_id)
);

-- Create Ingredient Table
CREATE TABLE Ingredient (
 ingredient_id VARCHAR2(20),
 recipe_code VARCHAR2(20),
 ingredient_name VARCHAR2(35),
 nutritional_value VARCHAR2(35),
 allergen_information VARCHAR2(20),
 sourcing_location VARCHAR2(35),
 freshness_indicator VARCHAR2(20),
 usage_quantity VARCHAR2(10),
 replacement_frequency VARCHAR2(30),
 cost_per_unit NUMBER,
 kitchen_id VARCHAR2(10),
 outlet_id VARCHAR2(10),
 UNIQUE (ingredient_id),
 PRIMARY KEY (ingredient_id, recipe_code),
 FOREIGN KEY (kitchen_id) REFERENCES Kitchen(kitchen_id),
 FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id)
);

-- Create Inventory Table
CREATE TABLE Inventory (
 inventory_id VARCHAR2(20),
 stock_code VARCHAR2(20),
 current_stock_level VARCHAR2(20),
 min_threshold VARCHAR2(20),
 max_capacity VARCHAR2(20),
 reorder_point VARCHAR2(20),
 storage_location VARCHAR2(35),
 last_stocktake_date DATE,
 value_at_cost NUMBER,
 turnover_rate NUMBER,
 kitchen_id VARCHAR2(10),
 outlet_id VARCHAR2(10),
 UNIQUE (inventory_id),
 PRIMARY KEY (inventory_id, stock_code),
 FOREIGN KEY (kitchen_id) REFERENCES Kitchen(kitchen_id),
 FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id)
);

-- Create Logistic Table
CREATE TABLE Logistic (
 logistic_id VARCHAR2(15),
 shipment_code VARCHAR2(20),
 delivery_route VARCHAR2(40),
 transport_method VARCHAR2(20),
 delivery_schedule_desc TIMESTAMP,
 tracking_number VARCHAR2(20),
 delivery_status VARCHAR2(25),
 freight_cost NUMBER,
 delivery_partner VARCHAR2(35),
 transport_type VARCHAR2(20),
 outlet_id VARCHAR2(10),
 manager_id VARCHAR2(10),
 UNIQUE (logistic_id),
 PRIMARY KEY (logistic_id, shipment_code),
 FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
 FOREIGN KEY (manager_id) REFERENCES Manager(manager_id)
);

-- -----------------------
-- EXPLOSION TABLE     ----
-- ------------------------

-- Table to link Outlets and Persons (many-to-many)
CREATE TABLE OutletPerson (
 outlet_id VARCHAR2(20),
 person_id VARCHAR2(20),
 PRIMARY KEY (outlet_id, person_id),
 FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
 FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

-- Table to link Outlets and Document (many-to-many)
CREATE TABLE OutletDocument (
 outlet_id VARCHAR2(20),
 document_id VARCHAR2(20),
 PRIMARY KEY (outlet_id, document_id),
 FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
 FOREIGN KEY (document_id) REFERENCES Document(document_id)
);


-- Table to link Persons and OrderTBL
CREATE TABLE PersonOrder (
 person_id VARCHAR2(20),
 order_id VARCHAR2(20),
 PRIMARY KEY (person_id, order_id),
 FOREIGN KEY (person_id) REFERENCES Person(person_id),
 FOREIGN KEY (order_id) REFERENCES OrderTBL(order_id)
);

-- Table to link Persons and Transactions
CREATE TABLE PersonTransaction (
 person_id VARCHAR2(20),
 transaction_id VARCHAR2(20),
 PRIMARY KEY (person_id, transaction_id),
 FOREIGN KEY (person_id) REFERENCES Person(person_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id)
);

-- Table to link Persons and Feedback
CREATE TABLE PersonFeedback (
 person_id VARCHAR2(20),
 feedback_id VARCHAR2(20),
 PRIMARY KEY (person_id, feedback_id),
 FOREIGN KEY (person_id) REFERENCES Person(person_id),
 FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);


-- Table to link Customers and Menus
CREATE TABLE CustomerMenu (
 customer_id VARCHAR2(20),
 menu_id VARCHAR2(20),
 PRIMARY KEY (customer_id, menu_id),
 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
 FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

-- Table to link Customers and Products
CREATE TABLE CustomerProduct (
 customer_id VARCHAR2(20),
 product_id VARCHAR2(20),
 PRIMARY KEY (customer_id, product_id),
 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
 FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Table to link Suppliers and Logistics
CREATE TABLE SupplierLogistic (
 supplier_id VARCHAR2(20),
 logistic_id VARCHAR2(20),
 PRIMARY KEY (supplier_id, logistic_id),
 FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
 FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id)
);

-- Table to link Suppliers and Ingredients
CREATE TABLE SupplierIngredient (
 supplier_id VARCHAR2(20),
 ingredient_id VARCHAR2(20),
 PRIMARY KEY (supplier_id, ingredient_id),
 FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
 FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);


-- Table to link Employees and Inventories
CREATE TABLE EmployeeInventory (
 employee_id VARCHAR2(20),
 inventory_id VARCHAR2(20),
 PRIMARY KEY (employee_id, inventory_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id)
);

-- Table to link Employees and Menus
CREATE TABLE EmployeeMenu (
 employee_id VARCHAR2(20),
 menu_id VARCHAR2(20),
 PRIMARY KEY (employee_id, menu_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

-- Table to link Employees and Products
CREATE TABLE EmployeeProduct (
 employee_id VARCHAR2(20),
 product_id VARCHAR2(20),
 PRIMARY KEY (employee_id, product_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Table to link Employees and Ingredients
CREATE TABLE EmployeeIngredient (
 employee_id VARCHAR2(20),
 ingredient_id VARCHAR2(20),
 PRIMARY KEY (employee_id, ingredient_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Table to link Employees and Documents
CREATE TABLE EmployeeDocument (
 employee_id VARCHAR2(20),
 document_id VARCHAR2(20),
 PRIMARY KEY (employee_id, document_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 FOREIGN KEY (document_id) REFERENCES Document(document_id)
);

-- Table to link Employees and Trainings
CREATE TABLE EmployeeTraining (
 employee_id VARCHAR2(20),
 training_id VARCHAR2(20),
 PRIMARY KEY (employee_id, training_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 FOREIGN KEY (training_id) REFERENCES Training(training_id)
);

-- Table to link Employees and Kitchen
CREATE TABLE EmployeeKitchen (
 employee_id VARCHAR2(20),
 kitchen_id VARCHAR2(20),
 PRIMARY KEY (employee_id, kitchen_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 FOREIGN KEY (kitchen_id) REFERENCES Kitchen(kitchen_id)
);

-- Table to link Trainings and Certificates
CREATE TABLE TrainingCertificate (
 training_id VARCHAR2(20),
 certificate_id VARCHAR2(20),
 PRIMARY KEY (training_id, certificate_id),
 FOREIGN KEY (training_id) REFERENCES Training(training_id),
 FOREIGN KEY (certificate_id) REFERENCES Certificate(certificate_id)
);


-- Table to link Products and Transactions
CREATE TABLE ProductTransaction (
 product_id VARCHAR2(20),
 transaction_id VARCHAR2(20),
 PRIMARY KEY (product_id, transaction_id),
 FOREIGN KEY (product_id) REFERENCES Product(product_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id)
);

-- Table to link Products and Orders
CREATE TABLE ProductOrder (
 product_id VARCHAR2(20),
 order_id VARCHAR2(20),
 PRIMARY KEY (product_id, order_id),
 FOREIGN KEY (product_id) REFERENCES Product(product_id),
 FOREIGN KEY (order_id) REFERENCES OrderTBL(order_id)
);

-- Table to link Products and Menus
CREATE TABLE ProductMenu (
 product_id VARCHAR2(20),
 menu_id VARCHAR2(20),
 PRIMARY KEY (product_id, menu_id),
 FOREIGN KEY (product_id) REFERENCES Product(product_id),
 FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

-- Table to link Products and Ingredients
CREATE TABLE ProductIngredient (
 product_id VARCHAR2(20),
 ingredient_id VARCHAR2(20),
 PRIMARY KEY (product_id, ingredient_id),
 FOREIGN KEY (product_id) REFERENCES Product(product_id),
 FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Table to link Products and Feedback
CREATE TABLE ProductFeedback (
 product_id VARCHAR2(20),
 feedback_id VARCHAR2(20),
 PRIMARY KEY (product_id, feedback_id),
 FOREIGN KEY (product_id) REFERENCES Product(product_id),
 FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

-- Table to link Orders and Transactions
CREATE TABLE OrderTransaction (
 order_id VARCHAR2(20),
 transaction_id VARCHAR2(20),
 PRIMARY KEY (order_id, transaction_id),
 FOREIGN KEY (order_id) REFERENCES OrderTBL(order_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id)
);

-- Table to link Orders and Ingredients
CREATE TABLE OrderIngredient (
 order_id VARCHAR2(20),
 ingredient_id VARCHAR2(20),
 PRIMARY KEY (order_id, ingredient_id),
 FOREIGN KEY (order_id) REFERENCES OrderTBL(order_id),
 FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);


-- Table to link Transactions and Ingredients
CREATE TABLE TransactionIngredient (
 transaction_id VARCHAR2(20),
 ingredient_id VARCHAR2(20),
 PRIMARY KEY (transaction_id, ingredient_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
 FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Table to link Transactions and Logistics
CREATE TABLE TransactionLogistic (
 transaction_id VARCHAR2(20),
 logistic_id VARCHAR2(20),
 PRIMARY KEY (transaction_id, logistic_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
 FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id)
);

-- Table to link Transactions and Feedback
CREATE TABLE TransactionFeedback (
 transaction_id VARCHAR2(20),
 feedback_id VARCHAR2(20),
 PRIMARY KEY (transaction_id, feedback_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
 FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

-- Table to link Logistics and Ingredients
CREATE TABLE LogisticIngredient (
 logistic_id VARCHAR2(20),
 ingredient_id VARCHAR2(20),
 PRIMARY KEY (logistic_id, ingredient_id),
 FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
 FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Table to link Logistics and Feedback
CREATE TABLE LogisticFeedback (
 logistic_id VARCHAR2(20),
 feedback_id VARCHAR2(20),
 PRIMARY KEY (logistic_id, feedback_id),
 FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
 FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

-- Table to link Feedback and Ingredients
CREATE TABLE FeedbackIngredient (
 feedback_id VARCHAR2(20),
 ingredient_id VARCHAR2(20),
 PRIMARY KEY (feedback_id, ingredient_id),
 FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id),
 FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Table to link Ingredients and Inventories
CREATE TABLE IngredientInventory (
 ingredient_id VARCHAR2(20),
 inventory_id VARCHAR2(20),
 PRIMARY KEY (ingredient_id, inventory_id),
 FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
 FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id)
);

-- Table to represent a recursive relationship between Persons
CREATE TABLE PersonPerson (
 person_id VARCHAR2(20),
 related_person_id VARCHAR2(20),
 PRIMARY KEY (person_id, related_person_id),
 FOREIGN KEY (person_id) REFERENCES Person(person_id),
 FOREIGN KEY (related_person_id) REFERENCES Person(person_id)
);

-- Table to represent a recursive relationship between Employees
CREATE TABLE EmployeeEmployee (
 employee_id VARCHAR2(20),
 related_employee_id VARCHAR2(20),
 PRIMARY KEY (employee_id, related_employee_id),
 FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
 FOREIGN KEY (related_employee_id) REFERENCES Employee(employee_id)
);

-- Table to represent a recursive relationship between Documents
CREATE TABLE DocumentDocument (
 document_id VARCHAR2(20),
 related_document_id VARCHAR2(20),
 PRIMARY KEY (document_id, related_document_id),
 FOREIGN KEY (document_id) REFERENCES Document(document_id),
 FOREIGN KEY (related_document_id) REFERENCES Document(document_id)
);

-- Table to represent a recursive relationship between Transactions
CREATE TABLE TransactionTransaction (
 transaction_id VARCHAR2(20),
 related_transaction_id VARCHAR2(20),
 PRIMARY KEY (transaction_id, related_transaction_id),
 FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
 FOREIGN KEY (related_transaction_id) REFERENCES Transaction(transaction_id)
);


