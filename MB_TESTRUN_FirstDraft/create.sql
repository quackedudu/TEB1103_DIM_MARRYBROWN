-- ENTITY TABLES

-- Table Person (Superclass)
CREATE TABLE Person (
  person_id VARCHAR2(20) NOT NULL,
  ic_number VARCHAR2(20) NOT NULL,
  first_name VARCHAR2(50) NOT NULL,
  last_name VARCHAR2(50) NOT NULL,
  date_of_birth DATE NOT NULL,
  gender VARCHAR2(10) NOT NULL,
  phone_number VARCHAR2(20),
  email_address VARCHAR2(100),
  emergency_contact VARCHAR2(20),
  nationality VARCHAR2(50),
  CONSTRAINT pk_Person PRIMARY KEY (person_id),
  CONSTRAINT uq_Person_ic_number UNIQUE (ic_number),
  CONSTRAINT uq_Person_email UNIQUE (email_address),
  CONSTRAINT ck_Person_gender CHECK (gender IN ('M', 'F'))
);

-- Table Outlet
CREATE TABLE Outlet (
  outlet_id VARCHAR2(20) NOT NULL,
  franchise_code VARCHAR2(20) NOT NULL,
  outlet_name VARCHAR2(100) NOT NULL,
  location_address VARCHAR2(255),
  operating_hours VARCHAR2(50),
  seating_capacity NUMBER(4,0) NOT NULL,
  opening_date DATE NOT NULL,
  contact_number VARCHAR2(20),
  area_size_sqft NUMBER(10, 2),
  rental_amount NUMBER(12, 2),
  person_id VARCHAR2(20),
  CONSTRAINT pk_Outlet PRIMARY KEY (outlet_id),
  CONSTRAINT uq_Outlet_franchise_code UNIQUE (franchise_code),
  CONSTRAINT fk_Outlet_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
  CONSTRAINT ck_Outlet_seating_capacity CHECK (seating_capacity > 0),
  CONSTRAINT ck_Outlet_area_size_sqft CHECK (area_size_sqft > 0),
  CONSTRAINT ck_Outlet_rental_amount CHECK (rental_amount >= 0)
);

-- Table Customer (subclass of Person)
CREATE TABLE Customer (
  customer_id VARCHAR2(20) NOT NULL,
  membership_number VARCHAR2(20) NOT NULL,
  registration_date DATE NOT NULL,
  loyalty_points NUMBER(10, 0) DEFAULT 0 NOT NULL,
  preferred_outlet VARCHAR2(20),
  dietary_preferences VARCHAR2(255),
  birthday_month NUMBER(2, 0),
  communication_preference VARCHAR2(50) NOT NULL,
  last_visit_date DATE,
  total_spent NUMBER(12, 2) DEFAULT 0 NOT NULL,
  person_id VARCHAR2(20) NOT NULL,
  CONSTRAINT pk_Customer PRIMARY KEY (customer_id),
  CONSTRAINT uq_Customer_membership_number UNIQUE (membership_number),
  CONSTRAINT uq_Customer_person_id UNIQUE (person_id),
  CONSTRAINT fk_Customer_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
  CONSTRAINT fk_Customer_Outlet FOREIGN KEY (preferred_outlet) REFERENCES Outlet(outlet_id),
  CONSTRAINT ck_Customer_loyalty_points CHECK (loyalty_points >= 0),
  CONSTRAINT ck_Customer_birthday_month CHECK (birthday_month BETWEEN 1 AND 12),
  CONSTRAINT ck_Customer_comm_preference CHECK (communication_preference IN ('WhatsApp', 'Email', 'Facebook', 'Instagram')),
  CONSTRAINT ck_Customer_total_spent CHECK (total_spent >= 0)
);

-- Table Supplier (subclass of Person)
CREATE TABLE Supplier (
  supplier_id VARCHAR2(20) NOT NULL,
  vendor_code VARCHAR2(20) NOT NULL,
  company_name VARCHAR2(100) NOT NULL,
  business_registration VARCHAR2(20) NOT NULL,
  payment_terms VARCHAR2(50) NOT NULL,
  delivery_lead_time NUMBER(3, 0) NOT NULL,
  quality_certification VARCHAR2(255),
  contract_start_date DATE NOT NULL,
  contract_end_date DATE,
  credit_limit NUMBER(12, 2),
  person_id VARCHAR2(20) NOT NULL,
  CONSTRAINT pk_Supplier PRIMARY KEY (supplier_id),
  CONSTRAINT uq_Supplier_vendor_code UNIQUE (vendor_code),
  CONSTRAINT uq_Supplier_business_registration UNIQUE (business_registration),
  CONSTRAINT uq_Supplier_person_id UNIQUE (person_id),
  CONSTRAINT fk_Supplier_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
  CONSTRAINT ck_Supplier_delivery_lead_time CHECK (delivery_lead_time >= 0),
  CONSTRAINT ck_Supplier_credit_limit CHECK (credit_limit >= 0)
);

-- Table Employee (Superclass)
CREATE TABLE Employee (
  employee_id VARCHAR2(20) NOT NULL,
  staff_number VARCHAR2(20) NOT NULL,
  hire_date DATE NOT NULL,
  base_salary NUMBER(10, 2) NOT NULL,
  performance_rating NUMBER(2, 1),
  years_of_experience NUMBER(3, 0),
  reporting_manager VARCHAR2(20),
  person_id VARCHAR2(20) NOT NULL,
  CONSTRAINT pk_Employee PRIMARY KEY (employee_id),
  CONSTRAINT uq_Employee_staff_number UNIQUE (staff_number),
  CONSTRAINT uq_Employee_person_id UNIQUE (person_id),
  CONSTRAINT fk_Employee_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
  CONSTRAINT fk_Employee_Manager FOREIGN KEY (reporting_manager) REFERENCES Employee(employee_id),
  CONSTRAINT ck_Employee_base_salary CHECK (base_salary >= 0),
  CONSTRAINT ck_Employee_perf_rating CHECK (performance_rating BETWEEN 0.0 AND 5.0),
  CONSTRAINT ck_Employee_yoe CHECK (years_of_experience >= 0)
);

