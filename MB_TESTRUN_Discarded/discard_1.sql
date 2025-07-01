-- MAIN TABLES

-- kitchen, has no fk, no 19
CREATE TABLE Kitchen (
  kitchen_id NUMBER PRIMARY KEY,
  facility_code VARCHAR2(20) PRIMARY KEY,
  kitchen_type VARCHAR2(50) NOT NULL,
  equipment_list CLOB,
  capacity_rating VARCHAR2(50),
  safety_compliance VARCHAR2(50) NOT NULL DEFAULT 'Compliant' CHECK (safety_compliance IN ('Compliant', 'Non-compliant', 'Under review')),
  last_inspection_date DATE,
  temperature_control VARCHAR2(50) NOT NULL,
  waste_management VARCHAR2(255),
  hygiene_level VARCHAR2(50) NOT NULL CHECK (hygiene_level IN ('Excellent', 'Good', 'Average', 'Needs improvement'))
);

- outlet, has 1 fk, no 1
CREATE TABLE Outlet (
  outlet_id NUMBER PRIMARY KEY,
  franchise_code VARCHAR2(20) PRIMARY KEY,
  outlet_name VARCHAR2(100) NOT NULL UNIQUE,
  location_address VARCHAR2(255) NOT NULL,
  operating_hours VARCHAR2(255) NOT NULL,
  seating_capacity NUMBER NOT NULL CHECK (seating_capacity >= 0),
  opening_date DATE NOT NULL,
  contact_number VARCHAR2(15) NOT NULL UNIQUE,
  area_size_sqft NUMBER(10,2) CHECK (area_size_sqft >=0),
  rental_amount NUMBER(10,2) CHECK (rental_amount >=0)
  -- person_id added later using ALTER TABLE
);

-- document (superclass), have 3 fk, no 9
CREATE TABLE Document (
  document_id NUMBER PRIMARY KEY,
  file_reference VARCHAR2(100) PRIMARY KEY,
  document_title VARCHAR2(255) NOT NULL,
  creation_date DATE NOT NULL,
  document_type VARCHAR2(50) NOT NULL CHECK (document_type IN ('Certificate','Timesheet','Salary Slip','Contract','Policy','Report','Other')),
  file_format VARCHAR2(20),
  file_size_mb NUMBER(10,2) CHECK (file_size_mb >= 0 OR fize_size_mb IS NULL),
  access_level VARCHAR2(50) NOT NULL DEFAULT 'Restricted' CHECK (access_level IN ('Public', 'Internal', 'Restricted', 'Confidential')),
  expiry_date DATE CHECK (expiry_date >= creation_date OR expiry_date IS NULL),
  digital_signature CLOB
  -- FK Outlet and Employee will be added later
  -- btw how tf am i supposed to refer employeeid to employee_id
);

-- menu, has 4 fk, no 13
CREATE TABLE Menu (
  menu_id NUMBER PRIMARY KEY,
  item_code VARCHAR2(20) PRIMARY KEY,
  item_name VARCHAR2(100) NOT NULL UNIQUE,
  category_type VARCHAR2(50) NOT NULL,
  selling_price NUMBER(8,2) NOT NULL CHECK (selling_price >= 0),
  preparation_time_minutes NUMBER CHECK (preparation_time_minutes >= 0),
  calorie_count NUMBER,
  spice_level VARCHAR2(20) CHECK (spice_level IN (‘Mild’, ‘Hot’, ‘Extra hot’, ‘None’)),
  availability_status VARCHAR2(20) NOT NULL DEFAULT 'Available' CHECK (availability_status IN ('Available', 'Limited', 'Out of stock', 'Seasonal')),
  promotional_tag VARCHAR2(100)
  -- FK Outlet, Customer, Product, Employee will be added later
);

-- product, has 9 fk, no 14
CREATE TABLE Product (
  product_id NUMBER PRIMARY KEY,
  barcode VARCHAR2(50) PRIMARY KEY,
  product_name VARCHAR2(100) NOT NULL UNIQUE,
  brand_name VARCHAR2(100),
  unit_measure VARCHAR2(20) NOT NULL,
  shelf_life_days NUMBER NOT NULL CHECK (shelf_life_days >= 0),
  storage_temperature VARCHAR2(50) NOT NULL,
  origin_country VARCHAR2(50),
  quality_grade VARCHAR2(50),
  packaging_type VARCHAR2(50) NOT NULL
  -- FK Outlet, Employee, Customer, Menu, Feedback, Ingredient, Kitchen, Order, Transaction will be added later
);

