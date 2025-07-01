CREATE TABLE Person (
    person_id NUMBER PRIMARY KEY,
    ic_number VARCHAR2(15) NOT NULL UNIQUE,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR2(10) NOT NULL,
    phone_number VARCHAR2(15) NOT NULL UNIQUE,
    email_address VARCHAR2(100),
    emergency_contact VARCHAR2(100),
    nationality VARCHAR2(50) NOT NULL,
    outlet_id NUMBER UNIQUE NOT NULL,
    transaction_id NUMBER UNIQUE NOT NULL,
    order_id NUMBER UNIQUE NOT NULL,
    feedback_id NUMBER UNIQUE NOT NULL
);
CREATE TABLE Outlet (
    outlet_id NUMBER PRIMARY KEY,
    franchise_code VARCHAR2(20) NOT NULL UNIQUE,
    outlet_name VARCHAR2(100) NOT NULL UNIQUE,
    location_address VARCHAR2(255) NOT NULL,
    operating_hours VARCHAR2(255) NOT NULL,
    seating_capacity NUMBER NOT NULL CHECK (seating_capacity >= 0),
    opening_date DATE NOT NULL,
    contact_number VARCHAR2(15) NOT NULL UNIQUE,
    area_size_sqft NUMBER(10, 2) CHECK (area_size_sqft >= 0),
    rental_amount NUMBER(10, 2) CHECK (rental_amount >= 0),
    person_id NUMBER NOT NULL UNIQUE,
    FOREIGN KEY (person_id) REFERENCES Person(person_id)
);
CREATE TABLE Customer (
    customer_id NUMBER PRIMARY KEY,
    membership_number VARCHAR2(20) NOT NULL UNIQUE,
    registration_date DATE NOT NULL,
    loyalty_points NUMBER NOT NULL CHECK (loyalty_points >= 0),
    preferred_outlet VARCHAR2(100),
    dietary_preferences VARCHAR2(500),
    birthday_month NUMBER(2) NOT NULL CHECK (birthday_month BETWEEN 1 AND 12),
    communication_preference VARCHAR2(50) NOT NULL CHECK (communication_preference IN ('Email', 'SMS', 'None', 'All')),
    last_visit_date DATE,
    total_spent NUMBER(10,2) DEFAULT 0.00 NOT NULL CHECK (total_spent >= 0),
    person_id NUMBER NOT NULL UNIQUE,
    ic_number VARCHAR2(15) NOT NULL UNIQUE,
    menu_id NUMBER NOT NULL UNIQUE,
    product_id NUMBER NOT NULL UNIQUE
);
CREATE TABLE Supplier (
    supplier_id NUMBER PRIMARY KEY,
    vendor_code VARCHAR2(20) NOT NULL UNIQUE,
    company_name VARCHAR2(100) NOT NULL,
    business_registration VARCHAR2(50) UNIQUE,
    payment_terms VARCHAR2(100) NOT NULL,
    delivery_lead_time NUMBER NOT NULL CHECK (delivery_lead_time >= 0),
    quality_certification VARCHAR2(100),
    contract_start_date DATE,
    contract_end_date DATE,
    credit_limit NUMBER(12,2) DEFAULT 0.00 CHECK (credit_limit >= 0),
    person_id NUMBER NOT NULL UNIQUE,
    ic_number VARCHAR2(15) NOT NULL UNIQUE,
    ingredient_id NUMBER NOT NULL UNIQUE,
    logistic_id NUMBER NOT NULL UNIQUE
);