-- Table Staff (subclass of Employee)
CREATE TABLE Staff (
  staff_id VARCHAR2(20) NOT NULL,
  worker_code VARCHAR2(20) NOT NULL,
  skill_level VARCHAR2(50) NOT NULL,
  hourly_rate NUMBER(5, 2) NOT NULL,
  flexible_hours VARCHAR2(3) NOT NULL,
  uniform_size VARCHAR2(10),
  equipment_assigned VARCHAR2(255),
  safety_training_date DATE,
  performance_incentive NUMBER(10, 2),
  cross_training_areas VARCHAR2(255),
  employee_id VARCHAR2(20) NOT NULL,
  CONSTRAINT pk_Staff PRIMARY KEY (staff_id),
  CONSTRAINT uq_Staff_worker_code UNIQUE (worker_code),
  CONSTRAINT uq_Staff_employee_id UNIQUE (employee_id),
  CONSTRAINT fk_Staff_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  CONSTRAINT ck_Staff_skill_level CHECK (skill_level IN ('Beginner', 'Intermediate', 'Advanced')),
  CONSTRAINT ck_Staff_hourly_rate CHECK (hourly_rate >= 0),
  CONSTRAINT ck_Staff_flexible_hours CHECK (flexible_hours IN ('Yes', 'No')),
  CONSTRAINT ck_Staff_perf_incentive CHECK (performance_incentive >= 0)
);

-- Table Manager (subclass of Employee)
CREATE TABLE Manager (
  manager_id VARCHAR2(20) NOT NULL,
  management_code VARCHAR2(20) NOT NULL,
  management_level VARCHAR2(50) NOT NULL,
  team_size NUMBER(4, 0),
  budget_authority NUMBER(12, 2),
  kpi_target NUMBER(5, 2),
  bonus_eligibility VARCHAR2(3) NOT NULL,
  leadership_training DATE,
  decision_making_power VARCHAR2(255),
  regional_responsibility VARCHAR2(255),
  employee_id VARCHAR2(20) NOT NULL,
  CONSTRAINT pk_Manager PRIMARY KEY (manager_id),
  CONSTRAINT uq_Manager_management_code UNIQUE (management_code),
  CONSTRAINT uq_Manager_employee_id UNIQUE (employee_id),
  CONSTRAINT fk_Manager_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  CONSTRAINT ck_Manager_team_size CHECK (team_size >= 0),
  CONSTRAINT ck_Manager_budget_authority CHECK (budget_authority >= 0),
  CONSTRAINT ck_Manager_kpi_target CHECK (kpi_target BETWEEN 0 AND 100),
  CONSTRAINT ck_Manager_bonus_eligibility CHECK (bonus_eligibility IN ('Yes', 'No'))
);

-- Table Training
CREATE TABLE Training (
  training_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  session_code VARCHAR2(50) NOT NULL,
  training_title VARCHAR2(255) NOT NULL,
  trainer_name VARCHAR2(100) NOT NULL,
  training_duration_hours NUMBER(5, 2) NOT NULL,
  training_date DATE NOT NULL,
  training_venue VARCHAR2(255) NOT NULL,
  max_participants NUMBER,
  training_cost NUMBER(10, 2) NOT NULL,
  certification_provided VARCHAR2(3) DEFAULT 'No' NOT NULL,
  CONSTRAINT uq_Training_session_code UNIQUE (session_code),
  CONSTRAINT ck_Training_duration_hours CHECK (training_duration_hours > 0),
  CONSTRAINT ck_Training_max_participants CHECK (max_participants > 0),
  CONSTRAINT ck_Training_training_cost CHECK (training_cost >= 0),
  CONSTRAINT ck_Training_cert_provided CHECK (certification_provided IN ('Yes', 'No'))
);

-- Table Document (Superclass)
CREATE TABLE Document (
  document_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  file_reference VARCHAR2(100) NOT NULL,
  document_title VARCHAR2(255) NOT NULL,
  creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  document_type VARCHAR2(50) NOT NULL,
  file_format VARCHAR2(20),
  file_size_mb NUMBER(10, 2),
  access_level VARCHAR2(50) DEFAULT 'Restricted' NOT NULL,
  expiry_date DATE,
  digital_signature CLOB,
  employee_id VARCHAR2(20),
  outlet_id VARCHAR2(20),
  CONSTRAINT uq_Document_file_reference UNIQUE (file_reference),
  CONSTRAINT fk_Document_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  CONSTRAINT fk_Document_Outlet FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  CONSTRAINT ck_Document_doc_type CHECK (document_type IN ('Certificate', 'Timesheet', 'Salary Slip', 'Contract', 'Policy', 'Report', 'Other')),
  CONSTRAINT ck_Document_file_size_mb CHECK (file_size_mb >= 0 OR file_size_mb IS NULL),
  CONSTRAINT ck_Document_access_level CHECK (access_level IN ('Public', 'Internal', 'Restricted', 'Confidential')),
  CONSTRAINT ck_Document_expiry_date CHECK (expiry_date >= creation_date OR expiry_date IS NULL)
);