-- training, has 2 fk, no 8
CREATE TABLE Training (
  training_id NUMBER PRIMARY KEY,
  session_code VARCHAR2(50) PRIMARY KEY,
  training_title VARCHAR2(255) NOT NULL,
  trainer_name VARCHAR2(100) NOT NULL,
  training_duration_hours NUMBER(5, 2) NOT NULL CHECK (training_duration_hours > 0),
  training_date DATE NOT NULL,
  training_venue VARCHAR2(255) NOT NULL,
  max_participants NUMBER CHECK (max_participants > 0),
  training_cost NUMBER(10, 2) NOT NULL CHECK (training_cost >= 0),
  certification_provided VARCHAR2(3) DEFAULT 'No' NOT NULL CHECK (certification_provided IN ('Yes', 'No'))
  -- FK Employee and Certificate will be added later
);

-- certificate, has 3 fk, no 10
CREATE TABLE Certificate (
  certificate_id NUMBER PRIMARY KEY,
  cert_number VARCHAR2(100) PRIMARY KEY,
  certificate_name VARCHAR2(255) NOT NULL,
  issuing_authority VARCHAR2(255) NOT NULL,
  issue_date DATE NOT NULL,
  validity_period NUMBER CHECK (validity_period > 0 OR validity_period IS NULL),
  renewal_required VARCHAR2(3) DEFAULT 'No' NOT NULL CHECK (renewal_required IN ('Yes', 'No')),
  compliance_type VARCHAR2(100),
  verification_status VARCHAR2(50) DEFAULT 'Verified' NOT NULL CHECK (verification_status IN ('Verified', 'Pending', 'Expired', 'Revoked')),
  associated_standard VARCHAR2(255),
  document_id NUMBER,
  file_reference VARCHAR2(100),
  training_id NUMBER

  FOREIGN KEY (document_id) REFERENCES Document(document_id),
  FOREIGN KEY (file_reference) REFERENCES Document(file_reference),
  FOREIGN KEY (training_id) REFERENCES Training(training_id)
);

-- inventory, has 4 fk, no 21
CREATE TABLE Inventory (
  inventory_id NUMBER PRIMARY KEY,
  stock_code VARCHAR2(50) PRIMARY KEY,
  current_stock_level NUMBER(10, 2) NOT NULL CHECK (current_stock_level >= 0),
  min_threshold NUMBER(10, 2) NOT NULL CHECK (min_threshold >= 0),
  max_capacity NUMBER(10, 2) CHECK ((max_capacity >= 0 AND max_capacity >= current_stock_level) OR max_capacity IS NULL),
  reorder_point NUMBER(10, 2) NOT NULL CHECK (reorder_point >= 0),
  storage_location VARCHAR2(100) NOT NULL,
  last_stocktake_date DATE NOT NULL,
  value_at_cost NUMBER(12, 2) NOT NULL CHECK (value_at_cost >= 0),
  turnover_rate NUMBER(5, 2) CHECK (turnover_rate >= 0)
  -- FK Kitchen, Ingredient, Outlet, Employee will be added later
);

-- ingredient, has 10 fk, no 20
CREATE TABLE Ingredient (
  ingredient_id NUMBER PRIMARY KEY NOT NULL UNIQUE,
  recipe_code VARCHAR2(20) NOT NULL UNIQUE,
  ingredient_name VARCHAR2(100) NOT NULL UNIQUE,
  nutritional_value CLOB,
  allergen_information VARCHAR2(255),
  sourcing_location VARCHAR2(100),
  freshness_indicator VARCHAR2(50),
  usage_quantity NUMBER,
  replacement_frequency NUMBER,
  cost_per_unit NUMBER(8, 4) NOT NULL CHECK (cost_per_unit >= 0)
  -- FK to Kitchen, Product, Inventory, Logistic, Order, Supplier, Transaction, Outlet, Employee, Feedback will be added later
);