CREATE TABLE Employee (
    employee_id NUMBER PRIMARY KEY,
    staff_number VARCHAR2(20) NOT NULL UNIQUE,
    hire_date DATE NOT NULL,
    base_salary NUMBER(10,2) NOT NULL CHECK (base_salary >= 0),
    performance_rating NUMBER(2,1) CHECK (performance_rating BETWEEN 0.0 AND 5.0),
    years_of_experience NUMBER(2) CHECK (years_of_experience >= 0),
    reporting_manager VARCHAR2(100),
    person_id NUMBER NOT NULL UNIQUE,
    ic_number VARCHAR2(15) NOT NULL UNIQUE,
    employee_ref_id NUMBER NOT NULL UNIQUE,
    training_id NUMBER NOT NULL UNIQUE,
    ingredient_id NUMBER NOT NULL UNIQUE,
    kitchen_id NUMBER NOT NULL UNIQUE,
    document_id NUMBER NOT NULL UNIQUE,
    menu_id NUMBER NOT NULL UNIQUE,
    inventory_id NUMBER NOT NULL UNIQUE,
    product_id NUMBER NOT NULL UNIQUE
);
CREATE TABLE Staff (
    staff_id NUMBER PRIMARY KEY,
    worker_code VARCHAR2(20) NOT NULL UNIQUE,
    skill_level VARCHAR2(50) NOT NULL,
    hourly_rate NUMBER(8,2) NOT NULL CHECK (hourly_rate >= 0),
    flexible_hours VARCHAR2(3) NOT NULL CHECK (flexible_hours IN ('Yes', 'No')),
    uniform_size VARCHAR2(10),
    equipment_assigned VARCHAR2(500),
    safety_training_date DATE,
    performance_incentive NUMBER(10,2) DEFAULT 0.00 CHECK (performance_incentive >= 0),
    cross_training_areas VARCHAR2(500),

    employee_id NUMBER NOT NULL UNIQUE,
    staff_number VARCHAR2(20) NOT NULL UNIQUE
);
CREATE TABLE Manager (
    manager_id NUMBER PRIMARY KEY,
    management_code VARCHAR2(20) NOT NULL UNIQUE,
    management_level VARCHAR2(50) NOT NULL,
    team_size NUMBER NOT NULL CHECK (team_size >= 0),
    budget_authority NUMBER(12,2) CHECK (budget_authority >= 0),
    kpi_target VARCHAR2(500),
    bonus_eligibility VARCHAR2(3) DEFAULT 'No' NOT NULL CHECK (bonus_eligibility IN ('Yes', 'No')),
    leadership_training VARCHAR2(500),
    decision_making_power VARCHAR2(500),
    regional_responsibility VARCHAR2(500),

    employee_id NUMBER NOT NULL UNIQUE,
    staff_number VARCHAR2(20) NOT NULL UNIQUE,
    logistic_id NUMBER NOT NULL UNIQUE
);
-- ==========================
-- TRAINING TABLE
-- ==========================
CREATE TABLE Training (
    training_id NUMBER PRIMARY KEY,
    session_code VARCHAR2(50) NOT NULL UNIQUE,
    training_title VARCHAR2(255) NOT NULL,
    trainer_name VARCHAR2(100) NOT NULL,
    training_duration_hours NUMBER(5,2) NOT NULL CHECK (training_duration_hours > 0),
    training_date DATE NOT NULL,
    training_venue VARCHAR2(255) NOT NULL,
    max_participants NUMBER CHECK (max_participants > 0),
    training_cost NUMBER(10,2) NOT NULL CHECK (training_cost >= 0),
    certification_provided VARCHAR2(3) DEFAULT 'No' NOT NULL CHECK (certification_provided IN ('Yes', 'No')),

    employee_id NUMBER NOT NULL UNIQUE,
    certificate_id NUMBER NOT NULL UNIQUE
);
-- ==========================
-- DOCUMENT TABLE (Superclass)
-- ==========================
CREATE TABLE Document (
    document_id NUMBER PRIMARY KEY,
    file_reference VARCHAR2(100) NOT NULL UNIQUE,
    document_title VARCHAR2(255) NOT NULL,
    creation_date TIMESTAMP NOT NULL,
    document_type VARCHAR2(50) NOT NULL CHECK (document_type IN ('Certificate', 'Timesheet', 'Salary Slip', 'Contract', 'Policy', 'Report', 'Other')),
    file_format VARCHAR2(20),
    file_size_mb NUMBER(10,2) CHECK (file_size_mb >= 0 OR file_size_mb IS NULL),
    access_level VARCHAR2(50) DEFAULT 'Restricted' NOT NULL CHECK (access_level IN ('Public', 'Internal', 'Restricted', 'Confidential')),
    expiry_date DATE CHECK (expiry_date >= creation_date OR expiry_date IS NULL),
    digital_signature CLOB,

    document_id_fk NUMBER NOT NULL UNIQUE,
    employee_id NUMBER NOT NULL UNIQUE,
    outlet_id NUMBER NOT NULL UNIQUE
);
-- ==========================
-- CERTIFICATE TABLE (Subclass of Document)
-- ==========================
CREATE TABLE Certificate (
    certificate_id NUMBER PRIMARY KEY,
    cert_number VARCHAR2(100) NOT NULL UNIQUE,
    certificate_name VARCHAR2(255) NOT NULL,
    issuing_authority VARCHAR2(255) NOT NULL,
    issue_date DATE NOT NULL,
    validity_period NUMBER CHECK (validity_period > 0 OR validity_period IS NULL),
    renewal_required VARCHAR2(3) DEFAULT 'No' NOT NULL CHECK (renewal_required IN ('Yes', 'No')),
    compliance_type VARCHAR2(100),
    verification_status VARCHAR2(50) DEFAULT 'Verified' NOT NULL CHECK (verification_status IN ('Verified', 'Pending', 'Expired', 'Revoked')),
    associated_standard VARCHAR2(255),

    document_id NUMBER NOT NULL UNIQUE,
    file_reference VARCHAR2(100) NOT NULL UNIQUE,
    training_id NUMBER
);
-- ==========================
-- SALARY TABLE (Subclass of Document)
-- ==========================
CREATE TABLE Salary (
    salary_id NUMBER PRIMARY KEY,
    payroll_number VARCHAR2(100) NOT NULL UNIQUE,
    basic_pay NUMBER(12,2) NOT NULL CHECK (basic_pay >= 0),
    allowances NUMBER(10,2) DEFAULT 0.00 NOT NULL CHECK (allowances >= 0),
    deductions NUMBER(10,2) DEFAULT 0.00 NOT NULL CHECK (deductions >= 0),
    net_pay NUMBER(12,2) NOT NULL,
    pay_date DATE NOT NULL,
    tax_deducted NUMBER(10,2) DEFAULT 0.00 NOT NULL CHECK (tax_deducted >= 0),
    epf_contribution NUMBER(10,2) DEFAULT 0.00 NOT NULL CHECK (epf_contribution >= 0),
    socso_contribution NUMBER(10,2) DEFAULT 0.00 NOT NULL CHECK (socso_contribution >= 0),

    document_id NUMBER NOT NULL UNIQUE,
    file_reference VARCHAR2(100) NOT NULL UNIQUE
);
-- ==========================
-- TIMESHEET TABLE (Subclass of Document)
-- ==========================
CREATE TABLE Timesheet (
    timesheet_id NUMBER PRIMARY KEY,
    period_code VARCHAR2(50) NOT NULL UNIQUE,
    work_period DATE NOT NULL,
    total_hours_worked NUMBER(6,2) NOT NULL CHECK (total_hours_worked >= 0),
    overtime_hours NUMBER(6,2) DEFAULT 0.00 NOT NULL CHECK (overtime_hours >= 0),
    break_duration NUMBER(6,2) DEFAULT 0.00 NOT NULL CHECK (break_duration >= 0),
    approval_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL CHECK (approval_status IN ('Pending', 'Approved', 'Rejected')),
    submission_date TIMESTAMP NOT NULL,
    approved_by NUMBER NOT NULL,
    pay_period DATE NOT NULL,

    document_id NUMBER NOT NULL UNIQUE,
    file_reference VARCHAR2(100) NOT NULL UNIQUE
);
-- ==========================
-- MENU TABLE
-- ==========================
CREATE TABLE Menu (
    menu_id NUMBER PRIMARY KEY,
    item_code VARCHAR2(20) NOT NULL UNIQUE,
    item_name VARCHAR2(100) NOT NULL UNIQUE,
    category_type VARCHAR2(50) NOT NULL,
    selling_price NUMBER(8,2) NOT NULL CHECK (selling_price >= 0),
    preparation_time_minutes NUMBER NOT NULL CHECK (preparation_time_minutes >= 0),
    calorie_count NUMBER,
    spice_level VARCHAR2(20) CHECK (spice_level IN ('Mild', 'Hot', 'Extra hot', 'None')),
    availability_status VARCHAR2(20) DEFAULT 'Available' NOT NULL CHECK (availability_status IN ('Available', 'Limited', 'Out of stock', 'Seasonal')),
    promotional_tag VARCHAR2(100),

    outlet_id NUMBER NOT NULL UNIQUE,
    customer_id NUMBER NOT NULL UNIQUE,
    product_id NUMBER NOT NULL UNIQUE,
    employee_id NUMBER NOT NULL UNIQUE
);
-- ==========================
-- PRODUCT TABLE
-- ==========================
CREATE TABLE Product (
    product_id NUMBER PRIMARY KEY,
    barcode VARCHAR2(50) NOT NULL UNIQUE,
    product_name VARCHAR2(100) NOT NULL UNIQUE,
    brand_name VARCHAR2(100),
    unit_measure VARCHAR2(20) NOT NULL,
    shelf_life_days NUMBER NOT NULL CHECK (shelf_life_days >= 0),
    storage_temperature VARCHAR2(50) NOT NULL,
    origin_country VARCHAR2(50),
    quality_grade VARCHAR2(50),
    packaging_type VARCHAR2(50) NOT NULL,

    outlet_id NUMBER NOT NULL UNIQUE,
    employee_id NUMBER NOT NULL UNIQUE,
    customer_id NUMBER NOT NULL UNIQUE,
    menu_id NUMBER NOT NULL UNIQUE,
    kitchen_id NUMBER NOT NULL UNIQUE,
    ingredient_id NUMBER NOT NULL UNIQUE,
    order_id NUMBER NOT NULL UNIQUE,
    feedback_id NUMBER NOT NULL UNIQUE,
    transaction_id NUMBER NOT NULL UNIQUE
);
-- ==========================
-- ORDER TABLE
-- ==========================
CREATE TABLE OrderTable (
    order_id NUMBER PRIMARY KEY,
    receipt_number VARCHAR2(50) NOT NULL UNIQUE,
    order_datetime TIMESTAMP NOT NULL,
    order_type VARCHAR2(50) NOT NULL CHECK (order_type IN ('Dine-in', 'Takeaway', 'Delivery', 'Drive-thru')),
    total_amount NUMBER(10,2) NOT NULL CHECK (total_amount >= 0),
    order_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL CHECK (order_status IN ('Pending', 'Processing', 'Ready for pickup', 'Out for delivery', 'Completed', 'Cancelled', 'Refunded')),
    delivery_address VARCHAR2(255),
    special_instructions CLOB,
    estimated_delivery_time TIMESTAMP CHECK (estimated_delivery_time > order_datetime),
    discount_applied NUMBER(8,2) DEFAULT 0.00 CHECK (discount_applied >= 0),

    ingredient_id NUMBER NOT NULL UNIQUE,
    transaction_id NUMBER NOT NULL UNIQUE,
    product_id NUMBER NOT NULL UNIQUE,
    person_id NUMBER NOT NULL UNIQUE
);
-- ==========================
-- TRANSACTION TABLE
-- ==========================
CREATE TABLE TransactionTable (
    transaction_id NUMBER PRIMARY KEY,
    reference_id VARCHAR2(50) NOT NULL UNIQUE,
    transaction_date TIMESTAMP NOT NULL,
    transaction_amount NUMBER(10,2) NOT NULL CHECK (transaction_amount >= 0),
    currency_type VARCHAR2(10) NOT NULL CHECK (currency_type IN ('MYR', 'USD', 'SGD', 'GBP')),
    exchange_rate NUMBER(10,4),
    transaction_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL CHECK (transaction_status IN ('Pending', 'Approved', 'Declined', 'Settled', 'Refunded', 'Voided')),
    processing_fee NUMBER(8,2) DEFAULT 0.00 NOT NULL CHECK (processing_fee >= 0),
    authorization_code VARCHAR2(50),
    reconciliation_status VARCHAR2(50) DEFAULT 'Unreconciled' NOT NULL CHECK (reconciliation_status IN ('Unreconciled', 'Reconciled', 'Discrepancy')),

    transaction_id_fk NUMBER,
    order_id NUMBER NOT NULL UNIQUE,
    person_id NUMBER NOT NULL UNIQUE,
    product_id NUMBER NOT NULL UNIQUE,
    ingredient_id NUMBER NOT NULL UNIQUE,
    logistic_id NUMBER NOT NULL UNIQUE,
    feedback_id NUMBER NOT NULL UNIQUE
);
-- ==========================
-- PAYMENT TABLE
-- ==========================
CREATE TABLE Payment (
    payment_id NUMBER PRIMARY KEY,
    receipt_id VARCHAR2(50) NOT NULL UNIQUE,
    amount NUMBER(10,2) NOT NULL CHECK (amount >= 0),
    payment_time TIMESTAMP NOT NULL,
    transaction_type VARCHAR2(50) NOT NULL,
    payment_method VARCHAR2(50) NOT NULL CHECK (payment_method IN ('Cash', 'Credit card', 'Debit card', 'Mobile pay', 'Voucher')),
    cash_or_card VARCHAR2(20),
    payment_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL CHECK (payment_status IN ('Pending', 'Approved', 'Rejected', 'Refunded')),
    change_given NUMBER(10,2) DEFAULT 0.00 NOT NULL CHECK (change_given >= 0),
    currency_paid VARCHAR2(10) NOT NULL CHECK (currency_paid IN ('MYR', 'USD', 'SGD')),
    
    transaction_id NUMBER NOT NULL UNIQUE,
    reference_id VARCHAR2(50) NOT NULL UNIQUE
);
-- ==========================
-- PURCHASE TABLE
-- ==========================
CREATE TABLE Purchase (
    purchase_id NUMBER PRIMARY KEY,
    po_number VARCHAR2(50) NOT NULL UNIQUE,
    purchase_date DATE NOT NULL,
    purchase_amount NUMBER(12,2) NOT NULL CHECK (purchase_amount >= 0),
    vendor_name VARCHAR2(100),
    approval_status VARCHAR2(50) DEFAULT 'Pending' NOT NULL CHECK (approval_status IN ('Pending', 'Approved', 'Rejected', 'Completed')),
    delivery_date DATE NOT NULL CHECK (delivery_date >= purchase_date),
    invoice_number VARCHAR2(100) UNIQUE,
    payment_due_date DATE CHECK (payment_due_date >= purchase_date),
    tax_amount NUMBER(10,2) DEFAULT 0.00 NOT NULL CHECK (tax_amount >= 0),

    transaction_id NUMBER NOT NULL UNIQUE,
    reference_id VARCHAR2(50) NOT NULL UNIQUE
);
-- ==========================
-- KITCHEN TABLE
-- ==========================
CREATE TABLE Kitchen (
    kitchen_id NUMBER PRIMARY KEY,
    facility_code VARCHAR2(20) NOT NULL UNIQUE,
    kitchen_type VARCHAR2(50) NOT NULL,
    equipment_list CLOB,
    capacity_rating VARCHAR2(50),
    safety_compliance VARCHAR2(50) DEFAULT 'Compliant' NOT NULL CHECK (safety_compliance IN ('Compliant', 'Non-compliant', 'Under review')),
    last_inspection_date DATE,
    temperature_control VARCHAR2(50) NOT NULL,
    waste_management VARCHAR2(255),
    hygiene_level VARCHAR2(50) NOT NULL CHECK (hygiene_level IN ('Excellent', 'Good', 'Average', 'Needs improvement'))
);
-- ==========================
-- INGREDIENT TABLE
-- ==========================
CREATE TABLE Ingredient (
    ingredient_id NUMBER PRIMARY KEY,
    recipe_code VARCHAR2(20) NOT NULL UNIQUE,
    ingredient_name VARCHAR2(100) NOT NULL UNIQUE,
    nutritional_value CLOB,
    allergen_information VARCHAR2(255),
    sourcing_location VARCHAR2(100),
    freshness_indicator VARCHAR2(50),
    usage_quantity NUMBER,
    replacement_frequency NUMBER,
    cost_per_unit NUMBER(8,4) NOT NULL CHECK (cost_per_unit >= 0),

    kitchen_id NUMBER NOT NULL UNIQUE,
    product_id NUMBER NOT NULL UNIQUE,
    inventory_id NUMBER NOT NULL UNIQUE,
    logistic_id NUMBER NOT NULL UNIQUE,
    order_id NUMBER NOT NULL UNIQUE,
    supplier_id NUMBER NOT NULL UNIQUE,
    transaction_id NUMBER NOT NULL UNIQUE,
    outlet_id NUMBER NOT NULL UNIQUE,
    employee_id NUMBER NOT NULL UNIQUE,
    feedback_id NUMBER NOT NULL UNIQUE
);
-- ==========================
-- INVENTORY TABLE
-- ==========================
CREATE TABLE Inventory (
    inventory_id NUMBER PRIMARY KEY,
    stock_code VARCHAR2(50) NOT NULL UNIQUE,
    current_stock_level NUMBER(10,2) NOT NULL CHECK (current_stock_level >= 0),
    min_threshold NUMBER(10,2) NOT NULL CHECK (min_threshold >= 0),
    max_capacity NUMBER(10,2) CHECK (max_capacity >= 0 AND max_capacity >= current_stock_level OR max_capacity IS NULL),
    reorder_point NUMBER(10,2) NOT NULL CHECK (reorder_point >= 0),
    storage_location VARCHAR2(100) NOT NULL,
    last_stocktake_date DATE NOT NULL,
    value_at_cost NUMBER(12,2) NOT NULL CHECK (value_at_cost >= 0),
    turnover_rate NUMBER(5,2) CHECK (turnover_rate >= 0),

    kitchen_id NUMBER,
    ingredient_id NUMBER NOT NULL,
    outlet_id NUMBER,
    employee_id NUMBER NOT NULL UNIQUE,

    FOREIGN KEY (kitchen_id) REFERENCES Kitchen(kitchen_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
    FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);
-- ==========================
-- LOGISTIC TABLE
-- ==========================
CREATE TABLE Logistic (
    logistic_id NUMBER PRIMARY KEY,
    shipment_code VARCHAR2(50) NOT NULL UNIQUE,
    delivery_route VARCHAR2(255) NOT NULL,
    transport_method VARCHAR2(50) NOT NULL CHECK (transport_method IN ('Truck', 'Van', 'Motorcycle', 'Air Cargo', 'Sea Freight')),
    delivery_schedule_desc VARCHAR2(255) NOT NULL,
    tracking_number VARCHAR2(100) UNIQUE,
    delivery_status VARCHAR2(50) NOT NULL DEFAULT 'Scheduled'
        CHECK (delivery_status IN ('Scheduled', 'In Transit', 'Delivered', 'Delayed', 'Cancelled', 'Returned')),
    freight_cost NUMBER(10,2) NOT NULL CHECK (freight_cost >= 0),
    delivery_partner VARCHAR2(100),
    transport_type VARCHAR2(50) NOT NULL
        CHECK (transport_type IN ('Inbound', 'Outbound', 'Inter-Branch')),

    supplier_id NUMBER,
    outlet_id NUMBER,
    transaction_id NUMBER,
    feedback_id NUMBER,
    ingredient_id NUMBER NOT NULL UNIQUE,
    manager_id NUMBER NOT NULL UNIQUE,

    FOREIGN KEY (supplier_id) REFERENCES Supplier(supplier_id),
    FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
    FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
    FOREIGN KEY (manager_id) REFERENCES Manager(manager_id)
);
-- ==========================
-- FEEDBACK TABLE
-- ==========================
CREATE TABLE Feedback (
    feedback_id NUMBER PRIMARY KEY,
    reference_number VARCHAR2(50) NOT NULL UNIQUE,
    feedback_type VARCHAR2(50) NOT NULL
        CHECK (feedback_type IN ('Complaint', 'Compliment', 'Suggestion', 'Inquiry')),
    rating_score NUMBER(1)
        CHECK (rating_score BETWEEN 1 AND 10 OR rating_score IS NULL),
    feedback_text CLOB NOT NULL,
    submission_date TIMESTAMP NOT NULL,
    response_status VARCHAR2(50) NOT NULL DEFAULT 'Pending'
        CHECK (response_status IN ('Pending', 'In Progress', 'Resolved', 'Closed')),
    follow_up_required VARCHAR2(3) NOT NULL DEFAULT 'No'
        CHECK (follow_up_required IN ('Yes', 'No')),
    complaint_category VARCHAR2(100),
    resolution_time_days NUMBER
        CHECK (resolution_time_days >= 0 OR resolution_time_days IS NULL),

    outlet_id NUMBER NOT NULL UNIQUE,
    logistic_id NUMBER NOT NULL UNIQUE,
    person_id NUMBER NOT NULL UNIQUE,
    ingredient_id NUMBER NOT NULL UNIQUE,
    product_id NUMBER NOT NULL UNIQUE,
    transaction_id NUMBER NOT NULL UNIQUE,

    FOREIGN KEY (outlet_id) REFERENCES Outlet(outlet_id),
    FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id),
    FOREIGN KEY (person_id) REFERENCES Person(person_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id)
);
-- ==================================
-- EXPLOSION TABLES
-- ==================================