-- Table Certificate (subclass of Document)
CREATE TABLE Certificate (
  certificate_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  cert_number VARCHAR2(100) NOT NULL,
  certificate_name VARCHAR2(255) NOT NULL,
  issuing_authority VARCHAR2(255) NOT NULL,
  issue_date DATE NOT NULL,
  validity_period NUMBER,
  renewal_required VARCHAR2(3) DEFAULT 'No' NOT NULL,
  compliance_type VARCHAR2(100),
  verification_status VARCHAR2(50) DEFAULT 'Verified' NOT NULL,
  associated_standard VARCHAR2(255),
  document_id NUMBER NOT NULL,
  training_id NUMBER,
  CONSTRAINT uq_Certificate_cert_number UNIQUE (cert_number),
  CONSTRAINT uq_Certificate_document_id UNIQUE (document_id),
  CONSTRAINT fk_Certificate_Document FOREIGN KEY (document_id) REFERENCES Document(document_id),
  CONSTRAINT fk_Certificate_Training FOREIGN KEY (training_id) REFERENCES Training(training_id),
  CONSTRAINT ck_Certificate_validity_period CHECK (validity_period > 0 OR validity_period IS NULL),
  CONSTRAINT ck_Certificate_renewal_required CHECK (renewal_required IN ('Yes', 'No')),
  CONSTRAINT ck_Certificate_verif_status CHECK (verification_status IN ('Verified', 'Pending', 'Expired', 'Revoked'))
);

-- Table Salary (subclass of Document)
CREATE TABLE Salary (
  salary_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  payroll_number VARCHAR2(100) NOT NULL,
  basic_pay NUMBER(12, 2) NOT NULL,
  allowances NUMBER(10, 2) DEFAULT 0.00 NOT NULL,
  deductions NUMBER(10, 2) DEFAULT 0.00 NOT NULL,
  net_pay NUMBER(12, 2) NOT NULL,
  pay_date DATE NOT NULL,
  tax_deducted NUMBER(10, 2) DEFAULT 0.00 NOT NULL,
  epf_contribution NUMBER(10, 2) DEFAULT 0.00 NOT NULL,
  socso_contribution NUMBER(10, 2) DEFAULT 0.00 NOT NULL,
  document_id NUMBER NOT NULL,
  CONSTRAINT uq_Salary_payroll_number UNIQUE (payroll_number),
  CONSTRAINT uq_Salary_document_id UNIQUE (document_id),
  CONSTRAINT fk_Salary_Document FOREIGN KEY (document_id) REFERENCES Document(document_id),
  CONSTRAINT ck_Salary_basic_pay CHECK (basic_pay >= 0),
  CONSTRAINT ck_Salary_allowances CHECK (allowances >= 0),
  CONSTRAINT ck_Salary_deductions CHECK (deductions >= 0),
  CONSTRAINT ck_Salary_net_pay CHECK (net_pay = (basic_pay + allowances - deductions - tax_deducted - epf_contribution - socso_contribution)),
  CONSTRAINT ck_Salary_tax_deducted CHECK (tax_deducted >= 0),
  CONSTRAINT ck_Salary_epf_contrib CHECK (epf_contribution >= 0),
  CONSTRAINT ck_Salary_socso_contrib CHECK (socso_contribution >= 0)
);

-- Table Timesheet (subclass of Document)
CREATE TABLE Timesheet (
  timesheet_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  period_code VARCHAR2(50) NOT NULL,
  work_period DATE NOT NULL,
  total_hours_worked NUMBER(6, 2) NOT NULL,
  overtime_hours NUMBER(6, 2) DEFAULT 0.00 NOT NULL,
  break_duration NUMBER(6, 2) DEFAULT 0.00 NOT NULL,
  approval_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL,
  submission_date TIMESTAMP NOT NULL,
  approved_by VARCHAR2(20),
  pay_period DATE NOT NULL,
  document_id NUMBER NOT NULL,
  CONSTRAINT uq_Timesheet_period_code UNIQUE (period_code),
  CONSTRAINT uq_Timesheet_document_id UNIQUE (document_id),
  CONSTRAINT fk_Timesheet_Document FOREIGN KEY (document_id) REFERENCES Document(document_id),
  CONSTRAINT fk_Timesheet_Manager FOREIGN KEY (approved_by) REFERENCES Manager(manager_id),
  CONSTRAINT ck_Timesheet_total_hours CHECK (total_hours_worked >= 0),
  CONSTRAINT ck_Timesheet_overtime_hours CHECK (overtime_hours >= 0),
  CONSTRAINT ck_Timesheet_break_duration CHECK (break_duration >= 0),
  CONSTRAINT ck_Timesheet_approval_status CHECK (approval_status IN ('Pending', 'Approved', 'Rejected'))
);

-- Table Menu
CREATE TABLE Menu (
  menu_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  item_code VARCHAR2(20) NOT NULL,
  item_name VARCHAR2(100) NOT NULL,
  category_type VARCHAR2(50) NOT NULL,
  selling_price NUMBER(8, 2) NOT NULL,
  preparation_time_minutes NUMBER NOT NULL,
  calorie_count NUMBER,
  spice_level VARCHAR2(20),
  availability_status VARCHAR2(20) DEFAULT 'Available' NOT NULL,
  promotional_tag VARCHAR2(100),
  outlet_id VARCHAR2(20) NOT NULL,
  CONSTRAINT uq_Menu_item_code UNIQUE (item_code),
  CONSTRAINT uq_Menu_item_name UNIQUE (item_name),
  CONSTRAINT fk_Menu_Outlet FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  CONSTRAINT ck_Menu_selling_price CHECK (selling_price >= 0),
  CONSTRAINT ck_Menu_prep_time CHECK (preparation_time_minutes >= 0),
  CONSTRAINT ck_Menu_spice_level CHECK (spice_level IN ('Mild', 'Hot', 'Extra hot', 'None')),
  CONSTRAINT ck_Menu_availability CHECK (availability_status IN ('Available', 'Limited', 'Out of stock', 'Seasonal'))
);