CREATE TABLE Logistic (
  logistic_id NUMBER PRIMARY KEY,
  shipment_code VARCHAR2(50) UNIQUE NOT NULL,
  delivery_route VARCHAR2(100),
  transport_method VARCHAR2(50),
  delivery_schedule_desc VARCHAR2(200),
  tracking_number VARCHAR2(100),
  delivery_status VARCHAR2(50) 
    CHECK (delivery_status IN ('Pending', 'In Transit', 'Delivered', 'Delayed', 'Cancelled')),
  freight_cost NUMBER CHECK (freight_cost >= 0),
  delivery_partner VARCHAR2(100),
  transport_type VARCHAR2(50)
  -- FK to Ingredient, Outlet, Transaction, Feedback, Supplier, Manager will be added later
);

CREATE TABLE Feedback (
  feedback_id NUMBER PRIMARY KEY,
  reference_number VARCHAR2(50) UNIQUE NOT NULL,
  feedback_type VARCHAR2(50),
  rating_score NUMBER CHECK (rating_score BETWEEN 1 AND 5),
  feedback_text CLOB,
  submission_date DATE,
  response_status VARCHAR2(50),
  follow_up_required CHAR(1) CHECK (follow_up_required IN ('Y', 'N')),
  complaint_category VARCHAR2(100),
  resolution_time_days NUMBER CHECK (resolution_time_days >= 0)
  -- FK to Outlet, Logistic, Person, Ingredient, Product, Transaction will be added later
);

CREATE TABLE Person (
  person_id NUMBER PRIMARY KEY,
  ic_number VARCHAR2(20) UNIQUE NOT NULL,
  first_name VARCHAR2(50) NOT NULL,
  last_name VARCHAR2(50) NOT NULL,
  date_of_birth DATE,
  gender VARCHAR2(10),
  phone_number VARCHAR2(20),
  email_address VARCHAR2(100),
  emergency_contact VARCHAR2(100),
  nationality VARCHAR2(50),
  outlet_id NUMBER,
  -- transaction_id, order_id, feedback_id will be added later

  FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id)
);