CREATE TABLE OutletPerson (
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
    FOREIGN KEY (order_id) REFERENCES Order(order_id)
);

CREATE TABLE PersonTransaction (
    person_id NUMBER,
    transaction_id NUMBER,
    PRIMARY KEY (person_id, transaction_id),
    FOREIGN KEY (person_id) REFERENCES Person(person_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id)
);

CREATE TABLE PersonFeedback (
    person_id NUMBER,
    feedback_id NUMBER,
    PRIMARY KEY (person_id, feedback_id),
    FOREIGN KEY (person_id) REFERENCES Person(person_id),
    FOREIGN KEY (feedback_id) REFERENCES Feedback(feedback_id)
);

CREATE TABLE PersonPerson (
    person_id_1 NUMBER,
    person_id_2 NUMBER,
    PRIMARY KEY (person_id_1, person_id_2),
    FOREIGN KEY (person_id_1) REFERENCES Person(person_id),
    FOREIGN KEY (person_id_2) REFERENCES Person(person_id)
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
    employee_id_1 NUMBER,
    employee_id_2 NUMBER,
    PRIMARY KEY (employee_id_1, employee_id_2),
    FOREIGN KEY (employee_id_1) REFERENCES Employee(employee_id),
    FOREIGN KEY (employee_id_2) REFERENCES Employee(employee_id)
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
    document_id NUMBER,
    document_ref_id NUMBER,
    PRIMARY KEY (document_id, document_ref_id),
    FOREIGN KEY (document_id) REFERENCES Document(document_id),
    FOREIGN KEY (document_ref_id) REFERENCES Document(document_id)
);