-- Table Product
CREATE TABLE Product (
  product_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  barcode VARCHAR2(50) NOT NULL,
  product_name VARCHAR2(100) NOT NULL,
  brand_name VARCHAR2(100),
  unit_measure VARCHAR2(20) NOT NULL,
  shelf_life_days NUMBER NOT NULL,
  storage_temperature VARCHAR2(50) NOT NULL,
  origin_country VARCHAR2(50),
  quality_grade VARCHAR2(50),
  packaging_type VARCHAR2(50) NOT NULL,
  CONSTRAINT uq_Product_barcode UNIQUE (barcode),
  CONSTRAINT uq_Product_product_name UNIQUE (product_name),
  CONSTRAINT ck_Product_shelf_life CHECK (shelf_life_days >= 0)
);

-- Table Kitchen
CREATE TABLE Kitchen (
  kitchen_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  facility_code VARCHAR2(20) NOT NULL,
  kitchen_type VARCHAR2(50) NOT NULL,
  equipment_list CLOB,
  capacity_rating VARCHAR2(50),
  safety_compliance VARCHAR2(50) DEFAULT 'Compliant' NOT NULL,
  last_inspection_date DATE,
  temperature_control VARCHAR2(50) NOT NULL,
  waste_management VARCHAR2(255),
  hygiene_level VARCHAR2(50) NOT NULL,
  outlet_id VARCHAR2(20) NOT NULL,
  CONSTRAINT uq_Kitchen_facility_code UNIQUE (facility_code),
  CONSTRAINT fk_Kitchen_Outlet FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  CONSTRAINT ck_Kitchen_safety_compliance CHECK (safety_compliance IN ('Compliant', 'Non-compliant', 'Under review')),
  CONSTRAINT ck_Kitchen_hygiene_level CHECK (hygiene_level IN ('Excellent', 'Good', 'Average', 'Needs improvement'))
);

-- Table Ingredient
CREATE TABLE Ingredient (
  ingredient_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  recipe_code VARCHAR2(20) NOT NULL,
  ingredient_name VARCHAR2(100) NOT NULL,
  nutritional_value CLOB,
  allergen_information VARCHAR2(255),
  sourcing_location VARCHAR2(100),
  freshness_indicator VARCHAR2(50),
  usage_quantity NUMBER,
  replacement_frequency NUMBER,
  cost_per_unit NUMBER(8, 4) NOT NULL,
  supplier_id VARCHAR2(20) NOT NULL,
  CONSTRAINT uq_Ingredient_recipe_code UNIQUE (recipe_code),
  CONSTRAINT uq_Ingredient_ingredient_name UNIQUE (ingredient_name),
  CONSTRAINT fk_Ingredient_Supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
  CONSTRAINT ck_Ingredient_cost_per_unit CHECK (cost_per_unit >= 0)
);

-- Table Inventory
CREATE TABLE Inventory (
  inventory_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  stock_code VARCHAR2(50) NOT NULL,
  current_stock_level NUMBER(10, 2) NOT NULL,
  min_threshold NUMBER(10, 2) NOT NULL,
  max_capacity NUMBER(10, 2),
  reorder_point NUMBER(10, 2) NOT NULL,
  storage_location VARCHAR2(100) NOT NULL,
  last_stocktake_date DATE NOT NULL,
  value_at_cost NUMBER(12, 2) NOT NULL,
  turnover_rate NUMBER(5, 2),
  ingredient_id NUMBER NOT NULL,
  outlet_id VARCHAR2(20) NOT NULL,
  CONSTRAINT uq_Inventory_stock_code UNIQUE (stock_code),
  CONSTRAINT fk_Inventory_Ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
  CONSTRAINT fk_Inventory_Outlet FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  CONSTRAINT ck_Inventory_current_stock CHECK (current_stock_level >= 0),
  CONSTRAINT ck_Inventory_min_threshold CHECK (min_threshold >= 0),
  CONSTRAINT ck_Inventory_max_capacity CHECK (max_capacity IS NULL OR (max_capacity >= 0 AND max_capacity >= current_stock_level)),
  CONSTRAINT ck_Inventory_reorder_point CHECK (reorder_point >= 0),
  CONSTRAINT ck_Inventory_value_at_cost CHECK (value_at_cost >= 0),
  CONSTRAINT ck_Inventory_turnover_rate CHECK (turnover_rate >= 0)
);

-- Table Transaction (Superclass)
CREATE TABLE Transaction (
  transaction_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  reference_id VARCHAR2(50) NOT NULL,
  transaction_date TIMESTAMP NOT NULL,
  transaction_amount NUMBER(10, 2) NOT NULL,
  currency_type VARCHAR2(10) NOT NULL,
  exchange_rate NUMBER(10, 4),
  transaction_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL,
  processing_fee NUMBER(8, 2) DEFAULT 0.00 NOT NULL,
  authorization_code VARCHAR2(50),
  reconciliation_status VARCHAR2(50) DEFAULT 'Unreconciled' NOT NULL,
  person_id VARCHAR2(20) NOT NULL,
  CONSTRAINT uq_Transaction_reference_id UNIQUE (reference_id),
  CONSTRAINT fk_Transaction_Person FOREIGN KEY (person_id) REFERENCES Person(person_id),
  CONSTRAINT ck_Transaction_amount CHECK (transaction_amount >= 0),
  CONSTRAINT ck_Transaction_currency_type CHECK (currency_type IN ('MYR', 'USD', 'SGD', 'GBP')),
  CONSTRAINT ck_Transaction_status CHECK (transaction_status IN ('Pending', 'Approved', 'Declined', 'Settled', 'Refunded', 'Voided')),
  CONSTRAINT ck_Transaction_processing_fee CHECK (processing_fee >= 0),
  CONSTRAINT ck_Transaction_recon_status CHECK (reconciliation_status IN ('Unreconciled', 'Reconciled', 'Discrepancy'))
);