CREATE TABLE Customer (
  customer_id NUMBER PRIMARY KEY,
  membership_number VARCHAR2(50) UNIQUE NOT NULL,
  registration_date DATE,
  loyalty_points NUMBER DEFAULT 0 CHECK (loyalty_points >= 0),
  preferred_outlet VARCHAR2(100),
  dietary_preferences VARCHAR2(200),
  birthday_month VARCHAR2(20),
  communication_preference VARCHAR2(50),
  last_visit_date DATE,
  total_spent NUMBER DEFAULT 0 CHECK (total_spent >= 0),
  person_id NUMBER NOT NULL,
  ic_number VARCHAR2(20) NOT NULL,
  -- menu_id, product_id will be added later

  FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE Supplier (
  supplier_id NUMBER PRIMARY KEY,
  vendor_code VARCHAR2(50) UNIQUE NOT NULL,
  company_name VARCHAR2(100) NOT NULL,
  business_registration VARCHAR2(50),
  payment_terms VARCHAR2(100),
  delivery_lead_time NUMBER,
  quality_certification VARCHAR2(100),
  contract_start_date DATE,
  contract_end_date DATE,
  credit_limit NUMBER CHECK (credit_limit >= 0),
  person_id NUMBER NOT NULL,
  ic_number VARCHAR2(20) NOT NULL,
  -- ingredient_id, logistic_id will be added later

  FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE Employee (
  employee_id NUMBER PRIMARY KEY,
  staff_number VARCHAR2(50) UNIQUE NOT NULL,
  hire_date DATE,
  base_salary NUMBER CHECK (base_salary >= 0),
  performance_rating NUMBER CHECK (performance_rating BETWEEN 0 AND 5),
  years_of_experience NUMBER CHECK (years_of_experience >= 0),
  reporting_manager NUMBER, -- FK to another Employee (self-ref)
  person_id NUMBER NOT NULL,
  ic_number VARCHAR2(20) NOT NULL,
  -- training_id, ingredient_id, kitchen_id, document_id, menu_id, inventory_id, product_id will be added later

  FOREIGN KEY (person_id) REFERENCES Person(person_id)
  -- reporting_manager FK will be added after table is created
);

-- manager, has 3 fk, no 7
CREATE TABLE Manager (
  manager_id NUMBER PRIMARY KEY,
  management_code VARCHAR2(50) UNIQUE NOT NULL,
  management_level VARCHAR2(50),
  team_size NUMBER CHECK (team_size >= 0),
  budget_authority NUMBER CHECK (budget_authority >= 0),
  kpi_target VARCHAR2(100),
  bonus_eligibility CHAR(1) CHECK (bonus_eligibility IN ('Y', 'N')),
  leadership_training VARCHAR2(100),
  decision_making_power VARCHAR2(100),
  regional_responsibility VARCHAR2(100),
  employee_id NUMBER NOT NULL,
  staff_number VARCHAR2(50) NOT NULL,
  -- logistic_id will be added later

  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Staff (
  staff_id NUMBER PRIMARY KEY,
  worker_code VARCHAR2(50) UNIQUE NOT NULL,
  skill_level VARCHAR2(50),
  hourly_rate NUMBER CHECK (hourly_rate >= 0),
  flexible_hours CHAR(1) CHECK (flexible_hours IN ('Y', 'N')),
  uniform_size VARCHAR2(10),
  equipment_assigned VARCHAR2(100),
  safety_training_date DATE,
  performance_incentive NUMBER CHECK (performance_incentive >= 0),
  cross_training_areas VARCHAR2(200),
  employee_id NUMBER NOT NULL,
  staff_number VARCHAR2(50) NOT NULL,

  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Salary (
  salary_id NUMBER PRIMARY KEY,
  payroll_number VARCHAR2(50) UNIQUE NOT NULL,
  basic_pay NUMBER CHECK (basic_pay >= 0),
  allowances NUMBER DEFAULT 0 CHECK (allowances >= 0),
  deductions NUMBER DEFAULT 0 CHECK (deductions >= 0),
  net_pay NUMBER GENERATED ALWAYS AS 
    (basic_pay + allowances - deductions) VIRTUAL,
  pay_date DATE,
  tax_deducted NUMBER CHECK (tax_deducted >= 0),
  epf_contribution NUMBER CHECK (epf_contribution >= 0),
  socso_contribution NUMBER CHECK (socso_contribution >= 0),
  document_id NUMBER,
  file_reference VARCHAR2(100),
  
  FOREIGN KEY (document_id) REFERENCES Document(document_id)
  -- FK to file_reference will be added if needed later
);

CREATE TABLE Timesheet (
  timesheet_id NUMBER PRIMARY KEY,
  period_code VARCHAR2(50) UNIQUE NOT NULL,
  work_period VARCHAR2(100),
  total_hours_worked NUMBER CHECK (total_hours_worked >= 0),
  overtime_hours NUMBER DEFAULT 0 CHECK (overtime_hours >= 0),
  break_duration NUMBER DEFAULT 0 CHECK (break_duration >= 0),
  approval_status VARCHAR2(50) 
    CHECK (approval_status IN ('Approved', 'Pending', 'Rejected')),
  submission_date DATE,
  approved_by VARCHAR2(100),
  pay_period VARCHAR2(50),
  document_id NUMBER,
  file_reference VARCHAR2(100),
  
  FOREIGN KEY (document_id) REFERENCES Document(document_id)
);

CREATE TABLE "Order" (
  order_id NUMBER PRIMARY KEY,
  receipt_number VARCHAR2(50) UNIQUE NOT NULL,
  order_datetime TIMESTAMP,
  order_type VARCHAR2(50),
  total_amount NUMBER CHECK (total_amount >= 0),
  order_status VARCHAR2(50)
    CHECK (order_status IN ('Pending', 'Confirmed', 'Preparing', 'Delivered', 'Cancelled')),
  delivery_address VARCHAR2(200),
  special_instructions VARCHAR2(200),
  estimated_delivery_time INTERVAL DAY TO SECOND,
  discount_applied NUMBER DEFAULT 0 CHECK (discount_applied >= 0)
  -- FK to Ingredient, Transaction, Product, Person will be added later
);

CREATE TABLE "Transaction" (
  transaction_id NUMBER PRIMARY KEY,
  reference_id VARCHAR2(50) UNIQUE NOT NULL,
  transaction_date DATE,
  transaction_amount NUMBER CHECK (transaction_amount >= 0),
  currency_type VARCHAR2(10),
  exchange_rate NUMBER DEFAULT 1 CHECK (exchange_rate > 0),
  transaction_status VARCHAR2(50)
    CHECK (transaction_status IN ('Pending', 'Completed', 'Failed', 'Refunded')),
  processing_fee NUMBER DEFAULT 0 CHECK (processing_fee >= 0),
  authorization_code VARCHAR2(50),
  reconciliation_status VARCHAR2(50)
  -- FK to Order, Product, Person, Ingredient, Logistic, Feedback will be added later
);

CREATE TABLE Payment (
  payment_id NUMBER PRIMARY KEY,
  receipt_id VARCHAR2(50) UNIQUE NOT NULL,
  amount NUMBER NOT NULL CHECK (amount >= 0),
  payment_time TIMESTAMP,
  transaction_type VARCHAR2(50),
  payment_method VARCHAR2(50),
  cash_or_card VARCHAR2(10) 
    CHECK (cash_or_card IN ('Cash', 'Card')),
  payment_status VARCHAR2(50)
    CHECK (payment_status IN ('Successful', 'Failed', 'Pending', 'Refunded')),
  change_given NUMBER DEFAULT 0 CHECK (change_given >= 0),
  currency_paid VARCHAR2(10),
  transaction_id NUMBER,
  reference_id VARCHAR2(50),
  
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id)
);

CREATE TABLE Purchase (
  purchase_id NUMBER PRIMARY KEY,
  po_number VARCHAR2(50) UNIQUE NOT NULL,
  purchase_date DATE,
  purchase_amount NUMBER CHECK (purchase_amount >= 0),
  vendor_name VARCHAR2(100),
  approval_status VARCHAR2(50)
    CHECK (approval_status IN ('Approved', 'Pending', 'Rejected')),
  delivery_date DATE,
  invoice_number VARCHAR2(50),
  payment_due_date DATE,
  tax_amount NUMBER DEFAULT 0 CHECK (tax_amount >= 0),
  transaction_id NUMBER,
  reference_id VARCHAR2(50),
  
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id)
);


-- THIS IS THE EXPLOSION TEBURU 

CREATE TABLE FranchisePerson (
  outlet_id NUMBER,
  person_id NUMBER,
  PRIMARY KEY (outlet_id, person_id),
  FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

CREATE TABLE PersonOrder (
  person_id NUMBER,
  order_id NUMBER,
  PRIMARY KEY (person_id, order_id),
  FOREIGN KEY (person_id) REFERENCES Person(person_id),
  FOREIGN KEY (order_id) REFERENCES "Order"(order_id)
);

CREATE TABLE PersonTransaction (
  person_id NUMBER,
  transaction_id NUMBER,
  PRIMARY KEY (person_id, transaction_id),
  FOREIGN KEY (person_id) REFERENCES Person(person_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id)
);

CREATE TABLE PersonFeedback (
  person_id NUMBER,
  feedback_id NUMBER,
  PRIMARY KEY (person_id, feedback_id),
  FOREIGN KEY (person_id) REFERENCES Person(person_id),
  FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

CREATE TABLE PersonPerson (
  person_id_a NUMBER,
  person_id_b NUMBER,
  PRIMARY KEY (person_id_a, person_id_b),
  FOREIGN KEY (person_id_a) REFERENCES Person(person_id),
  FOREIGN KEY (person_id_b) REFERENCES Person(person_id)
);

CREATE TABLE CustomerMenu (
  customer_id NUMBER,
  menu_id NUMBER,
  PRIMARY KEY (customer_id, menu_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

CREATE TABLE CustomerProduct (
  customer_id NUMBER,
  product_id NUMBER,
  PRIMARY KEY (customer_id, product_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE SupplierLogistic (
  supplier_id NUMBER,
  logistic_id NUMBER,
  PRIMARY KEY (supplier_id, logistic_id),
  FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
  FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id)
);

CREATE TABLE SupplierIngredient (
  supplier_id NUMBER,
  ingredient_id NUMBER,
  PRIMARY KEY (supplier_id, ingredient_id),
  FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE EmployeeEmployee (
  employee_id_a NUMBER,
  employee_id_b NUMBER,
  PRIMARY KEY (employee_id_a, employee_id_b),
  FOREIGN KEY (employee_id_a) REFERENCES Employee(employee_id),
  FOREIGN KEY (employee_id_b) REFERENCES Employee(employee_id)
);

CREATE TABLE EmployeeInventory (
  employee_id NUMBER,
  inventory_id NUMBER,
  PRIMARY KEY (employee_id, inventory_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id)
);

CREATE TABLE EmployeeMenu (
  employee_id NUMBER,
  menu_id NUMBER,
  PRIMARY KEY (employee_id, menu_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

CREATE TABLE EmployeeProduct (
  employee_id NUMBER,
  product_id NUMBER,
  PRIMARY KEY (employee_id, product_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE EmployeeIngredient (
  employee_id NUMBER,
  ingredient_id NUMBER,
  PRIMARY KEY (employee_id, ingredient_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE EmployeeDocument (
  employee_id NUMBER,
  document_id NUMBER,
  PRIMARY KEY (employee_id, document_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (document_id) REFERENCES Document(document_id)
);

CREATE TABLE EmployeeTraining (
  employee_id NUMBER,
  training_id NUMBER,
  PRIMARY KEY (employee_id, training_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (training_id) REFERENCES Training(training_id)
);

CREATE TABLE TrainingCertificate (
  training_id NUMBER,
  certificate_id NUMBER,
  PRIMARY KEY (training_id, certificate_id),
  FOREIGN KEY (training_id) REFERENCES Training(training_id),
  FOREIGN KEY (certificate_id) REFERENCES Certificate(certificate_id)
);

CREATE TABLE DocumentDocument (
  document_id_a NUMBER,
  document_id_b NUMBER,
  PRIMARY KEY (document_id_a, document_id_b),
  FOREIGN KEY (document_id_a) REFERENCES Document(document_id),
  FOREIGN KEY (document_id_b) REFERENCES Document(document_id)
);

CREATE TABLE ProductTransaction (
  product_id NUMBER,
  transaction_id NUMBER,
  PRIMARY KEY (product_id, transaction_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id)
);

CREATE TABLE ProductOrder (
  product_id NUMBER,
  order_id NUMBER,
  PRIMARY KEY (product_id, order_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (order_id) REFERENCES "Order"(order_id)
);

CREATE TABLE ProductMenu (
  product_id NUMBER,
  menu_id NUMBER,
  PRIMARY KEY (product_id, menu_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

CREATE TABLE ProductIngredient (
  product_id NUMBER,
  ingredient_id NUMBER,
  PRIMARY KEY (product_id, ingredient_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE ProductFeedback (
  product_id NUMBER,
  feedback_id NUMBER,
  PRIMARY KEY (product_id, feedback_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

CREATE TABLE OrderTransaction (
  order_id NUMBER,
  transaction_id NUMBER,
  PRIMARY KEY (order_id, transaction_id),
  FOREIGN KEY (order_id) REFERENCES "Order"(order_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id)
);

CREATE TABLE OrderIngredient (
  order_id NUMBER,
  ingredient_id NUMBER,
  PRIMARY KEY (order_id, ingredient_id),
  FOREIGN KEY (order_id) REFERENCES "Order"(order_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE TransactionTransaction (
  transaction_id_a NUMBER,
  transaction_id_b NUMBER,
  PRIMARY KEY (transaction_id_a, transaction_id_b),
  FOREIGN KEY (transaction_id_a) REFERENCES "Transaction"(transaction_id),
  FOREIGN KEY (transaction_id_b) REFERENCES "Transaction"(transaction_id)
);

CREATE TABLE TransactionIngredient (
  transaction_id NUMBER,
  ingredient_id NUMBER,
  PRIMARY KEY (transaction_id, ingredient_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE TransactionLogistic (
  transaction_id NUMBER,
  logistic_id NUMBER,
  PRIMARY KEY (transaction_id, logistic_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id),
  FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id)
);

CREATE TABLE TransactionFeedback (
  transaction_id NUMBER,
  feedback_id NUMBER,
  PRIMARY KEY (transaction_id, feedback_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id),
  FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

CREATE TABLE LogisticIngredient (
  logistic_id NUMBER,
  ingredient_id NUMBER,
  PRIMARY KEY (logistic_id, ingredient_id),
  FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE LogisticFeedback (
  logistic_id NUMBER,
  feedback_id NUMBER,
  PRIMARY KEY (logistic_id, feedback_id),
  FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
  FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

CREATE TABLE FeedbackIngredient (
  feedback_id NUMBER,
  ingredient_id NUMBER,
  PRIMARY KEY (feedback_id, ingredient_id),
  FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE IngredientInventory (
  ingredient_id NUMBER,
  inventory_id NUMBER,
  PRIMARY KEY (ingredient_id, inventory_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
  FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id)
);

-- SINI TEMPAT ALTER TABLE SBB KALAU LETAK KAT MAIN TABLES NNTI REFERRAL ERROR

-- Person
ALTER TABLE Person ADD (
  FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id),
  FOREIGN KEY (order_id) REFERENCES "Order"(order_id),
  FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

-- Customer
ALTER TABLE Customer ADD (
  FOREIGN KEY (person_id) REFERENCES Person(person_id),
  FOREIGN KEY (ic_number) REFERENCES Person(ic_number),
  FOREIGN KEY (menu_id) REFERENCES Menu(menu_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Supplier
ALTER TABLE Supplier ADD (
  FOREIGN KEY (person_id) REFERENCES Person(person_id),
  FOREIGN KEY (ic_number) REFERENCES Person(ic_number),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
  FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id)
);

-- Employee
ALTER TABLE Employee ADD (
  FOREIGN KEY (person_id) REFERENCES Person(person_id),
  FOREIGN KEY (ic_number) REFERENCES Person(ic_number),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id), -- e.g., supervisor
  FOREIGN KEY (training_id) REFERENCES Training(training_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
  FOREIGN KEY (kitchen_id) REFERENCES Kitchen(kitchen_id),
  FOREIGN KEY (document_id) REFERENCES Document(document_id),
  FOREIGN KEY (menu_id) REFERENCES Menu(menu_id),
  FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Staff
ALTER TABLE Staff ADD (
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (staff_number) REFERENCES Employee(staff_number)
);

-- Manager
ALTER TABLE Manager ADD (
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (staff_number) REFERENCES Employee(staff_number),
  FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id)
);

-- Training
ALTER TABLE Training ADD (
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (certificate_id) REFERENCES Certificate(certificate_id)
);

-- Document
ALTER TABLE Document ADD (
  FOREIGN KEY (document_id) REFERENCES Document(document_id), -- self-reference
  FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Certificate
ALTER TABLE Certificate ADD (
  FOREIGN KEY (document_id) REFERENCES Document(document_id),
  FOREIGN KEY (file_reference) REFERENCES Document(file_reference),
  FOREIGN KEY (training_id) REFERENCES Training(training_id)
);

-- Salary
ALTER TABLE Salary ADD (
  FOREIGN KEY (document_id) REFERENCES Document(document_id),
  FOREIGN KEY (file_reference) REFERENCES Document(file_reference)
);

-- Timesheet
ALTER TABLE Timesheet ADD (
  FOREIGN KEY (document_id) REFERENCES Document(document_id),
  FOREIGN KEY (file_reference) REFERENCES Document(file_reference)
);

-- Menu
ALTER TABLE Menu ADD (
  FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Product
ALTER TABLE Product ADD (
  FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (menu_id) REFERENCES Menu(menu_id),
  FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
  FOREIGN KEY (kitchen_id) REFERENCES Kitchen(kitchen_id),
  FOREIGN KEY (order_id) REFERENCES "Order"(order_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id)
);

-- Order
ALTER TABLE "Order" ADD (
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
  FOREIGN KEY (transaction_id) REFERENCES "Transaction"(transaction_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (person_id) REFERENCES Person(person_id)
);

-- Transaction
ALTER TABLE "Transaction" ADD (
  FOREIGN KEY (order_id) REFERENCES "Order"(order_id),
  FOREIGN KEY (person_id) REFERENCES Person(person_id),
  FOREIGN KEY (product_id) REFERENCES Product(product_id),
  FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
  FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
  FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

-- Purchase
ALTER TABLE Purchase ADD (
  FOREIGN KEY (reference_id) REFERENCES "Transaction"(reference_id)
);