CREATE TABLE ProductTransaction (
    product_id NUMBER,
    transaction_id NUMBER,
    PRIMARY KEY (product_id, transaction_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id)
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
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id)
);

CREATE TABLE OrderIngredient (
    order_id NUMBER,
    ingredient_id NUMBER,
    PRIMARY KEY (order_id, ingredient_id),
    FOREIGN KEY (order_id) REFERENCES "Order"(order_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);
CREATE TABLE TransactionTransaction (
    transaction_id NUMBER,
    related_transaction_id NUMBER,
    PRIMARY KEY (transaction_id, related_transaction_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
    FOREIGN KEY (related_transaction_id) REFERENCES Transaction(transaction_id)
);

CREATE TABLE TransactionIngredient (
    transaction_id NUMBER,
    ingredient_id NUMBER,
    PRIMARY KEY (transaction_id, ingredient_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
);

CREATE TABLE TransactionLogistic (
    transaction_id NUMBER,
    logistic_id NUMBER,
    PRIMARY KEY (transaction_id, logistic_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
    FOREIGN KEY (logistic_id) REFERENCES Logistic(logistic_id)
);

CREATE TABLE TransactionFeedback (
    transaction_id NUMBER,
    feedback_id NUMBER,
    PRIMARY KEY (transaction_id, feedback_id),
    FOREIGN KEY (transaction_id) REFERENCES Transaction(transaction_id),
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

-- ==================================
-- ALTER TABLES
-- ==================================

-- Self-referencing: Person
ALTER TABLE Person
ADD CONSTRAINT fk_person_person
FOREIGN KEY (person_id)
REFERENCES Person(person_id);

-- Self-referencing: Employee
ALTER TABLE Employee
ADD CONSTRAINT fk_employee_employee
FOREIGN KEY (employee_id)
REFERENCES Employee(employee_id);

-- Self-referencing: Document
ALTER TABLE Document
ADD CONSTRAINT fk_document_document
FOREIGN KEY (document_id)
REFERENCES Document(document_id);

-- Self-referencing: Transaction
ALTER TABLE Transaction
ADD CONSTRAINT fk_transaction_transaction
FOREIGN KEY (transaction_id)
REFERENCES Transaction(transaction_id);

-- Document → Outlet
ALTER TABLE Document
ADD CONSTRAINT fk_document_outlet
FOREIGN KEY (outlet_id)
REFERENCES Outlet(outlet_id);

-- Document → Employee
ALTER TABLE Document
ADD CONSTRAINT fk_document_employee
FOREIGN KEY (employee_id)
REFERENCES Employee(employee_id);

-- Ingredient → Employee
ALTER TABLE Ingredient
ADD CONSTRAINT fk_ingredient_employee
FOREIGN KEY (employee_id)
REFERENCES Employee(employee_id);

-- Ingredient → Outlet
ALTER TABLE Ingredient
ADD CONSTRAINT fk_ingredient_outlet
FOREIGN KEY (outlet_id)
REFERENCES Outlet(outlet_id);

-- Product → Order
ALTER TABLE Product
ADD CONSTRAINT fk_product_order
FOREIGN KEY (order_id)
REFERENCES "Order"(order_id);

-- Menu → Customer
ALTER TABLE Menu
ADD CONSTRAINT fk_menu_customer
FOREIGN KEY (customer_id)
REFERENCES Customer(customer_id);

-- Menu → Product
ALTER TABLE Menu
ADD CONSTRAINT fk_menu_product
FOREIGN KEY (product_id)
REFERENCES Product(product_id);

-- Product → Menu
ALTER TABLE Product
ADD CONSTRAINT fk_product_menu
FOREIGN KEY (menu_id)
REFERENCES Menu(menu_id);

-- Product → Feedback
ALTER TABLE Product
ADD CONSTRAINT fk_product_feedback
FOREIGN KEY (feedback_id)
REFERENCES Feedback(feedback_id);

-- Transaction → Order
ALTER TABLE Transaction
ADD CONSTRAINT fk_transaction_order
FOREIGN KEY (order_id)
REFERENCES "Order"(order_id);

-- Feedback → Outlet
ALTER TABLE Feedback
ADD CONSTRAINT fk_feedback_outlet
FOREIGN KEY (outlet_id)
REFERENCES Outlet(outlet_id);

-- Logistic → Ingredient
ALTER TABLE Logistic
ADD CONSTRAINT fk_logistic_ingredient
FOREIGN KEY (ingredient_id)
REFERENCES Ingredient(ingredient_id);

-- Certificate → Training
ALTER TABLE Certificate
ADD CONSTRAINT fk_certificate_training
FOREIGN KEY (training_id)
REFERENCES Training(training_id);