-- Table CustomerOrder (Formerly "Order")
CREATE TABLE CustomerOrder (
  order_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  receipt_number VARCHAR2(50) NOT NULL,
  order_datetime TIMESTAMP NOT NULL,
  order_type VARCHAR2(50) NOT NULL,
  total_amount NUMBER(10, 2) NOT NULL,
  order_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL,
  delivery_address VARCHAR2(255),
  special_instructions CLOB,
  estimated_delivery_time TIMESTAMP,
  discount_applied NUMBER(8, 2) DEFAULT 0.00,
  transaction_id NUMBER,
  customer_id VARCHAR2(20) NOT NULL,
  outlet_id VARCHAR2(20) NOT NULL,
  CONSTRAINT uq_CustomerOrder_receipt_number UNIQUE (receipt_number),
  CONSTRAINT uq_CustomerOrder_transaction_id UNIQUE (transaction_id),
  CONSTRAINT fk_CustomerOrder_Transaction FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
  CONSTRAINT fk_CustomerOrder_Customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  CONSTRAINT fk_CustomerOrder_Outlet FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  CONSTRAINT ck_CustomerOrder_order_type CHECK (order_type IN ('Dine-in', 'Takeaway', 'Delivery', 'Drive-thru')),
  CONSTRAINT ck_CustomerOrder_total_amount CHECK (total_amount >= 0),
  CONSTRAINT ck_CustomerOrder_order_status CHECK (order_status IN ('Pending', 'Processing', 'Ready for pickup', 'Out for delivery', 'Completed', 'Cancelled', 'Refunded')),
  CONSTRAINT ck_CustomerOrder_est_del_time CHECK (estimated_delivery_time > order_datetime),
  CONSTRAINT ck_CustomerOrder_discount CHECK (discount_applied >= 0)
);

-- Table Payment (subclass of Transaction)
CREATE TABLE Payment (
  payment_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  receipt_id VARCHAR2(50) NOT NULL,
  amount NUMBER(10, 2) NOT NULL,
  payment_time TIMESTAMP NOT NULL,
  transaction_type VARCHAR2(50) NOT NULL,
  payment_method VARCHAR2(50) NOT NULL,
  cash_or_card VARCHAR2(20),
  payment_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL,
  change_given NUMBER(10, 2) DEFAULT 0.00 NOT NULL,
  currency_paid VARCHAR2(10) NOT NULL,
  transaction_id NUMBER NOT NULL,
  CONSTRAINT uq_Payment_receipt_id UNIQUE (receipt_id),
  CONSTRAINT uq_Payment_transaction_id UNIQUE (transaction_id),
  CONSTRAINT fk_Payment_Transaction FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
  CONSTRAINT ck_Payment_amount CHECK (amount >= 0),
  CONSTRAINT ck_Payment_method CHECK (payment_method IN ('Cash', 'Credit card', 'Debit card', 'Mobile pay', 'Voucher')),
  CONSTRAINT ck_Payment_status CHECK (payment_status IN ('Pending', 'Approved', 'Rejected', 'Refunded')),
  CONSTRAINT ck_Payment_change_given CHECK (change_given >= 0),
  CONSTRAINT ck_Payment_currency_paid CHECK (currency_paid IN ('MYR', 'USD', 'SGD'))
);

-- Table Purchase (subclass of Transaction)
CREATE TABLE Purchase (
  purchase_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  po_number VARCHAR2(50) NOT NULL,
  purchase_date DATE NOT NULL,
  purchase_amount NUMBER(12, 2) NOT NULL,
  vendor_name VARCHAR2(255),
  approval_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL,
  delivery_date DATE NOT NULL,
  invoice_number VARCHAR2(100),
  payment_due_date DATE,
  tax_amount NUMBER(10, 2) DEFAULT 0.00 NOT NULL,
  transaction_id NUMBER NOT NULL,
  supplier_id VARCHAR2(20) NOT NULL,
  CONSTRAINT uq_Purchase_po_number UNIQUE (po_number),
  CONSTRAINT uq_Purchase_invoice_number UNIQUE (invoice_number),
  CONSTRAINT uq_Purchase_transaction_id UNIQUE (transaction_id),
  CONSTRAINT fk_Purchase_Transaction FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
  CONSTRAINT fk_Purchase_Supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
  CONSTRAINT ck_Purchase_amount CHECK (purchase_amount >= 0),
  CONSTRAINT ck_Purchase_approval_status CHECK (approval_status IN ('Pending', 'Approved', 'Rejected', 'Completed')),
  CONSTRAINT ck_Purchase_delivery_date CHECK (delivery_date >= purchase_date),
  CONSTRAINT ck_Purchase_payment_due_date CHECK (payment_due_date >= purchase_date),
  CONSTRAINT ck_Purchase_tax_amount CHECK (tax_amount >= 0)
);

-- Table Logistic
CREATE TABLE Logistic (
  logistic_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  shipment_code VARCHAR2(50) NOT NULL,
  delivery_route VARCHAR2(255) NOT NULL,
  transport_method VARCHAR2(50) NOT NULL,
  delivery_schedule_desc VARCHAR2(255) NOT NULL,
  tracking_number VARCHAR2(100),
  delivery_status VARCHAR2(50) DEFAULT 'Scheduled' NOT NULL,
  freight_cost NUMBER(10, 2) NOT NULL,
  delivery_partner VARCHAR2(100),
  transport_type VARCHAR2(50) NOT NULL,
  supplier_id VARCHAR2(20),
  outlet_id VARCHAR2(20),
  manager_id VARCHAR2(20),
  CONSTRAINT uq_Logistic_shipment_code UNIQUE (shipment_code),
  CONSTRAINT uq_Logistic_tracking_number UNIQUE (tracking_number),
  CONSTRAINT fk_Logistic_Supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
  CONSTRAINT fk_Logistic_Outlet FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  CONSTRAINT fk_Logistic_Manager FOREIGN KEY (manager_id) REFERENCES Manager(manager_id),
  CONSTRAINT ck_Logistic_transport_method CHECK (transport_method IN ('Truck', 'Van', 'Motorcycle', 'Air Cargo', 'Sea Freight')),
  CONSTRAINT ck_Logistic_delivery_status CHECK (delivery_status IN ('Scheduled', 'In Transit', 'Delivered', 'Delayed', 'Cancelled', 'Returned')),
  CONSTRAINT ck_Logistic_freight_cost CHECK (freight_cost >= 0),
  CONSTRAINT ck_Logistic_transport_type CHECK (transport_type IN ('Inbound', 'Outbound', 'Inter-Branch'))
);

-- Table Feedback
CREATE TABLE Feedback (
  feedback_id NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  reference_number VARCHAR2(50) NOT NULL,
  feedback_type VARCHAR2(50) NOT NULL,
  rating_score NUMBER(2,0),
  feedback_text CLOB NOT NULL,
  submission_date TIMESTAMP NOT NULL,
  response_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL,
  follow_up_required VARCHAR2(3) DEFAULT 'No' NOT NULL,
  complaint_category VARCHAR2(100),
  resolution_time_days NUMBER,
  customer_id VARCHAR2(20) NOT NULL,
  outlet_id VARCHAR2(20) NOT NULL,
  order_id NUMBER,
  CONSTRAINT uq_Feedback_reference_number UNIQUE (reference_number),
  CONSTRAINT fk_Feedback_Customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  CONSTRAINT fk_Feedback_Outlet FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
  CONSTRAINT fk_Feedback_Order FOREIGN KEY (order_id) REFERENCES CustomerOrder(order_id),
  CONSTRAINT ck_Feedback_feedback_type CHECK (feedback_type IN ('Complaint', 'Compliment', 'Suggestion', 'Inquiry')),
  CONSTRAINT ck_Feedback_rating_score CHECK (rating_score BETWEEN 1 AND 10 OR rating_score IS NULL),
  CONSTRAINT ck_Feedback_response_status CHECK (response_status IN ('Pending', 'In Progress', 'Resolved', 'Closed')),
  CONSTRAINT ck_Feedback_follow_up_req CHECK (follow_up_required IN ('Yes', 'No')),
  CONSTRAINT ck_Feedback_res_time_days CHECK (resolution_time_days >= 0 OR resolution_time_days IS NULL)
);

-- EXPLOSION TABLES

-- Table Order_Item (links CustomerOrder and Menu)
CREATE TABLE Order_Item (
  order_id NUMBER NOT NULL,
  menu_id NUMBER NOT NULL,
  quantity NUMBER(4,0) DEFAULT 1 NOT NULL,
  item_price NUMBER(8,2) NOT NULL,
  CONSTRAINT pk_Order_Item PRIMARY KEY (order_id, menu_id),
  CONSTRAINT fk_OrderItem_Order FOREIGN KEY (order_id) REFERENCES CustomerOrder(order_id),
  CONSTRAINT fk_OrderItem_Menu FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

-- Table Menu_Ingredient (links Menu and Ingredient)
CREATE TABLE Menu_Ingredient (
  menu_id NUMBER NOT NULL,
  ingredient_id NUMBER NOT NULL,
  CONSTRAINT pk_Menu_Ingredient PRIMARY KEY (menu_id, ingredient_id),
  CONSTRAINT fk_MenuIngredient_Menu FOREIGN KEY (menu_id) REFERENCES Menu(menu_id),
  CONSTRAINT fk_MenuIngredient_Ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Table Employee_Training (links Employee and Training)
CREATE TABLE Employee_Training (
  employee_id VARCHAR2(20) NOT NULL,
  training_id NUMBER NOT NULL,
  completion_date DATE,
  score NUMBER,
  CONSTRAINT pk_Employee_Training PRIMARY KEY (employee_id, training_id),
  CONSTRAINT fk_EmpTraining_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
  CONSTRAINT fk_EmpTraining_Training FOREIGN KEY (training_id) REFERENCES Training(training_id)
);

-- Table Purchase_Item (links Purchase and Ingredient)
CREATE TABLE Purchase_Item (
    purchase_id NUMBER NOT NULL,
    ingredient_id NUMBER NOT NULL,
    quantity NUMBER(10,2) NOT NULL,
    unit_cost NUMBER(10,2) NOT NULL,
    CONSTRAINT pk_Purchase_Item PRIMARY KEY (purchase_id, ingredient_id),
    CONSTRAINT fk_PurchaseItem_Purchase FOREIGN KEY (purchase_id) REFERENCES Purchase(purchase_id),
    CONSTRAINT fk_PurchaseItem_Ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Table Logistic_Shipment (links Logistic and Purchase/Order)
CREATE TABLE Logistic_Shipment (
    logistic_id NUMBER NOT NULL,
    purchase_id NUMBER,
    order_id NUMBER,
    CONSTRAINT pk_Logistic_Shipment PRIMARY KEY (logistic_id),
    CONSTRAINT fk_LogShip_Logistic FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
    CONSTRAINT fk_LogShip_Purchase FOREIGN KEY (purchase_id) REFERENCES Purchase(purchase_id),
    CONSTRAINT fk_LogShip_Order FOREIGN KEY (order_id) REFERENCES CustomerOrder(order_id),
    CONSTRAINT ck_LogShip_source CHECK (purchase_id IS NOT NULL OR order_id IS NOT NULL)
);

-- Person_Person
CREATE TABLE Person_Person (
    person_id_1 VARCHAR2(20) NOT NULL,
    person_id_2 VARCHAR2(20) NOT NULL,
    relationship_type VARCHAR2(50), -- e.g., 'Friend', 'Family', 'Colleague', 'Mentor'
    CONSTRAINT pk_Person_Person PRIMARY KEY (person_id_1, person_id_2),
    CONSTRAINT fk_PersonPerson_Person1 FOREIGN KEY (person_id_1) REFERENCES Person(person_id),
    CONSTRAINT fk_PersonPerson_Person2 FOREIGN KEY (person_id_2) REFERENCES Person(person_id),
    CONSTRAINT ck_PersonPerson_diff_ids CHECK (person_id_1 != person_id_2) -- Prevent self-linking if not desired
);

-- Customer_Menu (For tracking customer favorite menu items or preferences)
CREATE TABLE Customer_Menu (
    customer_id VARCHAR2(20) NOT NULL,
    menu_id NUMBER NOT NULL,
    preference_level NUMBER(1,0), -- e.g., 1-5 rating, or simply a flag
    last_interaction_date DATE,
    CONSTRAINT pk_Customer_Menu PRIMARY KEY (customer_id, menu_id),
    CONSTRAINT fk_CustMenu_Customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT fk_CustMenu_Menu FOREIGN KEY (menu_id) REFERENCES Menu(menu_id),
    CONSTRAINT ck_CustMenu_pref_level CHECK (preference_level BETWEEN 1 AND 5)
);

-- Customer_Product
CREATE TABLE Customer_Product (
    customer_id VARCHAR2(20) NOT NULL,
    product_id NUMBER NOT NULL,
    preference_level NUMBER(1,0), -- e.g., 1-5 rating
    last_interaction_date DATE,
    CONSTRAINT pk_Customer_Product PRIMARY KEY (customer_id, product_id),
    CONSTRAINT fk_CustProd_Customer FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    CONSTRAINT fk_CustProd_Product FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT ck_CustProd_pref_level CHECK (preference_level BETWEEN 1 AND 5)
);

-- Supplier_Ingredient
CREATE TABLE Supplier_Ingredient (
    supplier_id VARCHAR2(20) NOT NULL,
    ingredient_id NUMBER NOT NULL,
    supply_agreement_date DATE,
    unit_price NUMBER(8,4), -- Price from this specific supplier for this ingredient
    CONSTRAINT pk_Supplier_Ingredient PRIMARY KEY (supplier_id, ingredient_id),
    CONSTRAINT fk_SuppIng_Supplier FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
    CONSTRAINT fk_SuppIng_Ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Employee_Employee
CREATE TABLE Employee_Employee (
    employee_id_1 VARCHAR2(20) NOT NULL,
    employee_id_2 VARCHAR2(20) NOT NULL,
    relationship_type VARCHAR2(50), -- e.g., 'Collaborates With', 'Peer Mentor', 'Project Team Member'
    CONSTRAINT pk_Employee_Employee PRIMARY KEY (employee_id_1, employee_id_2),
    CONSTRAINT fk_EmpEmp_Employee1 FOREIGN KEY (employee_id_1) REFERENCES Employee(employee_id),
    CONSTRAINT fk_EmpEmp_Employee2 FOREIGN KEY (employee_id_2) REFERENCES Employee(employee_id),
    CONSTRAINT ck_EmpEmp_diff_ids CHECK (employee_id_1 != employee_id_2)
);

-- Employee_Inventory
CREATE TABLE Employee_Inventory (
    employee_id VARCHAR2(20) NOT NULL,
    inventory_id NUMBER NOT NULL,
    assignment_date DATE,
    CONSTRAINT pk_Employee_Inventory PRIMARY KEY (employee_id, inventory_id),
    CONSTRAINT fk_EmpInv_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    CONSTRAINT fk_EmpInv_Inventory FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id)
);

-- Employee_Menu
CREATE TABLE Employee_Menu (
    employee_id VARCHAR2(20) NOT NULL,
    menu_id NUMBER NOT NULL,
    specialization_level VARCHAR2(50), -- e.g., 'Head Chef', 'Prep Cook'
    CONSTRAINT pk_Employee_Menu PRIMARY KEY (employee_id, menu_id),
    CONSTRAINT fk_EmpMenu_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    CONSTRAINT fk_EmpMenu_Menu FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

-- Employee_Product 
CREATE TABLE Employee_Product (
    employee_id VARCHAR2(20) NOT NULL,
    product_id NUMBER NOT NULL,
    responsibility VARCHAR2(100), -- e.g., 'Stocking', 'Sales'
    CONSTRAINT pk_Employee_Product PRIMARY KEY (employee_id, product_id),
    CONSTRAINT fk_EmpProd_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    CONSTRAINT fk_EmpProd_Product FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Employee_Ingredient 
CREATE TABLE Employee_Ingredient (
    employee_id VARCHAR2(20) NOT NULL,
    ingredient_id NUMBER NOT NULL,
    role VARCHAR2(100), -- e.g., 'Quality Control', 'Inventory Management'
    CONSTRAINT pk_Employee_Ingredient PRIMARY KEY (employee_id, ingredient_id),
    CONSTRAINT fk_EmpIng_Employee FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    CONSTRAINT fk_EmpIng_Ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Document_Document
CREATE TABLE Document_Document (
    document_id_1 NUMBER NOT NULL,
    document_id_2 NUMBER NOT NULL,
    relationship_type VARCHAR2(50), -- e.g., 'References', 'Revised By', 'Attachment Of'
    CONSTRAINT pk_Document_Document PRIMARY KEY (document_id_1, document_id_2),
    CONSTRAINT fk_DocDoc_Document1 FOREIGN KEY (document_id_1) REFERENCES Document(document_id),
    CONSTRAINT fk_DocDoc_Document2 FOREIGN KEY (document_id_2) REFERENCES Document(document_id),
    CONSTRAINT ck_DocDoc_diff_ids CHECK (document_id_1 != document_id_2)
);

-- Product_Transaction
-- This would be relevant if 'Product' is like a retail item sold directly.
CREATE TABLE Product_Transaction (
    product_id NUMBER NOT NULL,
    transaction_id NUMBER NOT NULL,
    quantity NUMBER(10,2) NOT NULL,
    price_at_sale NUMBER(10,2) NOT NULL,
    CONSTRAINT pk_Product_Transaction PRIMARY KEY (product_id, transaction_id),
    CONSTRAINT fk_ProdTran_Product FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT fk_ProdTran_Transaction FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id)
);

-- Product_Order
CREATE TABLE Product_Order (
    product_id NUMBER NOT NULL,
    order_id NUMBER NOT NULL,
    quantity NUMBER(10,2) NOT NULL,
    price_at_order NUMBER(10,2) NOT NULL,
    CONSTRAINT pk_Product_Order PRIMARY KEY (product_id, order_id),
    CONSTRAINT fk_ProdOrder_Product FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT fk_ProdOrder_Order FOREIGN KEY (order_id) REFERENCES CustomerOrder(order_id)
);

-- Product_Menu 
CREATE TABLE Product_Menu (
    product_id NUMBER NOT NULL,
    menu_id NUMBER NOT NULL,
    inclusion_quantity NUMBER(4,0) DEFAULT 1 NOT NULL,
    CONSTRAINT pk_Product_Menu PRIMARY KEY (product_id, menu_id),
    CONSTRAINT fk_ProdMenu_Product FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT fk_ProdMenu_Menu FOREIGN KEY (menu_id) REFERENCES Menu(menu_id)
);

-- Product_Ingredient
CREATE TABLE Product_Ingredient (
    product_id NUMBER NOT NULL,
    ingredient_id NUMBER NOT NULL,
    quantity_used NUMBER(10,2), -- Quantity of ingredient in the product
    unit_of_measure VARCHAR2(20),
    CONSTRAINT pk_Product_Ingredient PRIMARY KEY (product_id, ingredient_id),
    CONSTRAINT fk_ProdIng_Product FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT fk_ProdIng_Ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Product_Feedback 
CREATE TABLE Product_Feedback (
    product_id NUMBER NOT NULL,
    feedback_id NUMBER NOT NULL,
    CONSTRAINT pk_Product_Feedback PRIMARY KEY (product_id, feedback_id),
    CONSTRAINT fk_ProdFeed_Product FOREIGN KEY (product_id) REFERENCES Product(product_id),
    CONSTRAINT fk_ProdFeed_Feedback FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

-- Transaction_Transaction
CREATE TABLE Transaction_Transaction (
    transaction_id_1 NUMBER NOT NULL,
    transaction_id_2 NUMBER NOT NULL,
    relationship_type VARCHAR2(50), -- e.g., 'Refund For', 'Parent Of', 'Linked Payment'
    CONSTRAINT pk_Transaction_Transaction PRIMARY KEY (transaction_id_1, transaction_id_2),
    CONSTRAINT fk_TranTran_Trans1 FOREIGN KEY (transaction_id_1) REFERENCES Transaction(transaction_id),
    CONSTRAINT fk_TranTran_Trans2 FOREIGN KEY (transaction_id_2) REFERENCES Transaction(transaction_id),
    CONSTRAINT ck_TranTran_diff_ids CHECK (transaction_id_1 != transaction_id_2)
);

-- Transaction_Logistic
CREATE TABLE Transaction_Logistic (
    transaction_id NUMBER NOT NULL,
    logistic_id NUMBER NOT NULL,
    CONSTRAINT pk_Transaction_Logistic PRIMARY KEY (transaction_id, logistic_id),
    CONSTRAINT fk_TranLog_Transaction FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
    CONSTRAINT fk_TranLog_Logistic FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id)
);

-- Transaction_Feedback
CREATE TABLE Transaction_Feedback (
    transaction_id NUMBER NOT NULL,
    feedback_id NUMBER NOT NULL,
    CONSTRAINT pk_Transaction_Feedback PRIMARY KEY (transaction_id, feedback_id),
    CONSTRAINT fk_TranFeed_Transaction FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
    CONSTRAINT fk_TranFeed_Feedback FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

-- Logistic_Ingredient
CREATE TABLE Logistic_Ingredient (
    logistic_id NUMBER NOT NULL,
    ingredient_id NUMBER NOT NULL,
    quantity_shipped NUMBER(10,2) NOT NULL,
    CONSTRAINT pk_Logistic_Ingredient PRIMARY KEY (logistic_id, ingredient_id),
    CONSTRAINT fk_LogIng_Logistic FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
    CONSTRAINT fk_LogIng_Ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

-- Logistic_Feedback
CREATE TABLE Logistic_Feedback (
    logistic_id NUMBER NOT NULL,
    feedback_id NUMBER NOT NULL,
    CONSTRAINT pk_Logistic_Feedback PRIMARY KEY (logistic_id, feedback_id),
    CONSTRAINT fk_LogFeed_Logistic FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
    CONSTRAINT fk_LogFeed_Feedback FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

-- Feedback_Ingredient
CREATE TABLE Feedback_Ingredient (
    feedback_id NUMBER NOT NULL,
    ingredient_id NUMBER NOT NULL,
    CONSTRAINT pk_Feedback_Ingredient PRIMARY KEY (feedback_id, ingredient_id),
    CONSTRAINT fk_FeedIng_Feedback FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id),
    CONSTRAINT fk_FeedIng_Ingredient FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);