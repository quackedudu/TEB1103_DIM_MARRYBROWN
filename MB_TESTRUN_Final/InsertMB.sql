SET LINESIZE 500
SET PAGESIZE 50
SET DEFINE OFF


--------------
--Person 0
--------------
-- Insert multiple rows into Person table using INSERT ALL
INSERT ALL
  INTO Person (
    person_id, ic_number, first_name, last_name, date_of_birth,
    gender, phone_number, email_address, emergency_contact, nationality
  ) VALUES (
    'P001', '920101-14-5678', 'Aisyah', 'Rahman', TO_DATE('1992-01-01', 'YYYY-MM-DD'),
    'F', '013-4567890', 'aisyah.rahman@email.com', '017-3322110', 'Malaysian'
  )
  INTO Person VALUES (
    'P002', '880404-08-3456', 'Farid', 'Iskandar', TO_DATE('1988-04-04', 'YYYY-MM-DD'),
    'M', '012-9988776', 'farid.iskandar@email.com', '016-7788990', 'Malaysian'
  )
  INTO Person VALUES (
    'P003', '950623-10-1234', 'Nurul', 'Azlina', TO_DATE('1995-06-23', 'YYYY-MM-DD'),
    'F', '019-4455667', 'nurul.azlina@email.com', '011-2233445', 'Malaysian'
  )
  INTO Person VALUES (
    'P004', '900915-05-9988', 'Hafiz', 'Abdullah', TO_DATE('1990-09-15', 'YYYY-MM-DD'),
    'M', '018-3377991', 'hafiz.abdullah@email.com', '012-1112233', 'Malaysian'
  )
  INTO Person VALUES (
    'P005', '970202-12-1111', 'Siti', 'Khalid', TO_DATE('1997-02-02', 'YYYY-MM-DD'),
    'F', '014-8899001', 'siti.khalid@email.com', '013-9988771', 'Malaysian'
  )
  INTO Person VALUES (
    'P006', '930701-07-4455', 'Amirul', 'Zahari', TO_DATE('1993-07-01', 'YYYY-MM-DD'),
    'M', '017-5566778', 'amirul.zahari@email.com', '019-3322110', 'Malaysian'
  )
  INTO Person VALUES (
    'P007', '860303-02-1234', 'Liyana', 'Omar', TO_DATE('1986-03-03', 'YYYY-MM-DD'),
    'F', '013-3322445', 'liyana.omar@email.com', '014-6655778', 'Malaysian'
  )
  INTO Person VALUES (
    'P008', '940818-11-7890', 'Daniel', 'Hafizi', TO_DATE('1994-08-18', 'YYYY-MM-DD'),
    'M', '010-9988112', 'daniel.hafizi@email.com', '012-5544332', 'Malaysian'
  )
  INTO Person VALUES (
    'P009', '960505-06-3344', 'Aina', 'Sofea', TO_DATE('1996-05-05', 'YYYY-MM-DD'),
    'F', '016-4455990', 'aina.sofea@email.com', '018-7788992', 'Malaysian'
  )
  INTO Person VALUES (
    'P010', '910717-03-2233', 'Faizal', 'Rahimi', TO_DATE('1991-07-17', 'YYYY-MM-DD'),
    'M', '017-2233445', 'faizal.rahimi@email.com', '015-3344556', 'Malaysian'
  )
  INTO Person VALUES (
    'P011', '980908-09-4567', 'Intan', 'Zarina', TO_DATE('1998-09-08', 'YYYY-MM-DD'),
    'F', '013-9988770', 'intan.zarina@email.com', '017-4455667', 'Malaysian'
  )
  INTO Person VALUES (
    'P012', '890306-04-7788', 'Syafiq', 'Razak', TO_DATE('1989-03-06', 'YYYY-MM-DD'),
    'M', '014-2233445', 'syafiq.razak@email.com', '019-8877665', 'Malaysian'
  )
  INTO Person VALUES (
    'P013', '970303-10-0101', 'Anis', 'Farhana', TO_DATE('1997-03-03', 'YYYY-MM-DD'),
    'F', '018-6677880', 'anis.farhana@email.com', '016-7788001', 'Malaysian'
  )
  INTO Person VALUES (
    'P014', '860707-01-8888', 'Firdaus', 'Hassan', TO_DATE('1986-07-07', 'YYYY-MM-DD'),
    'M', '011-2233440', 'firdaus.hassan@email.com', '012-9988776', 'Malaysian'
  )
  INTO Person VALUES (
    'P015', '900919-13-9090', 'Hidayah', 'Noraini', TO_DATE('1990-09-19', 'YYYY-MM-DD'),
    'F', '019-7766554', 'hidayah.noraini@email.com', '017-6677889', 'Malaysian'
  )
  INTO Person VALUES (
    'P016', '950801-12-3345', 'Shahril', 'Jamaluddin', TO_DATE('1995-08-01', 'YYYY-MM-DD'),
    'M', '012-4455667', 'shahril.jamal@email.com', '018-9988001', 'Malaysian'
  )
  INTO Person VALUES (
    'P017', '870612-06-1122', 'Azira', 'Nasreen', TO_DATE('1987-06-12', 'YYYY-MM-DD'),
    'F', '017-2233556', 'azira.nasreen@email.com', '013-4455669', 'Malaysian'
  )
  INTO Person VALUES (
    'P018', '990405-08-5566', 'Hakim', 'Fauzan', TO_DATE('1999-04-05', 'YYYY-MM-DD'),
    'M', '014-7788993', 'hakim.fauzan@email.com', '010-6655443', 'Malaysian'
  )
  INTO Person VALUES (
    'P019', '960927-14-3322', 'Izzati', 'Amira', TO_DATE('1996-09-27', 'YYYY-MM-DD'),
    'F', '016-8877665', 'izzati.amira@email.com', '012-4433221', 'Malaysian'
  )
  INTO Person VALUES (
    'P020', '910212-03-1234', 'Khairul', 'Faheem', TO_DATE('1991-02-12', 'YYYY-MM-DD'),
    'M', '019-2233110', 'khairul.faheem@email.com', '014-7766554', 'Malaysian'
  )
  INTO Person VALUES (
    'P021', '990102-14-5123', 'Farah', 'Ibrahim', TO_DATE('1999-01-02', 'YYYY-MM-DD'),
    'F', '012-3498234', 'farah.ibrahim@email.com', '016-8762345', 'Malaysian'
  )
  INTO Person VALUES (
    'P022', '880707-10-4321', 'Hafiz', 'Salleh', TO_DATE('1988-07-07', 'YYYY-MM-DD'),
    'M', '013-7623123', 'hafiz.salleh@email.com', '019-2349871', 'Malaysian'
  )
  INTO Person VALUES (
    'P023', '970313-08-9981', 'Aina', 'Zakaria', TO_DATE('1997-03-13', 'YYYY-MM-DD'),
    'F', '017-2882345', 'aina.zakaria@email.com', '012-9384712', 'Malaysian'
  )
  INTO Person VALUES (
    'P024', '940422-06-5550', 'Daniel', 'Ooi', TO_DATE('1994-04-22', 'YYYY-MM-DD'),
    'M', '011-8855231', 'danielooi@email.com', '013-4567123', 'Malaysian'
  )
  INTO Person VALUES (
    'P025', '000815-09-8123', 'Haziqah', 'Noraini', TO_DATE('2000-08-15', 'YYYY-MM-DD'),
    'F', '019-4456677', 'haziqahnor@email.com', '018-8275631', 'Malaysian'
  )
  INTO Person VALUES (
    'P026', '850928-05-2345', 'Faiz', 'Rahman', TO_DATE('1985-09-28', 'YYYY-MM-DD'),
    'M', '010-3421567', 'faiz.rahman@email.com', '012-2343211', 'Malaysian'
  )
  INTO Person VALUES (
    'P027', '960126-12-7788', 'Su Lin', 'Wong', TO_DATE('1996-01-26', 'YYYY-MM-DD'),
    'F', '012-5567234', 'sulin.wong@email.com', '014-7845231', 'Malaysian'
  )
  INTO Person VALUES (
    'P028', '921120-03-1234', 'Azrul', 'Musa', TO_DATE('1992-11-20', 'YYYY-MM-DD'),
    'M', '017-9834432', 'azrul.musa@email.com', '016-8743123', 'Malaysian'
  )
  INTO Person VALUES (
    'P029', '990911-10-3345', 'Nabila', 'Roslan', TO_DATE('1999-09-11', 'YYYY-MM-DD'),
    'F', '018-3345678', 'nabila.roslan@email.com', '011-9932134', 'Malaysian'
  )
  INTO Person VALUES (
    'P030', '900605-13-6678', 'Afiq', 'Hakim', TO_DATE('1990-06-05', 'YYYY-MM-DD'),
    'M', '016-7234567', 'afiq.hakim@email.com', '019-7788123', 'Malaysian'
  )
  INTO Person VALUES (
    'P031', '980421-08-9999', 'Anisah', 'Jamal', TO_DATE('1998-04-21', 'YYYY-MM-DD'),
    'F', '019-2211333', 'anisah.jamal@email.com', '014-1234321', 'Malaysian'
  )
  INTO Person VALUES (
    'P032', '890803-11-8876', 'Rajiv', 'Kumar', TO_DATE('1989-08-03', 'YYYY-MM-DD'),
    'M', '017-8981234', 'rajiv.kumar@email.com', '016-7891222', 'Malaysian'
  )
  INTO Person VALUES (
    'P033', '970716-06-6543', 'Umairah', 'Afiqah', TO_DATE('1997-07-16', 'YYYY-MM-DD'),
    'F', '010-7766543', 'umairah.afiqah@email.com', '018-9988776', 'Malaysian'
  )
  INTO Person VALUES (
    'P034', '950109-04-1234', 'Karthik', 'Subramani', TO_DATE('1995-01-09', 'YYYY-MM-DD'),
    'M', '012-9981223', 'karthik.subramani@email.com', '017-8822774', 'Malaysian'
  )
  INTO Person VALUES (
    'P035', '910210-12-8876', 'Hannah', 'Nadzrah', TO_DATE('1991-02-10', 'YYYY-MM-DD'),
    'F', '013-4432981', 'hannah.nadzrah@email.com', '012-1122233', 'Malaysian'
  )
  INTO Person VALUES (
    'P036', '001022-14-7755', 'Faizah', 'Omar', TO_DATE('2000-10-22', 'YYYY-MM-DD'),
    'F', '014-8723490', 'faizah.omar@email.com', '010-8889212', 'Malaysian'
  )
  INTO Person VALUES (
    'P037', '930513-02-3355', 'Nazrin', 'Ismail', TO_DATE('1993-05-13', 'YYYY-MM-DD'),
    'M', '017-7283844', 'nazrin.ismail@email.com', '019-8787872', 'Malaysian'
  )
  INTO Person VALUES (
    'P038', '980927-09-1166', 'Chee Yin', 'Lim', TO_DATE('1998-09-27', 'YYYY-MM-DD'),
    'F', '011-4578233', 'cheeyin.lim@email.com', '016-3456781', 'Malaysian'
  )
  INTO Person VALUES (
    'P039', '870105-10-5544', 'Helmi', 'Azwan', TO_DATE('1987-01-05', 'YYYY-MM-DD'),
    'M', '012-8811221', 'helmi.azwan@email.com', '018-4343678', 'Malaysian'
  )
  INTO Person VALUES (
    'P040', '990319-08-1111', 'Alya', 'Marzuki', TO_DATE('1999-03-19', 'YYYY-MM-DD'),
    'F', '015-2244667', 'alya.marzuki@email.com', '017-5678932', 'Malaysian'
  )
SELECT * FROM DUAL;


--------------
--Training 0
--------------
-- Insert multiple rows into Training table using INSERT ALL
INSERT ALL
  INTO Training (
    training_id, session_code, training_title, trainer_name,
    training_duration_hours, training_date, training_venue,
    max_participants, training_cost, certification_provided
  ) VALUES (
    'TR001', 'MB-TS001', 'Food Safety & Hygiene', 'Nurul Aisyah Bakar',
    4, TO_DATE('15/01/2025', 'DD/MM/YYYY'), 'Marrybrown HQ, KL',
    30, 1200, 'Yes'
  )
  INTO Training VALUES (
    'TR002', 'MB-TS002', 'Customer Service Excellence', 'Faizal Hassan',
    3, TO_DATE('10/02/2025', 'DD/MM/YYYY'), 'JB Central Outlet',
    25, 950, 'Yes'
  )
  INTO Training VALUES (
    'TR003', 'MB-TS003', 'Equipment Handling & Safety', 'Hafiz Abdullah',
    5, TO_DATE('22/03/2025', 'DD/MM/YYYY'), 'Penang Training Centre',
    20, 1500, 'Yes'
  )
  INTO Training VALUES (
    'TR004', 'MB-TS004', 'Basic Cooking Skills', 'Chef Ramli Osman',
    6, TO_DATE('05/04/2025', 'DD/MM/YYYY'), 'Melaka Main Outlet',
    15, 1800, 'No'
  )
  INTO Training VALUES (
    'TR005', 'MB-TS005', 'POS System Operation', 'Farah Liyana Zulkifli',
    2, TO_DATE('12/05/2025', 'DD/MM/YYYY'), 'Pavilion KL Branch',
    18, 750, 'Yes'
  )
  INTO Training VALUES (
    'TR006', 'MB-TS006', 'Inventory & Stock Management', 'Daniel Hafizi',
    4, TO_DATE('20/06/2025', 'DD/MM/YYYY'), 'Kota Bharu Training Hall',
    20, 1000, 'Yes'
  )
  INTO Training VALUES (
    'TR007', 'MB-TS007', 'Emergency Response & Fire Drill', 'Aiman Rozaini',
    3, TO_DATE('07/07/2025', 'DD/MM/YYYY'), 'Seremban Safety Centre',
    40, 500, 'No'
  )
  INTO Training VALUES (
    'TR008', 'MB-TS008', 'Leadership for Shift Supervisors', 'Siti Hidayah Jamal',
    6, TO_DATE('18/08/2025', 'DD/MM/YYYY'), 'Johor Bahru HQ',
    25, 2200, 'Yes'
  )
  INTO Training VALUES (
    'TR009', 'MB-TS009', 'Halal Compliance Awareness', 'Ustaz Khairul Amin',
    2, TO_DATE('03/09/2025', 'DD/MM/YYYY'), 'Alor Setar Outlet',
    30, 600, 'Yes'
  )
  INTO Training VALUES (
    'TR010', 'MB-TS010', 'Handling Customer Complaints', 'Intan Zarina',
    3, TO_DATE('25/10/2025', 'DD/MM/YYYY'), 'Kuching Regional Office',
    20, 900, 'Yes'
  )
SELECT * FROM DUAL;

--------------
--Order 0
--------------
-- Insert multiple rows into OrderTBL using INSERT ALL and TIMESTAMP with minute set to 60 (adjusted safely)
INSERT ALL
  INTO OrderTBL (
    order_id, receipt_number, order_datetime, order_type, total_amount,
    order_status, delivery_address, special_instructions,
    estimated_delivery_time, discount_applied
  ) VALUES (
    'ORD001', 'MB-REC-0001', TO_TIMESTAMP('22/6/2025 13:00', 'DD/MM/YYYY HH24:MI'), 'Dine-In', 27.8,
    'Completed', '-', 'No mayo on burger', NULL, 0
  )
  INTO OrderTBL VALUES (
    'ORD002', 'MB-REC-0002', TO_TIMESTAMP('22/6/2025 14:00', 'DD/MM/YYYY HH24:MI'), 'Delivery', 35.6,
    'Preparing', '12 Jalan Bukit Indah, Johor Bahru', 'Extra spicy', TO_TIMESTAMP('22/6/2025 14:00', 'DD/MM/YYYY HH24:MI'), 5
  )
  INTO OrderTBL VALUES (
    'ORD003', 'MB-REC-0003', TO_TIMESTAMP('22/6/2025 15:00', 'DD/MM/YYYY HH24:MI'), 'Takeaway', 18.9,
    'Completed', '-', 'No onions in wrap', NULL, 0
  )
  INTO OrderTBL VALUES (
    'ORD004', 'MB-REC-0004', TO_TIMESTAMP('21/6/2025 19:00', 'DD/MM/YYYY HH24:MI'), 'Delivery', 42,
    'Delivered', 'B-19-3, The Ridge, KL East', 'Ring doorbell on arrival', TO_TIMESTAMP('21/6/2025 19:00', 'DD/MM/YYYY HH24:MI'), 2
  )
  INTO OrderTBL VALUES (
    'ORD005', 'MB-REC-0005', TO_TIMESTAMP('20/6/2025 11:00', 'DD/MM/YYYY HH24:MI'), 'Dine-In', 15.5,
    'Completed', '-', 'Less ice in drink', NULL, 0
  )
  INTO OrderTBL VALUES (
    'ORD006', 'MB-REC-0006', TO_TIMESTAMP('20/6/2025 21:00', 'DD/MM/YYYY HH24:MI'), 'Delivery', 39.9,
    'Cancelled', '22 Jalan Taman Damai, Melaka', '-', TO_TIMESTAMP('20/6/2025 17:00', 'DD/MM/YYYY HH24:MI'), 0
  )
  INTO OrderTBL VALUES (
    'ORD007', 'MB-REC-0007', TO_TIMESTAMP('19/6/2025 18:00', 'DD/MM/YYYY HH24:MI'), 'Delivery', 28.4,
    'Delivered', '10 Jalan Meru, Klang', 'Add ketchup packet', TO_TIMESTAMP('19/6/2025 18:00', 'DD/MM/YYYY HH24:MI'), 3
  )
  INTO OrderTBL VALUES (
    'ORD008', 'MB-REC-0008', TO_TIMESTAMP('20/6/2025 11:00', 'DD/MM/YYYY HH24:MI'), 'Supply', 1800,
    'Delivered', '15 Jalan Meru, Klang', 'Store in freezer immediately', TO_TIMESTAMP('20/6/2025 11:00', 'DD/MM/YYYY HH24:MI'), 50
  )
  INTO OrderTBL VALUES (
    'ORD009', 'MB-REC-0009', TO_TIMESTAMP('21/6/2025 12:00', 'DD/MM/YYYY HH24:MI'), 'Supply', 2150,
    'Processing', '88 Persiaran Rimba, Ipoh', 'Label boxes with expiry date', TO_TIMESTAMP('21/6/2025 12:00', 'DD/MM/YYYY HH24:MI'), 100
  )
  INTO OrderTBL VALUES (
    'ORD010', 'MB-REC-0010', TO_TIMESTAMP('25/8/2025 10:00', 'DD/MM/YYYY HH24:MI'), 'Supply', 950,
    'Delivered', 'Lot 12, Bukit Jaya, JB', 'Handle with care', TO_TIMESTAMP('25/8/2025 10:00', 'DD/MM/YYYY HH24:MI'), 25
  )
SELECT * FROM DUAL;

--------------
--Transaction 0
--------------
-- Insert multiple rows into Transaction table
INSERT ALL
  INTO Transaction (
    transaction_id, reference_id, transaction_date, transaction_amount,
    currency_type, exchange_rate, transaction_status, processing_fee,
    authorization_code, reconciliation_status
  ) VALUES (
    'TX001', 'MB-RF-0001', TO_DATE('2025-06-21', 'YYYY-MM-DD'), 42.8, 'MYR', 1, 'Completed', 0.5, 'AUTH9871', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX002', 'MB-RF-0002', TO_DATE('2025-06-21', 'YYYY-MM-DD'), 15, 'MYR', 1, 'Completed', 0.3, 'AUTH9872', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX003', 'MB-RF-0003', TO_DATE('2025-06-21', 'YYYY-MM-DD'), 38.4, 'MYR', 1, 'Cancelled', 0, '-', 'Not Reconciled'
  )
  INTO Transaction VALUES (
    'TX004', 'MB-RF-0004', TO_DATE('2025-06-20', 'YYYY-MM-DD'), 89.9, 'MYR', 1, 'Completed', 0.8, 'AUTH9873', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX005', 'MB-RF-0005', TO_DATE('2025-06-20', 'YYYY-MM-DD'), 25.6, 'MYR', 1, 'Pending', 0.4, '-', 'Pending'
  )
  INTO Transaction VALUES (
    'TX006', 'MB-RF-0006', TO_DATE('2025-06-19', 'YYYY-MM-DD'), 60, 'MYR', 1, 'Completed', 0.5, 'AUTH9874', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX007', 'MB-RF-0007', TO_DATE('2025-06-18', 'YYYY-MM-DD'), 27.5, 'MYR', 1, 'Cancelled', 0, '-', 'Not Reconciled'
  )
  INTO Transaction VALUES (
    'TX008', 'MB-RF-0008', TO_DATE('2025-06-18', 'YYYY-MM-DD'), 18.7, 'MYR', 1, 'Completed', 0.3, 'AUTH9875', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX009', 'MB-RF-0009', TO_DATE('2025-06-17', 'YYYY-MM-DD'), 100, 'MYR', 1, 'Completed', 1, 'AUTH9876', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX010', 'MB-RF-0010', TO_DATE('2025-06-17', 'YYYY-MM-DD'), 45.3, 'MYR', 1, 'Completed', 0.5, 'AUTH9877', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX011', 'MB-RF-0011', TO_DATE('2025-06-17', 'YYYY-MM-DD'), 150, 'MYR', 1, 'Completed', 1.5, 'AUTH9878', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX012', 'MB-RF-0012', TO_DATE('2025-06-16', 'YYYY-MM-DD'), 50, 'USD', 4.7, 'Completed', 1.2, 'AUTHUS001', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX013', 'MB-RF-0013', TO_DATE('2025-06-16', 'YYYY-MM-DD'), 70, 'MYR', 1, 'Cancelled', 0, '-', 'Not Reconciled'
  )
  INTO Transaction VALUES (
    'TX014', 'MB-RF-0014', TO_DATE('2025-06-16', 'YYYY-MM-DD'), 35.9, 'MYR', 1, 'Completed', 0.4, 'AUTH9879', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX015', 'MB-RF-0015', TO_DATE('2025-06-15', 'YYYY-MM-DD'), 25.5, 'MYR', 1, 'Completed', 0.3, 'AUTH9880', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX016', 'MB-RF-0016', TO_DATE('2025-06-15', 'YYYY-MM-DD'), 120, 'SGD', 3.5, 'Completed', 2, 'AUTHSGD01', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX017', 'MB-RF-0017', TO_DATE('2025-06-15', 'YYYY-MM-DD'), 60.4, 'MYR', 1, 'Completed', 0.6, 'AUTH9881', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX018', 'MB-RF-0018', TO_DATE('2025-06-20', 'YYYY-MM-DD'), 1750, 'MYR', 1, 'Completed', 5, 'AUTH123456', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX019', 'MB-RF-0019', TO_DATE('2025-08-23', 'YYYY-MM-DD'), 2050, 'MYR', 1, 'Completed', 6, 'AUTH654321', 'Reconciled'
  )
  INTO Transaction VALUES (
    'TX020', 'MB-RF-0020', TO_DATE('2025-05-29', 'YYYY-MM-DD'), 925, 'MYR', 1, 'Completed', 4, 'AUTH998877', 'Reconciled'
  )
SELECT * FROM DUAL;

--------------
--Kitchen 0
--------------
-- Insert multiple rows into Kitchen table using INSERT ALL
INSERT ALL
  INTO Kitchen (
    kitchen_id, facility_code, kitchen_type, equipment_list,
    capacity_rating, safety_compliance, last_inspection_date,
    temperature_control, waste_management, hygiene_level
  ) VALUES (
    'K001', 'MB-KT-001', 'Main Kitchen', 'Fryer, Grill, Freezer, Oven',
    'High', 'Compliant', TO_DATE('2025-05-22', 'YYYY-MM-DD'),
    'Automated', 'Scheduled Pickup', 'Excellent'
  )
  INTO Kitchen VALUES (
    'K002', 'MB-KT-002', 'Drive-Thru Kitchen', 'Fryer, Warming Rack, Ice Machine',
    'Medium', 'Compliant', TO_DATE('2025-06-01', 'YYYY-MM-DD'),
    'Manual', 'Daily Disposal', 'Good'
  )
  INTO Kitchen VALUES (
    'K003', 'MB-KT-003', 'Satellite Kitchen', 'Warmer, Toaster, Bain Marie',
    'Low', 'Compliant', TO_DATE('2025-05-30', 'YYYY-MM-DD'),
    'Manual', 'Weekly Collection', 'Excellent'
  )
  INTO Kitchen VALUES (
    'K004', 'MB-KT-004', 'Prep Station', 'Cutting Tools, Blender, Fridge',
    'Medium', 'Non-Compliant', TO_DATE('2025-04-28', 'YYYY-MM-DD'),
    'Manual', 'Irregular', 'Poor'
  )
  INTO Kitchen VALUES (
    'K005', 'MB-KT-005', 'Main Kitchen', 'Deep Fryer, Oven, Grill, Salad Chiller',
    'High', 'Compliant', TO_DATE('2025-06-10', 'YYYY-MM-DD'),
    'Automated', 'Scheduled Pickup', 'Very Good'
  )
  INTO Kitchen VALUES (
    'K006', 'MB-KT-006', 'Express Kitchen', 'Fryer, Induction Cooker, Display Fridge',
    'Medium', 'Compliant', TO_DATE('2025-06-05', 'YYYY-MM-DD'),
    'Manual', 'Daily Disposal', 'Good'
  )
  INTO Kitchen VALUES (
    'K007', 'MB-KT-007', 'Central Kitchen', 'Mixer, Conveyor Oven, Walk-In Freezer',
    'Very High', 'Compliant', TO_DATE('2025-05-18', 'YYYY-MM-DD'),
    'Automated', 'Industrial Disposal', 'Excellent'
  )
  INTO Kitchen VALUES (
    'K008', 'MB-KT-008', 'Kiosk Kitchen', 'Air Fryer, Mini Fridge, Water Boiler',
    'Low', 'Pending', TO_DATE('2025-06-12', 'YYYY-MM-DD'),
    'Manual', 'Weekly Collection', 'Satisfactory'
  )
  INTO Kitchen VALUES (
    'K009', 'MB-KT-009', 'Shared Kitchen', 'Shared Oven, Shared Sink, Shared Fridge',
    'Medium', 'Compliant', TO_DATE('2025-06-02', 'YYYY-MM-DD'),
    'Manual', 'Shared Service', 'Good'
  )
  INTO Kitchen VALUES (
    'K010', 'MB-KT-010', 'Delivery Prep Zone', 'Vacuum Sealer, Heat Lamp, Packing Station',
    'Medium', 'Compliant', TO_DATE('2025-05-25', 'YYYY-MM-DD'),
    'Controlled', 'Daily Disposal', 'Excellent'
  )
SELECT * FROM DUAL;

--------------
--Outlet 0
--------------
INSERT ALL
  INTO Outlet VALUES ('MB001', 'FRJHB001', 'Marrybrown City Square', 'Lot F5, City Square Mall, JB, Johor', '10am – 10pm', 80, TO_DATE('2022-05-01', 'YYYY-MM-DD'), '07-2233445', 1500, 12000, 'K001')
  INTO Outlet VALUES ('MB002', 'FRKL002', 'Marrybrown Mid valley', 'LG-002, Mid Valley Megamall, KL', '10am – 10pm', 120, TO_DATE('2021-11-15', 'YYYY-MM-DD'), '03-22889977', 2000, 18000, 'K002')
  INTO Outlet VALUES ('MB003', 'FRPG003', 'Marrybrown Queensbay', 'Lot G-12, Queensbay Mall, Penang', '10am – 10pm', 100, TO_DATE('2020-09-10', 'YYYY-MM-DD'), '04-6112233', 1800, 15000, 'K003')
  INTO Outlet VALUES ('MB004', 'FRSB004', 'Marrybrown KK Times', 'Lot 3F-06, KK Times Square, Kota Kinabalu', '9am – 10pm', 90, TO_DATE('2019-03-01', 'YYYY-MM-DD'), '088-321456', 1700, 13500, 'K004')
  INTO Outlet VALUES ('MB005', 'FRKT005', 'Marrybrown Aman Central', 'LG-15, Aman Central, Alor Setar, Kedah', '10am – 10pm', 70, TO_DATE('2023-01-25', 'YYYY-MM-DD'), '04-7711122', 1300, 11000, 'K005')
  INTO Outlet VALUES ('MB006', 'FRML006', 'Marrybrown Aeon Melaka', 'G22, AEON Bandaraya Melaka Shopping Centre', '10am – 10pm', 85, TO_DATE('2020-12-05', 'YYYY-MM-DD'), '06-3367890', 1600, 13800, 'K006')
  INTO Outlet VALUES ('MB007', 'FRTR007', 'Marrybrown Taiping Mall', 'Lot 1-23, Taiping Sentral Mall, Perak', '10am – 9pm', 75, TO_DATE('2021-07-17', 'YYYY-MM-DD'), '05-8089988', 1400, 12200, 'K007')
  INTO Outlet VALUES ('MB008', 'FRNS008', 'Marrybrown Bintang Plaza', 'Lot 2B, Bintang Megamall, Miri, Sarawak', '10am – 10pm', 95, TO_DATE('2018-10-12', 'YYYY-MM-DD'), '085-433211', 1900, 14800, 'K008')
  INTO Outlet VALUES ('MB009', 'FRPH009', 'Marrybrown Pavilion', 'Level 6, Pavilion Kuala Lumpur, Bukit Bintang', '10am – 10pm', 110, TO_DATE('2019-06-08', 'YYYY-MM-DD'), '03-21457788', 2100, 20000, 'K009')
  INTO Outlet VALUES ('MB010', 'FRNS010', 'Marrybrown Seri Iskandar', 'Lot 2B, Bota, Perak', '10am – 10pm', 95, TO_DATE('2019-10-12', 'YYYY-MM-DD'), '085-433325', 2200, 16000, 'K010')
SELECT * FROM DUAL;

--------------
--Customer 2
--------------

INSERT ALL
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C001', 'MBMY-1001', TO_DATE('2022-01-15', 'YYYY-MM-DD'), 320, 'Marrybrown Mid Valley',
    'No beef, Less spicy', 'January', 'WhatsApp', TO_DATE('2024-12-22', 'YYYY-MM-DD'),
    780.5, 'P001'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C002', 'MBMY-1002', TO_DATE('2021-06-10', 'YYYY-MM-DD'), 250, 'Marrybrown City Square',
    'Normal (no restrictions)', 'June', 'Email', TO_DATE('2025-03-18', 'YYYY-MM-DD'),
    560, 'P002'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C003', 'MBMY-1003', TO_DATE('2023-03-05', 'YYYY-MM-DD'), 190, 'Marrybrown Aman Central',
    'Vegetarian', 'March', 'Facebook', TO_DATE('2025-06-05', 'YYYY-MM-DD'),
    420.75, 'P003'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C004', 'MBMY-1004', TO_DATE('2022-09-28', 'YYYY-MM-DD'), 80, 'Marrybrown Queensbay',
    'No seafood', 'September', 'Instagram', TO_DATE('2025-04-11', 'YYYY-MM-DD'),
    189.9, 'P004'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C005', 'MBMY-1005', TO_DATE('2023-11-01', 'YYYY-MM-DD'), 120, 'Marrybrown Pavilion KL',
    'Gluten-free', 'November', 'Instagram', TO_DATE('2025-05-29', 'YYYY-MM-DD'),
    330.2, 'P005'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C006', 'MBMY-1006', TO_DATE('2020-07-20', 'YYYY-MM-DD'), 500, 'Marrybrown AEON Melaka',
    'No spicy food', 'July', 'WhatsApp', TO_DATE('2025-06-10', 'YYYY-MM-DD'),
    1050.00, 'P006'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C007', 'MBMY-1007', TO_DATE('2021-12-12', 'YYYY-MM-DD'), 75, 'Marrybrown Bintang Plaza',
    'Vegan', 'December', 'Email', TO_DATE('2025-05-30', 'YYYY-MM-DD'),
    210.4, 'P007'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C008', 'MBMY-1008', TO_DATE('2023-04-08', 'YYYY-MM-DD'), 310, 'Marrybrown KK Times',
    'Normal (no restrictions)', 'April', 'Facebook', TO_DATE('2025-06-15', 'YYYY-MM-DD'),
    740, 'P008'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C009', 'MBMY-1009', TO_DATE('2022-08-18', 'YYYY-MM-DD'), 400, 'Marrybrown Taiping Mall',
    'No dairy', 'August', 'Facebook', TO_DATE('2025-06-20', 'YYYY-MM-DD'),
    910.75, 'P009'
  )
  INTO Customer (
    customer_id, membership_number, registration_date, loyalty_points, preferred_outlet,
    dietary_preferences, birthday_month, communication_preference, last_visit_date,
    total_spent, person_id
  ) VALUES (
    'C010', 'MBMY-1010', TO_DATE('2023-05-25', 'YYYY-MM-DD'), 260, 'Marrybrown Sutera Mall',
    'Pescatarian', 'May', 'WhatsApp', TO_DATE('2025-06-17', 'YYYY-MM-DD'),
    645.9, 'P010'
  )
SELECT * FROM DUAL;


--------------
--Supplier 2
--------------

-- Insert multiple rows into Supplier table using INSERT ALL
INSERT ALL
  INTO Supplier (
    supplier_id, vendor_code, company_name, business_registration,
    payment_terms, delivery_lead_time, quality_certification,
    contract_start_date, contract_end_date, credit_limit, person_id
  ) VALUES (
    'S001', 'VEND-MB01', 'MyAgro Supplies Sdn Bhd', '201201234567',
    '30 days', '3 days', 'HACCP, Halal',
    TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2025-12-31', 'YYYY-MM-DD'),
    100000, 'P001'
  )
  INTO Supplier VALUES (
    'S002', 'VEND-MB02', 'FreshChick Malaysia Sdn Bhd', '201101112233',
    '60 days', '2 days', 'Halal, ISO 22000',
    TO_DATE('2022-06-15', 'YYYY-MM-DD'), TO_DATE('2025-06-14', 'YYYY-MM-DD'),
    150000, 'P002'
  )
  INTO Supplier VALUES (
    'S003', 'VEND-MB03', 'SpiceWell Enterprise', '201703456789',
    '45 days', '5 days', 'Halal certified',
    TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2026-02-28', 'YYYY-MM-DD'),
    50000, 'P003'
  )
  INTO Supplier VALUES (
    'S004', 'VEND-MB04', 'AgroVeg Sdn Bhd', '200912345678',
    '30 days', '4 days', 'MyGAP, Halal',
    TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2026-12-31', 'YYYY-MM-DD'),
    80000, 'P004'
  )
  INTO Supplier VALUES (
    'S005', 'VEND-MB05', 'Golden Oil Distributors Sdn Bhd', '201812345600',
    '60 days', '3 days', 'ISO 9001, Halal',
    TO_DATE('2023-05-10', 'YYYY-MM-DD'), TO_DATE('2026-05-09', 'YYYY-MM-DD'),
    120000, 'P005'
  )
  INTO Supplier VALUES (
    'S006', 'VEND-MB06', 'EcoPack Packaging Malaysia', '201600998877',
    '30 days', '7 days', 'ISO 14001',
    TO_DATE('2023-09-01', 'YYYY-MM-DD'), TO_DATE('2025-08-31', 'YYYY-MM-DD'),
    70000, 'P006'
  )
  INTO Supplier VALUES (
    'S007', 'VEND-MB07', 'Maju Frozen Food Sdn Bhd', '201410112233',
    '90 days', '2 days', 'HACCP, Halal',
    TO_DATE('2022-11-01', 'YYYY-MM-DD'), TO_DATE('2025-10-31', 'YYYY-MM-DD'),
    200000, 'P007'
  )
  INTO Supplier VALUES (
    'S008', 'VEND-MB08', 'SweetTaste Ingredients', '201501122334',
    '45 days', '6 days', 'Halal certified',
    TO_DATE('2023-04-20', 'YYYY-MM-DD'), TO_DATE('2026-04-19', 'YYYY-MM-DD'),
    65000, 'P008'
  )
  INTO Supplier VALUES (
    'S009', 'VEND-MB09', 'CleanPro Hygiene Sdn Bhd', '201309988776',
    '30 days', '3 days', 'ISO 9001',
    TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2026-06-30', 'YYYY-MM-DD'),
    40000, 'P009'
  )
  INTO Supplier VALUES (
    'S010', 'VEND-MB10', 'ColdChain Express Malaysia', '202001223344',
    '60 days', '1 day', 'GDP, Halal',
    TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2027-02-14', 'YYYY-MM-DD'),
    180000, 'P010'
  )
SELECT * FROM DUAL;

--------------
--Employee 4
--------------

-- Insert multiple rows into Employee table using INSERT ALL
INSERT ALL
  INTO Employee (employee_id, staff_number, hire_date, base_salary, performance_rating, years_of_experience, reporting_manager, person_id)
  VALUES ('E001', 'MB-STF001', TO_DATE('2021-02-01', 'YYYY-MM-DD'), 3200, 4.5, 5, 'Amirul Zahari', 'P001')
  INTO Employee VALUES ('E002', 'MB-STF002', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 2000, 4, 2, 'Siti Khalid', 'P002')
  INTO Employee VALUES ('E003', 'MB-STF003', TO_DATE('2020-11-10', 'YYYY-MM-DD'), 2200, 3.8, 3, 'Hafiz Abdullah', 'P003')
  INTO Employee VALUES ('E004', 'MB-STF004', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 3800, 4.7, 4, 'Hidayah Noraini', 'P004')
  INTO Employee VALUES ('E005', 'MB-STF005', TO_DATE('2019-09-01', 'YYYY-MM-DD'), 5500, 4.9, 8, 'Faizal Rahimi', 'P005')
  INTO Employee VALUES ('E006', 'MB-STF006', TO_DATE('2021-05-25', 'YYYY-MM-DD'), 3600, 4.2, 4, 'Firdaus Hassan', 'P006')
  INTO Employee VALUES ('E007', 'MB-STF007', TO_DATE('2022-01-11', 'YYYY-MM-DD'), 3900, 4.4, 3, 'Intan Zarina', 'P007')
  INTO Employee VALUES ('E008', 'MB-STF008', TO_DATE('2023-06-05', 'YYYY-MM-DD'), 3000, 4.1, 2, 'Syafiq Razak', 'P008')
  INTO Employee VALUES ('E009', 'MB-STF009', TO_DATE('2020-10-18', 'YYYY-MM-DD'), 1800, 3.6, 5, 'Azira Nasreen', 'P009')
  INTO Employee VALUES ('E010', 'MB-STF010', TO_DATE('2018-04-12', 'YYYY-MM-DD'), 4200, 4.8, 6, 'Shahril Jamaluddin', 'P010')
  INTO Employee VALUES ('E011', 'MB-STF011', TO_DATE('2022-08-10', 'YYYY-MM-DD'), 2600, 4, 3, 'Hafiz Abdullah', 'P011')
  INTO Employee VALUES ('E012', 'MB-STF012', TO_DATE('2019-01-05', 'YYYY-MM-DD'), 4300, 4.6, 6, 'Amirul Zahari', 'P012')
  INTO Employee VALUES ('E013', 'MB-STF013', TO_DATE('2023-02-27', 'YYYY-MM-DD'), 2100, 3.9, 2, 'Siti Khalid', 'P013')
  INTO Employee VALUES ('E014', 'MB-STF014', TO_DATE('2020-07-01', 'YYYY-MM-DD'), 3300, 4.3, 5, 'Shahril Jamaluddin', 'P014')
  INTO Employee VALUES ('E015', 'MB-STF015', TO_DATE('2021-10-12', 'YYYY-MM-DD'), 3700, 4.2, 4, 'Hidayah Noraini', 'P015')
  INTO Employee VALUES ('E016', 'MB-STF016', TO_DATE('2022-03-18', 'YYYY-MM-DD'), 4000, 4.5, 3, 'Intan Zarina', 'P016')
  INTO Employee VALUES ('E017', 'MB-STF017', TO_DATE('2020-05-22', 'YYYY-MM-DD'), 1900, 3.7, 6, 'Azira Nasreen', 'P017')
  INTO Employee VALUES ('E018', 'MB-STF018', TO_DATE('2018-11-03', 'YYYY-MM-DD'), 4500, 4.8, 7, 'Firdaus Hassan', 'P018')
  INTO Employee VALUES ('E019', 'MB-STF019', TO_DATE('2021-04-28', 'YYYY-MM-DD'), 2500, 4, 4, 'Syafiq Razak', 'P019')
  INTO Employee VALUES ('E020', 'MB-STF020', TO_DATE('2023-09-09', 'YYYY-MM-DD'), 4100, 4.6, 2, 'Intan Zarina', 'P020')
SELECT * FROM DUAL;
--------------
--Staff 2
--------------
-- Insert multiple rows into Staff table using INSERT ALL
INSERT ALL
  INTO Staff (
    staff_id, worker_code, skill_level, hourly_rate, flexible_hours,
    uniform_size, equipment_assigned, safety_training_date,
    performance_incentive, cross_training_areas, employee_id
  ) VALUES (
    'ST001', 'MB-WK001', 'Intermediate', 9.5, 'Yes', 'M', 'Fryer, Cash Register',
    TO_DATE('2023-01-10', 'YYYY-MM-DD'), 150, 'Cashier, Server', 'E001'
  )
  INTO Staff VALUES (
    'ST002', 'MB-WK002', 'Beginner', 8, 'No', 'L', 'Mop, Cleaning Kit',
    TO_DATE('2022-12-01', 'YYYY-MM-DD'), 80, 'Kitchen Assistant', 'E002'
  )
  INTO Staff VALUES (
    'ST003', 'MB-WK003', 'Advanced', 11, 'Yes', 'XL', 'POS System, Tablet',
    TO_DATE('2023-03-05', 'YYYY-MM-DD'), 200, 'Supervisor, Inventory', 'E003'
  )
  INTO Staff VALUES (
    'ST004', 'MB-WK004', 'Beginner', 8.5, 'Yes', 'M', 'Serving Tray, Apron',
    TO_DATE('2024-02-15', 'YYYY-MM-DD'), 90, 'Runner, Dining Area Cleaner', 'E004'
  )
  INTO Staff VALUES (
    'ST005', 'MB-WK005', 'Intermediate', 9.2, 'No', 'L', 'Deep Fryer, Gloves',
    TO_DATE('2023-06-18', 'YYYY-MM-DD'), 130, 'Kitchen Prep, Sauce Station', 'E005'
  )
  INTO Staff VALUES (
    'ST006', 'MB-WK006', 'Advanced', 10.8, 'Yes', 'S', 'Delivery Box, Helmet',
    TO_DATE('2022-11-22', 'YYYY-MM-DD'), 220, 'Delivery, POS Operation', 'E006'
  )
  INTO Staff VALUES (
    'ST007', 'MB-WK007', 'Beginner', 8, 'No', 'M', 'Broom, Sanitizer Kit',
    TO_DATE('2023-08-10', 'YYYY-MM-DD'), 75, 'Janitorial, Restocking', 'E007'
  )
  INTO Staff VALUES (
    'ST008', 'MB-WK008', 'Intermediate', 9.7, 'Yes', 'XL', 'Grill, Food Thermometer',
    TO_DATE('2023-05-05', 'YYYY-MM-DD'), 145, 'Grill Station, Kitchen Assistant', 'E008'
  )
  INTO Staff VALUES (
    'ST009', 'MB-WK009', 'Advanced', 11.5, 'No', 'L', 'Inventory Scanner, Tablet',
    TO_DATE('2024-01-20', 'YYYY-MM-DD'), 250, 'Inventory, Scheduling', 'E009'
  )
  INTO Staff VALUES (
    'ST010', 'MB-WK010', 'Intermediate', 9, 'Yes', 'M', 'Sauce Gun, Packing Tools',
    TO_DATE('2023-07-12', 'YYYY-MM-DD'), 110, 'Packaging, Order Fulfillment', 'E010'
  )
SELECT * FROM DUAL;

--------------
--Manager 2
--------------

-- Insert multiple rows into Manager table using INSERT ALL
INSERT ALL
  INTO Manager (
    manager_id, management_code, management_level, team_size, budget_authority,
    kpi_target, bonus_eligibility, leadership_training, decision_making_power,
    regional_responsibility, employee_id
  ) VALUES (
    'MGR001', 'MG-MB001', 'Restaurant Manager', 20, 500000,
    95, 'Yes', TO_DATE('2023-03-10', 'YYYY-MM-DD'), 'High',
    'Central Kuala Lumpur', 'E001'
  )
  INTO Manager VALUES (
    'MGR002', 'MG-MB002', 'Assistant Manager', 12, 200000,
    90, 'Yes', TO_DATE('2022-12-15', 'YYYY-MM-DD'), 'Medium',
    'Johor Bahru', 'E002'
  )
  INTO Manager VALUES (
    'MGR003', 'MG-MB003', 'Shift Manager', 35, 750000,
    92, 'Yes', TO_DATE('2023-05-20', 'YYYY-MM-DD'), 'High',
    'Penang & Perak', 'E003'
  )
  INTO Manager VALUES (
    'MGR004', 'MG-MB004', 'Assistant Manager', 18, 300000,
    88, 'Yes', TO_DATE('2024-01-11', 'YYYY-MM-DD'), 'Medium',
    'Melaka', 'E004'
  )
  INTO Manager VALUES (
    'MGR005', 'MG-MB005', 'Shift Manager', 50, 1200000,
    96, 'Yes', TO_DATE('2023-07-25', 'YYYY-MM-DD'), 'High',
    'Southern Malaysia Region', 'E005'
  )
  INTO Manager VALUES (
    'MGR006', 'MG-MB006', 'Assistant Manager', 15, 180000,
    85, 'No', TO_DATE('2022-10-05', 'YYYY-MM-DD'), 'Medium',
    'Kedah & Perlis', 'E006'
  )
  INTO Manager VALUES (
    'MGR007', 'MG-MB007', 'Shift Manager', 8, 80000,
    83, 'No', TO_DATE('2023-02-18', 'YYYY-MM-DD'), 'Low',
    'Taiping', 'E007'
  )
  INTO Manager VALUES (
    'MGR008', 'MG-MB008', 'Restaurant Manager', 10, 100000,
    87, 'No', TO_DATE('2023-09-01', 'YYYY-MM-DD'), 'Medium',
    'Kota Bharu', 'E008'
  )
  INTO Manager VALUES (
    'MGR009', 'MG-MB009', 'Assistant Manager', 22, 350000,
    91, 'Yes', TO_DATE('2024-04-12', 'YYYY-MM-DD'), 'Medium',
    'Negeri Sembilan', 'E009'
  )
  INTO Manager VALUES (
    'MGR010', 'MG-MB010', 'Restaurant Manager', 40, 950000,
    94, 'Yes', TO_DATE('2023-11-30', 'YYYY-MM-DD'), 'High',
    'Sabah & Sarawak', 'E010'
  )
SELECT * FROM DUAL;

--------------
--Document 2
--------------
-- Insert into Document Table
INSERT ALL
  INTO Document (document_id, file_reference, document_title, creation_date, document_type,
                 file_format, file_size_mb, access_level, expiry_date, digital_signature)
  VALUES ('DOC001', 'MB-OPS-2024-001', 'Standard Operating Procedure – Kitchen', TO_DATE('2024-01-05','YYYY-MM-DD'), 'SOP', 'PDF', 2.4, 'Manager Only', TO_DATE('2026-01-05','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC002', 'MB-HR-2023-012', 'Employee Code of Conduct', TO_DATE('2023-03-12','YYYY-MM-DD'), 'HR Policy', 'PDF', 1.8, 'All Staff', TO_DATE('2026-03-12','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC003', 'MB-TRN-2025-004', 'Fire Safety Training Guide', TO_DATE('2025-02-18','YYYY-MM-DD'), 'Training Manual', 'PPTX', 5.6, 'Supervisor', TO_DATE('2027-02-18','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC004', 'MB-FIN-2023-008', 'Q4 Financial Summary Report', TO_DATE('2023-12-20','YYYY-MM-DD'), 'Financial Report', 'XLSX', 3.2, 'Management', TO_DATE('2026-12-20','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC005', 'MB-MKT-2024-003', 'Annual Marketing Strategy 2024', TO_DATE('2024-02-01','YYYY-MM-DD'), 'Marketing Plan', 'DOCX', 1.9, 'Manager Only', TO_DATE('2025-12-31','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC006', 'MB-HR-2022-005', 'Staff Appraisal Form Template', TO_DATE('2022-08-10','YYYY-MM-DD'), 'HR Form', 'DOCX', 0.9, 'HR Only', TO_DATE('2025-08-10','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC007', 'MB-PUR-2024-006', 'Supplier Contract – FreshChick Sdn Bhd', TO_DATE('2024-03-15','YYYY-MM-DD'), 'Contract', 'PDF', 2.7, 'Procurement', TO_DATE('2026-03-15','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC008', 'MB-MGT-2023-014', 'Monthly Operations Review (Sept 2023)', TO_DATE('2023-09-30','YYYY-MM-DD'), 'Review Report', 'PDF', 1.2, 'Management', TO_DATE('2026-09-30','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC009', 'MB-QA-2025-002', 'Quality Assurance Checklist', TO_DATE('2025-01-25','YYYY-MM-DD'), 'QA Checklist', 'XLSX', 1.5, 'Supervisor', TO_DATE('2027-01-25','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC010', 'MB-TRN-2024-007', 'POS System Training Slides', TO_DATE('2024-06-05','YYYY-MM-DD'), 'Training Material', 'PPTX', 4.4, 'All Staff', TO_DATE('2027-06-05','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC011', 'MB-LGL-2023-010', 'Franchise Agreement – MB Penang', TO_DATE('2023-04-11','YYYY-MM-DD'), 'Legal Contract', 'PDF', 3.9, 'Legal Dept', TO_DATE('2028-04-11','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC012', 'MB-FIN-2022-003', 'Annual Budget Report 2022', TO_DATE('2022-01-20','YYYY-MM-DD'), 'Financial Report', 'XLSX', 3.5, 'Management', TO_DATE('2025-01-20','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC013', 'MB-HSE-2024-001', 'Hygiene & Sanitation SOP', TO_DATE('2024-07-01','YYYY-MM-DD'), 'SOP', 'PDF', 2.2, 'Kitchen Staff', TO_DATE('2026-07-01','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC014', 'MB-PRO-2023-015', 'Product Launch Plan – New Menu 2023', TO_DATE('2023-08-18','YYYY-MM-DD'), 'Project Plan', 'DOCX', 2.1, 'Marketing', TO_DATE('2025-08-18','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC015', 'MB-IT-2024-009', 'Network Infrastructure Layout', TO_DATE('2024-05-09','YYYY-MM-DD'), 'Technical Drawing', 'PNG', 3.8, 'IT Dept Only', TO_DATE('2027-05-09','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC016', 'MB-MGT-2023-005', 'Outlet Performance Dashboard', TO_DATE('2023-10-22','YYYY-MM-DD'), 'Analytics Report', 'XLSX', 2.0, 'Regional Mgr', TO_DATE('2025-10-22','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC017', 'MB-SCM-2024-010', 'Inventory Audit Report – Q1', TO_DATE('2024-04-17','YYYY-MM-DD'), 'Inventory Report', 'PDF', 2.6, 'SCM Dept', TO_DATE('2025-04-17','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC018', 'MB-HR-2025-011', 'Leave Application Form', TO_DATE('2025-03-01','YYYY-MM-DD'), 'HR Form', 'DOCX', 0.6, 'All Staff', TO_DATE('2028-03-01','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC019', 'MB-MKT-2024-013', 'Social Media Content Calendar', TO_DATE('2024-08-05','YYYY-MM-DD'), 'Calendar Template', 'XLSX', 1.7, 'Marketing', TO_DATE('2025-08-05','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC020', 'MB-QC-2025-008', 'Daily Food Quality Inspection Form', TO_DATE('2025-06-10','YYYY-MM-DD'), 'QC Log', 'PDF', 1.3, 'Outlet Manager', TO_DATE('2025-12-31','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC021', 'MB-IT-2025-002', 'IT System Upgrade Plan', TO_DATE('2025-01-20','YYYY-MM-DD'), 'Project Plan', 'DOCX', 1.4, 'IT Dept Only', TO_DATE('2026-01-20','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC022', 'MB-HR-2024-006', 'Salary Increment Guidelines', TO_DATE('2024-04-01','YYYY-MM-DD'), 'HR Policy', 'PDF', 1.2, 'HR Only', TO_DATE('2026-04-01','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC023', 'MB-OPS-2023-009', 'Night Shift Operations SOP', TO_DATE('2023-10-10','YYYY-MM-DD'), 'SOP', 'PDF', 2.1, 'Manager Only', TO_DATE('2025-10-10','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC024', 'MB-TRN-2024-011', 'New Employee Orientation Slide Deck', TO_DATE('2024-09-05','YYYY-MM-DD'), 'Training Material', 'PPTX', 5.0, 'All Staff', TO_DATE('2026-09-05','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC025', 'MB-FIN-2023-015', 'Monthly Expense Report – Nov 2023', TO_DATE('2023-11-30','YYYY-MM-DD'), 'Financial Report', 'XLSX', 2.3, 'Finance Dept', TO_DATE('2026-11-30','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC026', 'MB-SCM-2025-005', 'Frozen Goods Supply Agreement', TO_DATE('2025-03-25','YYYY-MM-DD'), 'Contract', 'PDF', 3.0, 'Procurement', TO_DATE('2027-03-25','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC027', 'MB-MKT-2024-008', 'Branding Guidelines Manual', TO_DATE('2024-07-22','YYYY-MM-DD'), 'Marketing Document', 'PDF', 4.2, 'Marketing Dept', TO_DATE('2026-07-22','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC028', 'MB-LGL-2023-016', 'Outlet Lease Agreement – Ipoh', TO_DATE('2023-02-18','YYYY-MM-DD'), 'Legal Document', 'PDF', 2.8, 'Legal Dept', TO_DATE('2028-02-18','YYYY-MM-DD'), 'Yes')
  INTO Document VALUES ('DOC029', 'MB-ENG-2024-004', 'Kitchen Equipment Maintenance Schedule', TO_DATE('2024-06-30','YYYY-MM-DD'), 'Maintenance Record', 'XLSX', 1.7, 'Engineering Team', TO_DATE('2025-06-30','YYYY-MM-DD'), 'No')
  INTO Document VALUES ('DOC030', 'MB-IT-2023-012', 'Cybersecurity Policy', TO_DATE('2023-12-05','YYYY-MM-DD'), 'IT Policy', 'PDF', 1.6, 'All Departments', TO_DATE('2026-12-05','YYYY-MM-DD'), 'Yes')
SELECT * FROM DUAL;

--------------
--Certification 2
--------------
INSERT ALL
  INTO Certificate (certificate_id, cert_number, certificate_name, issuing_authority, issue_date,
                    validity_period, renewal_required, compliance_type, verification_status,
                    associated_standard, document_id)
    VALUES ('CERT001', 'MB-CERT-2024-001', 'Halal Certification', 'JAKIM', TO_DATE('2024-02-15','YYYY-MM-DD'), '2 years', 'Yes', 'Religious Compliance', 'Verified', 'MS 1500:2019', 'DOC001')
  INTO Certificate VALUES ('CERT002', 'MB-CERT-2023-002', 'HACCP Certification', 'Ministry of Health (MOH)', TO_DATE('2023-08-01','YYYY-MM-DD'), '3 years', 'Yes', 'Food Safety', 'Verified', 'HACCP Codex Alimentarius', 'DOC002')
  INTO Certificate VALUES ('CERT003', 'MB-CERT-2023-003', 'ISO 22000 – Food Safety Management', 'SIRIM', TO_DATE('2023-05-12','YYYY-MM-DD'), '3 years', 'Yes', 'Food Safety', 'Verified', 'ISO 22000:2018', 'DOC003')
  INTO Certificate VALUES ('CERT004', 'MB-CERT-2024-004', 'Fire Safety Compliance', 'BOMBA Malaysia', TO_DATE('2024-01-10','YYYY-MM-DD'), '1 year', 'Yes', 'Safety', 'Pending', 'BOMBA Regulation 1988', 'DOC004')
  INTO Certificate VALUES ('CERT005', 'MB-CERT-2022-005', 'Business Premise License', 'MBJB (Johor Bahru)', TO_DATE('2022-07-25','YYYY-MM-DD'), '1 year', 'Yes', 'Regulatory', 'Verified', 'Local Council Guidelines', 'DOC005')
  INTO Certificate VALUES ('CERT006', 'MB-CERT-2024-006', 'ISO 9001 – Quality Management', 'SIRIM', TO_DATE('2024-04-01','YYYY-MM-DD'), '3 years', 'Yes', 'Quality Assurance', 'Verified', 'ISO 9001:2015', 'DOC006')
  INTO Certificate VALUES ('CERT007', 'MB-CERT-2023-007', 'Food Handler Training Certificate', 'Ministry of Health (MOH)', TO_DATE('2023-11-20','YYYY-MM-DD'), '3 years', 'Yes', 'Staff Compliance', 'Verified', 'Food Act 1983 (Sec. 30)', 'DOC007')
  INTO Certificate VALUES ('CERT008', 'MB-FNB-002', 'Hygiene & Sanitation Level 1', 'Marrybrown Training HQ', TO_DATE('2025-03-10','YYYY-MM-DD'), '1 year', 'Yes', 'Operational Hygiene', 'Verified', 'ISO 22000', 'DOC008')
  INTO Certificate VALUES ('CERT009', 'MB-FNB-003', 'Kitchen Safety Training', 'SafeServe Malaysia', TO_DATE('2025-05-05','YYYY-MM-DD'), '3 years', 'No', 'Workplace Safety', 'Pending', 'OSHA Guidelines (F&B)', 'DOC009')
  INTO Certificate VALUES ('CERT010', 'MB-CERT-2022-010', 'Cold Chain Logistics Compliance', 'Cold Chain Malaysia Assoc', TO_DATE('2022-09-30','YYYY-MM-DD'), '2 years', 'Yes', 'Logistics', 'Expired', 'CCM Best Practices', 'DOC010')
SELECT * FROM DUAL;
	
--------------
--Salary 2
--------------
INSERT ALL
  INTO Salary (salary_id, payroll_number, basic_pay, allowances, deductions, net_pay, pay_date, tax_deducted, epf_contribution, socso_contribution, document_id)
    VALUES ('SAL001', 'MB-PAY001', 2500, 300, 120, 2680, TO_DATE('2025-06-28','YYYY-MM-DD'), 80, 275, 10.6, 'DOC001')
  INTO Salary VALUES ('SAL002', 'MB-PAY002', 3200, 400, 200, 3400, TO_DATE('2025-06-28','YYYY-MM-DD'), 100, 352, 12.35, 'DOC002')
  INTO Salary VALUES ('SAL003', 'MB-PAY003', 1800, 150, 90, 1860, TO_DATE('2025-06-28','YYYY-MM-DD'), 50, 198, 9.2, 'DOC003')
  INTO Salary VALUES ('SAL004', 'MB-PAY004', 4000, 500, 250, 4250, TO_DATE('2025-06-28','YYYY-MM-DD'), 150, 440, 15.1, 'DOC004')
  INTO Salary VALUES ('SAL005', 'MB-PAY005', 2200, 200, 100, 2300, TO_DATE('2025-06-28','YYYY-MM-DD'), 60, 242, 10, 'DOC005')
  INTO Salary VALUES ('SAL006', 'MB-PAY006', 2700, 350, 150, 2900, TO_DATE('2025-06-28','YYYY-MM-DD'), 90, 297, 11.75, 'DOC006')
  INTO Salary VALUES ('SAL007', 'MB-PAY007', 3500, 600, 180, 3920, TO_DATE('2025-06-28','YYYY-MM-DD'), 120, 385, 13.2, 'DOC007')
  INTO Salary VALUES ('SAL008', 'MB-PAY008', 1600, 100, 80, 1620, TO_DATE('2025-06-28','YYYY-MM-DD'), 40, 176, 8.4, 'DOC008')
  INTO Salary VALUES ('SAL009', 'MB-PAY009', 2900, 450, 170, 3180, TO_DATE('2025-06-28','YYYY-MM-DD'), 95, 319, 11.9, 'DOC009')
  INTO Salary VALUES ('SAL010', 'MB-PAY010', 3000, 500, 200, 3300, TO_DATE('2025-06-28','YYYY-MM-DD'), 110, 330, 12.6, 'DOC010')
SELECT * FROM DUAL;

--------------
--Timesheet 2
--------------
INSERT ALL
  INTO Timesheet (timesheet_id, period_code, work_period, total_hours_worked, overtime_hours, break_duration, approval_status, submission_date, approved_by, pay_period, document_id)
    VALUES ('TS001', 'MB-P01-2025', '01–15 June 2025', 88, 6, 8, 'Approved', TO_DATE('2025-06-16','YYYY-MM-DD'), 'Amirul Zahari', '16–30 June 2025', 'DOC001')
  INTO Timesheet VALUES ('TS002', 'MB-P02-2025', '01–15 June 2026', 92, 10, 7.5, 'Approved', TO_DATE('2025-06-16','YYYY-MM-DD'), 'Siti Khalid', '16–30 June 2025', 'DOC002')
  INTO Timesheet VALUES ('TS003', 'MB-P01-2025', '01–15 June 2027', 80, 4, 6, 'Pending', TO_DATE('2025-06-15','YYYY-MM-DD'), 'Amirul Zahari', '16–30 June 2025', 'DOC003')
  INTO Timesheet VALUES ('TS004', 'MB-P02-2025', '16–30 May 2025', 95, 8, 8, 'Approved', TO_DATE('2025-06-01','YYYY-MM-DD'), 'Faizal Rahimi', '01–15 June 2025', 'DOC004')
  INTO Timesheet VALUES ('TS005', 'MB-P01-2025', '01–15 June 2025', 78, 3, 6.5, 'Approved', TO_DATE('2025-06-16','YYYY-MM-DD'), 'Hafiz Abdullah', '16–30 June 2025', 'DOC005')
  INTO Timesheet VALUES ('TS006', 'MB-P01-2025', '01–15 June 2026', 85, 5, 7, 'Approved', TO_DATE('2025-06-15','YYYY-MM-DD'), 'Hidayah Noraini', '16–30 June 2025', 'DOC006')
  INTO Timesheet VALUES ('TS007', 'MB-P02-2025', '16–30 May 2025', 90, 7, 6, 'Rejected', TO_DATE('2025-06-01','YYYY-MM-DD'), 'Rejected by System', '01–15 June 2025', 'DOC007')
  INTO Timesheet VALUES ('TS008', 'MB-P01-2025', '01–15 June 2025', 88, 4, 8, 'Approved', TO_DATE('2025-06-16','YYYY-MM-DD'), 'Intan Zarina', '16–30 June 2025', 'DOC008')
  INTO Timesheet VALUES ('TS009', 'MB-P02-2025', '16–30 May 2025', 100, 12, 8, 'Approved', TO_DATE('2025-06-01','YYYY-MM-DD'), 'Firdaus Hassan', '01–15 June 2025', 'DOC009')
  INTO Timesheet VALUES ('TS010', 'MB-P01-2025', '01–15 June 2025', 82, 3, 6.5, 'Approved', TO_DATE('2025-06-15','YYYY-MM-DD'), 'Shahril Jamaluddin', '16–30 June 2025', 'DOC010')
SELECT * FROM DUAL;

--------------
--Menu 2
--------------
-- Insert multiple rows into Menu table using INSERT ALL
INSERT ALL
  INTO Menu (
    menu_id, item_code, item_name, category_type, selling_price,
    preparation_time_minutes, calorie_count, spice_level, availability_status,
    promotional_tag, outlet_id
  ) VALUES (
    'M001', 'MB-IC001', 'Nasi Ayam Marrybrown', 'Rice Meals', 13.9,
    10, 650, 'Medium', 'Available', 'Signature Dish', 'MB001'
  )
  INTO Menu VALUES (
    'M002', 'MB-BG002', 'Classic Chicken Burger', 'Burger', 9.9,
    6, 480, 'Mild', 'Available', 'Customer Favourite', 'MB002'
  )
  INTO Menu VALUES (
    'M003', 'MB-WP003', 'Cheesy Wedges', 'Sides', 6.5,
    4, 350, 'None', 'Available', 'Limited Time Offer', 'MB003'
  )
  INTO Menu VALUES (
    'M004', 'MB-BF004', 'Marrybrown Breakfast Set', 'Breakfast', 10.5,
    7, 520, 'Mild', 'Available (AM only)', 'Morning Special', 'MB004'
  )
  INTO Menu VALUES (
    'M005', 'MB-DR005', 'Milo Ice', 'Beverage', 3.9,
    2, 180, 'None', 'Available', 'Value Drink', 'MB005'
  )
  INTO Menu VALUES (
    'M006', 'MB-IC006', 'Nasi Kari Ayam MB', 'Rice Meals', 14.5,
    12, 700, 'High', 'Available', 'Spicy Lovers', 'MB006'
  )
  INTO Menu VALUES (
    'M007', 'MB-BG007', 'Tower Double Burger', 'Burger', 15.9,
    8, 780, 'Medium', 'Limited Stock', 'New Arrival', 'MB007'
  )
  INTO Menu VALUES (
    'M008', 'MB-DZ008', 'Churros with Chocolate', 'Dessert', 7.9,
    5, 410, 'None', 'Available', 'Sweet Treat', 'MB008'
  )
  INTO Menu VALUES (
    'M009', 'MB-DR009', 'Teh Tarik Float', 'Beverage', 4.5,
    3, 220, 'None', 'Available', 'Best Seller', 'MB009'
  )
  INTO Menu VALUES (
    'M010', 'MB-CH010', 'Spicy Chicken Strips', 'Chicken', 11.9,
    6, 540, 'High', 'Available', 'Hot & Crispy', 'MB010'
  )
SELECT * FROM DUAL;

--------------
--Payment 2
--------------
-- Insert multiple rows into Payment table using INSERT ALL
INSERT ALL
  INTO Payment (
    payment_id, receipt_id, amount, payment_time, transaction_type, payment_method,
    cash_or_card, payment_status, change_given, currency_paid, transaction_id
  ) VALUES ('PAY001', 'MB-REC-0001', 27.8, TO_TIMESTAMP('2025-06-22 12:07', 'YYYY-MM-DD HH24:MI'), 'Sale', 'Touch ‘‘n Go', 'Cash', 'Successful', 0, 'MYR', 'TX001')
  INTO Payment VALUES ('PAY002', 'MB-REC-0002', 35.6, TO_TIMESTAMP('2025-06-22 13:18', 'YYYY-MM-DD HH24:MI'), 'Sale', 'GrabPay', 'Card', 'Successful', 0, 'MYR', 'TX002')
  INTO Payment VALUES ('PAY003', 'MB-REC-0003', 18.9, TO_TIMESTAMP('2025-06-22 14:33', 'YYYY-MM-DD HH24:MI'), 'Sale', 'Cash', 'Cash', 'Successful', 1.1, 'MYR', 'TX003')
  INTO Payment VALUES ('PAY004', 'MB-REC-0004', 42, TO_TIMESTAMP('2025-06-21 18:48', 'YYYY-MM-DD HH24:MI'), 'Sale', 'Debit Card', 'Card', 'Successful', 0, 'MYR', 'TX004')
  INTO Payment VALUES ('PAY005', 'MB-REC-0005', 15.5, TO_TIMESTAMP('2025-06-20 10:12', 'YYYY-MM-DD HH24:MI'), 'Sale', 'Cash', 'Cash', 'Successful', 4.5, 'MYR', 'TX005')
  INTO Payment VALUES ('PAY006', 'MB-REC-0006', 39.9, TO_TIMESTAMP('2025-06-20 20:28', 'YYYY-MM-DD HH24:MI'), 'Sale', 'Credit Card', 'Card', 'Cancelled', 0, 'MYR', 'TX006')
  INTO Payment VALUES ('PAY007', 'MB-REC-0007', 28.4, TO_TIMESTAMP('2025-06-19 17:03', 'YYYY-MM-DD HH24:MI'), 'Sale', 'Cash', 'Cash', 'Successful', 1.6, 'MYR', 'TX007')
  INTO Payment VALUES ('PAY008', 'MB-REC-0008', 1750, TO_TIMESTAMP('2025-06-20 10:25', 'YYYY-MM-DD HH24:MI'), 'Full', 'FPX', 'Card', 'Successful', 0, 'MYR', 'TX008')
  INTO Payment VALUES ('PAY009', 'MB-REC-0009', 2050, TO_TIMESTAMP('2025-08-23 12:00', 'YYYY-MM-DD HH24:MI'), 'Full', 'FPX', 'Card', 'Successful', 0, 'MYR', 'TX009')
  INTO Payment VALUES ('PAY010', 'MB-REC-0010', 925, TO_TIMESTAMP('2025-10-22 00:00', 'YYYY-MM-DD HH24:MI'), 'Full', 'FPX', 'Card', 'Successful', 0, 'MYR', 'TX010')
SELECT * FROM DUAL;
--------------
--Purchase 2
--------------
-- Insert multiple rows into Purchase table using INSERT ALL
INSERT ALL
  INTO Purchase (
    purchase_id, po_number, purchase_date, purchase_amount, vendor_name, approval_status,
    delivery_date, invoice_number, payment_due_date, tax_amount, transaction_id
  ) VALUES ('PUR001', 'PO223001', TO_DATE('2025-06-10', 'YYYY-MM-DD'), 3200, 'Marrybrown Seri Iskandar', 'Approved', TO_DATE('2025-06-12', 'YYYY-MM-DD'), 'MBINV001', TO_DATE('2025-06-25', 'YYYY-MM-DD'), 150, 'TX001')
  INTO Purchase VALUES ('PUR002', 'PO223002', TO_DATE('2025-06-11', 'YYYY-MM-DD'), 2850, 'Marrybrown Ipoh', 'Approved', TO_DATE('2025-06-13', 'YYYY-MM-DD'), 'MBINV002', TO_DATE('2025-06-26', 'YYYY-MM-DD'), 130, 'TX002')
  INTO Purchase VALUES ('PUR003', 'PO223003', TO_DATE('2025-06-12', 'YYYY-MM-DD'), 4100, 'Marrybrown Tapah', 'Approved', TO_DATE('2025-06-14', 'YYYY-MM-DD'), 'MBINV003', TO_DATE('2025-06-27', 'YYYY-MM-DD'), 200, 'TX003')
  INTO Purchase VALUES ('PUR004', 'PO223004', TO_DATE('2025-06-13', 'YYYY-MM-DD'), 1950, 'Marrybrown Georgetown', 'Approved', TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'MBINV004', TO_DATE('2025-06-28', 'YYYY-MM-DD'), 90, 'TX004')
  INTO Purchase VALUES ('PUR005', 'PO223005', TO_DATE('2025-06-14', 'YYYY-MM-DD'), 2250, 'Marrybrown TTDI', 'Approved', TO_DATE('2025-06-16', 'YYYY-MM-DD'), 'MBINV005', TO_DATE('2025-06-29', 'YYYY-MM-DD'), 100, 'TX005')
  INTO Purchase VALUES ('PUR006', 'PO223006', TO_DATE('2025-06-15', 'YYYY-MM-DD'), 3750, 'Marrybrown Semenyih', 'Approved', TO_DATE('2025-06-17', 'YYYY-MM-DD'), 'MBINV006', TO_DATE('2025-06-30', 'YYYY-MM-DD'), 175, 'TX006')
  INTO Purchase VALUES ('PUR007', 'PO223007', TO_DATE('2025-06-16', 'YYYY-MM-DD'), 3100, 'Marrybrown Kajang', 'Approved', TO_DATE('2025-06-18', 'YYYY-MM-DD'), 'MBINV007', TO_DATE('2025-07-01', 'YYYY-MM-DD'), 140, 'TX007')
  INTO Purchase VALUES ('PUR008', 'PO223008', TO_DATE('2025-06-10', 'YYYY-MM-DD'), 2950, 'Lamb Weston Asia', 'Approved', TO_DATE('2025-06-13', 'YYYY-MM-DD'), 'MBINV008', TO_DATE('2025-06-25', 'YYYY-MM-DD'), 177, 'TX008')
  INTO Purchase VALUES ('PUR009', 'PO223009', TO_DATE('2025-06-12', 'YYYY-MM-DD'), 7800, 'Nestle Professional', 'Approved', TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'MBINV009', TO_DATE('2025-06-26', 'YYYY-MM-DD'), 468, 'TX009')
  INTO Purchase VALUES ('PUR010', 'PO223010', TO_DATE('2025-06-14', 'YYYY-MM-DD'), 3600, 'TetraPak Malaysia', 'Pending', TO_DATE('2025-06-10', 'YYYY-MM-DD'), 'MBINV010', TO_DATE('2025-06-28', 'YYYY-MM-DD'), 454, 'TX010')
SELECT * FROM DUAL;
--------------
--Feedback 2
--------------
-- Insert multiple rows into Feedback table using INSERT ALL
INSERT ALL
  INTO Feedback (
    feedback_id, reference_number, feedback_type, rating_score,
    feedback_text, submission_date, response_status, follow_up_required,
    complaint_category, resolution_time_days, outlet_id
  ) VALUES (
    'FB001', 'P001', 'Complaint', 3.5, 'The burger was too salty and not fresh.',
    TO_DATE('2025-06-10', 'YYYY-MM-DD'), 'Resolved', 'No', 'Food Quality', 2, 'MB001'
  )
  INTO Feedback VALUES (
    'FB002', 'E012', 'Compliment', 5, 'Cashier was very friendly and helpful!',
    TO_DATE('2025-06-11', 'YYYY-MM-DD'), 'Acknowledged', 'No', 'Service Compliment', 0, 'MB002'
  )
  INTO Feedback VALUES (
    'FB003', 'O003', 'Complaint', 2, 'Outlet was not clean during my visit.',
    TO_DATE('2025-06-13', 'YYYY-MM-DD'), 'In Progress', 'Yes', 'Cleanliness', 5, 'MB003'
  )
  INTO Feedback VALUES (
    'FB004', 'O003', 'Suggestion', 4, 'More staff are needed during peak hours.',
    TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'Acknowledged', 'Yes', 'Staffing Issues', 3, 'MB004'
  )
  INTO Feedback VALUES (
    'FB005', 'S008', 'Complaint', 1.5, 'The raw chicken delivered was close to expiry.',
    TO_DATE('2025-06-12', 'YYYY-MM-DD'), 'Resolved', 'Yes', 'Supply Quality', 4, 'MB005'
  )
  INTO Feedback VALUES (
    'FB006', 'P002', 'Compliment', 4.8, 'Loved the new spicy fries – please keep them!',
    TO_DATE('2025-06-14', 'YYYY-MM-DD'), 'Resolved', 'No', 'Product Praise', 1, 'MB006'
  )
  INTO Feedback VALUES (
    'FB007', 'O005', 'Complaint', 3, 'Air conditioning is not working properly.',
    TO_DATE('2025-06-16', 'YYYY-MM-DD'), 'In Progress', 'Yes', 'Maintenance', 7, 'MB007'
  )
  INTO Feedback VALUES (
    'FB008', 'E009', 'Complaint', 1, 'The staff was rude and ignored my request.',
    TO_DATE('2025-06-17', 'YYYY-MM-DD'), 'Resolved', 'Yes', 'Staff Attitude', 2, 'MB008'
  )
  INTO Feedback VALUES (
    'FB009', 'S008', 'Compliment', 4, 'Delivery schedule has improved significantly. Good job!',
    TO_DATE('2025-06-18', 'YYYY-MM-DD'), 'Acknowledged', 'No', 'Delivery Performance', 0, 'MB009'
  )
  INTO Feedback VALUES (
    'FB010', 'M002', 'Suggestion', 3.5, 'Manager needs to communicate shift changes more clearly.',
    TO_DATE('2025-06-19', 'YYYY-MM-DD'), 'In Progress', 'Yes', 'Management Communication', 3, 'MB010'
  )
SELECT * FROM DUAL;

--------------
--Product 4
--------------
-- Insert multiple rows into Product table using INSERT ALL
INSERT ALL
  INTO Product (
    product_id, barcode, product_name, brand_name, unit_measure,
    shelf_life_days, storage_temperature, origin_country, quality_grade,
    packaging_type, outlet_id, kitchen_id
  ) VALUES (
    'PR001', '9551234000001', 'Marinated Chicken Thighs', 'Ayamas', '1 kg',
    7, '0 – 4', 'Malaysia', 'A', 'Vacuum Sealed', 'MB001', 'K001'
  )
  INTO Product VALUES (
    'PR002', '9551123450029', 'Crispy Coating Flour', 'Bestari', '500 g',
    365, 'Dry Store', 'Malaysia', 'A', 'Pouch Pack', 'MB002', 'K002'
  )
  INTO Product VALUES (
    'PR003', '9551123450036', 'Spicy Chili Sauce', 'Kimball', '1 L',
    180, 'Room Temp (Below 25°C)', 'Malaysia', 'B', 'Plastic Bottle', 'MB003', 'K003'
  )
  INTO Product VALUES (
    'PR004', '9551123450043', 'Mozzarella Cheese', 'Anchor', '2 kg',
    30, '2 – 6', 'New Zealand', 'A', 'Foil Wrap', 'MB004', 'K004'
  )
  INTO Product VALUES (
    'PR005', '9551123450050', 'Burger Buns (Sesame)', 'Gardenia', '6 packs',
    5, 'Room Temp', 'Malaysia', 'A', 'Plastic Wrap', 'MB005', 'K005'
  )
  INTO Product VALUES (
    'PR006', '9551123450067', 'Frozen French Fries', 'Lamb Weston', '2.5 kg',
    540, '–18', 'USA', 'A', 'Sealed Plastic Bag', 'MB006', 'K006'
  )
  INTO Product VALUES (
    'PR007', '9551123450074', 'Disposable Forks', 'MB Supplies', '100 pcs',
    NULL, 'Room Temp', 'Malaysia', 'C', 'Cardboard Box', 'MB007', 'K007'
  )
  INTO Product VALUES (
    'PR008', '9551123450081', 'Vanilla Soft-Serve Mix', 'Marrybrown Brand', '1 L',
    90, '0 – 4', 'Malaysia', 'A', 'Tetra Pack', 'MB008', 'K008'
  )
  INTO Product VALUES (
    'PR009', '9551123450098', 'Cooking Oil', 'Knife', '5 L',
    540, 'Room Temp', 'Malaysia', 'B', 'Plastic Bottle', 'MB009', 'K009'
  )
  INTO Product VALUES (
    'PR010', '9551123450104', 'Chicken Nuggets (Frozen)', 'CP Foods', '1 kg',
    365, '-18', 'Thailand', 'A', 'Vacuum Pack', 'MB010', 'K010'
  )
SELECT * FROM DUAL;

--------------
--Ingredients 4
--------------
-- Insert multiple rows into Ingredient table using INSERT ALL
INSERT ALL
  INTO Ingredient (
    ingredient_id, recipe_code, ingredient_name, nutritional_value,
    allergen_information, sourcing_location, freshness_indicator,
    usage_quantity, replacement_frequency, cost_per_unit,
    kitchen_id, outlet_id
  ) VALUES (
    'ING001', 'RC-CHIC001', 'Chicken Thigh', '250 kcal per 100g', 'None',
    'Johor Poultry Farm', 'Fresh (Chilled)', '150g', 'Every 2 days', 6.5, 'K001', 'MB001'
  )
  INTO Ingredient VALUES (
    'ING002', 'RC-RICE001', 'White Rice', '130 kcal per 100g', 'None',
    'Kedah Paddy Fields', 'Dry (Grain)', '200g', 'Weekly', 1.8, 'K002', 'MB002'
  )
  INTO Ingredient VALUES (
    'ING003', 'RC-SCE001', 'Spicy Sambal Sauce', '80 kcal per 50g', 'Chili, Garlic',
    'Penang Sauce Co.', 'Bottled', '50g', 'Weekly', 0.9, 'K003', 'MB003'
  )
  INTO Ingredient VALUES (
    'ING004', 'RC-BRG001', 'Burger Bun (Sesame)', '180 kcal per bun', 'Wheat, Gluten',
    'Gardenia KL', 'Fresh (2 days)', '1 bun', 'Daily', 0.7, 'K004', 'MB004'
  )
  INTO Ingredient VALUES (
    'ING005', 'RC-VEG001', 'Shredded Lettuce', '15 kcal per 50g', 'None',
    'Cameron Highlands', 'Crisp', '30g', 'Daily', 0.5, 'K005', 'MB005'
  )
  INTO Ingredient VALUES (
    'ING006', 'RC-DRK001', 'Sweetened Condensed Milk', '130 kcal per 30g', 'Dairy',
    'Dutch Lady Malaysia', 'Sealed Can', '20g', 'Monthly', 2.3, 'K006', 'MB006'
  )
  INTO Ingredient VALUES (
    'ING007', 'RC-CHK002', 'Chicken Nugget', '190 kcal per 100g', 'Soy, Wheat',
    'CP Malaysia', 'Frozen', '100g', 'Weekly', 5, 'K007', 'MB007'
  )
  INTO Ingredient VALUES (
    'ING008', 'RC-CHS001', 'Cheddar Cheese Slice', '70 kcal per slice (20g)', 'Dairy',
    'New Zealand Imports', 'Chilled', '1 slice', 'Weekly', 1.2, 'K008', 'MB008'
  )
  INTO Ingredient VALUES (
    'ING009', 'RC-FRY001', 'Cooking Oil (Palm)', '884 kcal per 100ml', 'None',
    'Sime Darby Oils', 'Room Temp', '500ml', 'Bi-weekly', 7.5, 'K009', 'MB009'
  )
  INTO Ingredient VALUES (
    'ING010', 'RC-BVG001', 'Teh Tarik Syrup Base', '90 kcal per 100ml', 'Sugar',
    'Local Beverage Supplier', 'Refrigerated', '100ml', 'Weekly', 1, 'K010', 'MB010'
  )
SELECT * FROM DUAL;

--------------
--Inventory 4
--------------
-- Insert multiple rows into Inventory table using INSERT ALL
INSERT ALL
  INTO Inventory (
    inventory_id, stock_code, current_stock_level, min_threshold, max_capacity,
    reorder_point, storage_location, last_stocktake_date, value_at_cost,
    turnover_rate, kitchen_id, outlet_id
  ) VALUES (
    'INV001', 'STK-CHKN001', '120 kg', '50 kg', '200 kg', '80 kg',
    'Cold Room 1 - HQ', TO_DATE('2025-06-20', 'YYYY-MM-DD'), 780, 3.5, 'K001', 'MB001'
  )
  INTO Inventory VALUES (
    'INV002', 'STK-RICE001', '40 bags', '20 bags', '100 bags', '30 bags',
    'Dry Store A - Outlet 7', TO_DATE('2025-06-18', 'YYYY-MM-DD'), 320, 2.1, 'K002', 'MB002'
  )
  INTO Inventory VALUES (
    'INV003', 'STK-OIL001', '25 bottles', '10 bottles', '50 bottles', '15 bottles',
    'Shelf B - Kitchen 2', TO_DATE('2025-06-21', 'YYYY-MM-DD'), 187.5, 4, 'K003', 'MB003'
  )
  INTO Inventory VALUES (
    'INV004', 'STK-BUNS001', '90 pcs', '40 pcs', '150 pcs', '60 pcs',
    'Bakery Chiller', TO_DATE('2025-06-22', 'YYYY-MM-DD'), 63, 6.2, 'K004', 'MB004'
  )
  INTO Inventory VALUES (
    'INV005', 'STK-CHEE001', '30 slices', '20 slices', '100 slices', '25 slices',
    'Dairy Rack - HQ', TO_DATE('2025-06-20', 'YYYY-MM-DD'), 36, 5.5, 'K005', 'MB005'
  )
  INTO Inventory VALUES (
    'INV006', 'STK-FRY001', '15 packs', '10 packs', '40 packs', '12 packs',
    'Frozen Storage 3', TO_DATE('2025-06-19', 'YYYY-MM-DD'), 195, 3, 'K006', 'MB006'
  )
  INTO Inventory VALUES (
    'INV007', 'STK-SCE001', '20 bottles', '10 bottles', '60 bottles', '15 bottles',
    'Condiment Shelf', TO_DATE('2025-06-17', 'YYYY-MM-DD'), 70, 2.8, 'K007', 'MB007'
  )
  INTO Inventory VALUES (
    'INV008', 'STK-CUP001', '500 pcs', '200 pcs', '1000 pcs', '300 pcs',
    'Packaging Area - Store', TO_DATE('2025-06-21', 'YYYY-MM-DD'), 150, 7, 'K008', 'MB008'
  )
  INTO Inventory VALUES (
    'INV009', 'STK-MILK001', '12 cans', '5 cans', '25 cans', '8 cans',
    'Beverage Shelf', TO_DATE('2025-06-22', 'YYYY-MM-DD'), 27.6, 1.5, 'K009', 'MB009'
  )
  INTO Inventory VALUES (
    'INV010', 'STK-WRAP001', '300 sheets', '100 sheets', '500 sheets', '150 sheets',
    'Packaging Area B', TO_DATE('2025-06-20', 'YYYY-MM-DD'), 45, 6.8, 'K010', 'MB010'
  )
SELECT * FROM DUAL;

--------------
--Logistic 4
--------------

-- Insert multiple rows into Logistic table using INSERT ALL
INSERT ALL
  INTO Logistic (
    logistic_id, shipment_code, delivery_route, transport_method, delivery_schedule_desc,
    tracking_number, delivery_status, freight_cost, delivery_partner,
    transport_type, outlet_id, manager_id
  ) VALUES (
    'LG001', 'MB-SHP-001', 'HQ to Marrybrown JB Sentral', 'Road', TO_TIMESTAMP('2025-06-23 08:00', 'YYYY-MM-DD HH24:MI'),
    'MBTRK981210', 'In Transit', 220, 'GD Express',
    'Refrigerated Truck', 'MB001', 'MGR001'
  )
  INTO Logistic VALUES (
    'LG002', 'MB-SHP-002', 'Central Kitchen to MB KLCC', 'Road', TO_TIMESTAMP('2025-06-23 10:00', 'YYYY-MM-DD HH24:MI'),
    'MBKL555422', 'Scheduled', 180, 'JnT Logistics',
    'Dry Van', 'MB002', 'MGR002'
  )
  INTO Logistic VALUES (
    'LG003', 'MB-SHP-003', 'Supplier to HQ (Chicken Stock)', 'Road', TO_TIMESTAMP('2025-06-22 07:30', 'YYYY-MM-DD HH24:MI'),
    'MBSTK783111', 'Delivered', 300, 'CP Fresh Malaysia',
    'Frozen Truck', 'MB003', 'MGR003'
  )
  INTO Logistic VALUES (
    'LG004', 'MB-SHP-004', 'HQ to MB Melaka Sentral', 'Road', TO_TIMESTAMP('2025-06-21 14:00', 'YYYY-MM-DD HH24:MI'),
    'MBMK112345', 'Delivered', 250, 'DHL Malaysia',
    'Refrigerated Truck', 'MB004', 'MGR004'
  )
  INTO Logistic VALUES (
    'LG005', 'MB-SHP-005', 'Port Klang to HQ (Imported Items)', 'Sea + Road', TO_TIMESTAMP('2025-06-24 09:00', 'YYYY-MM-DD HH24:MI'),
    'MBSEA888999', 'Awaiting Customs', 800, 'Maersk + Local Haulier',
    'Container Lorry', 'MB005', 'MGR005'
  )
  INTO Logistic VALUES (
    'LG006', 'MB-SHP-006', 'HQ to MB Ipoh Parade', 'Road', TO_TIMESTAMP('2025-06-22 06:00', 'YYYY-MM-DD HH24:MI'),
    'MBIPH777321', 'In Transit', 210, 'City-Link Express',
    'Insulated Truck', 'MB006', 'MGR006'
  )
  INTO Logistic VALUES (
    'LG007', 'MB-SHP-007', 'MB Subang to MB Shah Alam', 'Road', TO_TIMESTAMP('2025-06-22 17:30', 'YYYY-MM-DD HH24:MI'),
    'MBSUBSHA456', 'Delivered', 75, 'Flash Logistics',
    'Van', 'MB007', 'MGR007'
  )
  INTO Logistic VALUES (
    'LG008', 'MB-SHP-008', 'HQ to MB Kuantan MegaMall', 'Road', TO_TIMESTAMP('2025-06-23 03:00', 'YYYY-MM-DD HH24:MI'),
    'MBKT882211', 'Scheduled', 320, 'PosLaju Freight',
    'Refrigerated Truck', 'MB008', 'MGR008'
  )
  INTO Logistic VALUES (
    'LG009', 'MB-SHP-009', 'Supplier to MB Kota Bharu', 'Road', TO_TIMESTAMP('2025-06-21 13:00', 'YYYY-MM-DD HH24:MI'),
    'MBKB567100', 'Cancelled', 0, 'Supplier Direct',
    'Pick-up Truck', 'MB009', 'MGR009'
  )
  INTO Logistic VALUES (
    'LG010', 'MB-SHP-010', 'Central Storage to MB Alor Setar', 'Road', TO_TIMESTAMP('2025-06-24 04:00', 'YYYY-MM-DD HH24:MI'),
    'MBAS322456', 'Pending Dispatch', 280, 'Ninja Van Cargo',
    'Refrigerated Truck', 'MB010', 'MGR010'
  )
SELECT * FROM DUAL;



---------------------
--EXPLOSION TABLE---
---------------------

-- 1. OutletPerson
INSERT ALL
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB001', 'P001')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB001', 'P002')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB002', 'P003')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB002', 'P004')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB003', 'P005')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB003', 'P006')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB004', 'P007')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB004', 'P008')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB005', 'P009')
  INTO OutletPerson (outlet_id, person_id) VALUES ('MB005', 'P010')
SELECT * FROM DUAL;

-- 2. OutletDocument
INSERT ALL
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB001', 'DOC001')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB001', 'DOC002')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB002', 'DOC003')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB002', 'DOC004')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB003', 'DOC005')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB003', 'DOC006')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB004', 'DOC007')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB004', 'DOC008')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB005', 'DOC009')
  INTO OutletDocument (outlet_id, document_id) VALUES ('MB005', 'DOC010')
SELECT * FROM DUAL;

-- 3. PersonOrder
INSERT ALL
  INTO PersonOrder (person_id, order_id) VALUES ('P001', 'ORD001')
  INTO PersonOrder (person_id, order_id) VALUES ('P002', 'ORD002')
  INTO PersonOrder (person_id, order_id) VALUES ('P003', 'ORD003')
  INTO PersonOrder (person_id, order_id) VALUES ('P004', 'ORD004')
  INTO PersonOrder (person_id, order_id) VALUES ('P005', 'ORD005')
  INTO PersonOrder (person_id, order_id) VALUES ('P006', 'ORD006')
  INTO PersonOrder (person_id, order_id) VALUES ('P007', 'ORD007')
  INTO PersonOrder (person_id, order_id) VALUES ('P008', 'ORD008')
  INTO PersonOrder (person_id, order_id) VALUES ('P009', 'ORD009')
  INTO PersonOrder (person_id, order_id) VALUES ('P010', 'ORD010')
SELECT * FROM DUAL;

-- 4. PersonTransaction
INSERT ALL
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P001', 'TX001')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P002', 'TX002')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P003', 'TX003')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P004', 'TX004')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P005', 'TX005')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P006', 'TX006')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P007', 'TX007')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P008', 'TX008')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P009', 'TX009')
  INTO PersonTransaction (person_id, transaction_id) VALUES ('P010', 'TX010')
SELECT * FROM DUAL;

-- 5. PersonFeedback
INSERT ALL
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P001', 'FB001')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P002', 'FB002')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P003', 'FB003')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P004', 'FB004')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P005', 'FB005')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P006', 'FB006')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P007', 'FB007')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P008', 'FB008')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P009', 'FB009')
  INTO PersonFeedback (person_id, feedback_id) VALUES ('P010', 'FB010')
SELECT * FROM DUAL;

-- 6. CustomerMenu
INSERT ALL
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C001', 'M001')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C002', 'M002')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C003', 'M003')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C004', 'M004')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C005', 'M005')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C006', 'M006')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C007', 'M007')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C008', 'M008')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C009', 'M009')
  INTO CustomerMenu (customer_id, menu_id) VALUES ('C010', 'M010')
SELECT * FROM DUAL;

-- 7. CustomerProduct (changed PROD to PRO)
INSERT ALL
  INTO CustomerProduct (customer_id, product_id) VALUES ('C001', 'PR001')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C002', 'PR002')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C003', 'PR003')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C004', 'PR004')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C005', 'PR005')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C006', 'PR006')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C007', 'PR007')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C008', 'PR008')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C009', 'PR009')
  INTO CustomerProduct (customer_id, product_id) VALUES ('C010', 'PR010')
SELECT * FROM DUAL;

-- 8. SupplierLogistic
INSERT ALL
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S001', 'LG001')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S002', 'LG002')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S003', 'LG003')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S004', 'LG004')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S005', 'LG005')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S006', 'LG006')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S007', 'LG007')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S008', 'LG008')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S009', 'LG009')
  INTO SupplierLogistic (supplier_id, logistic_id) VALUES ('S010', 'LG010')
SELECT * FROM DUAL;

-- 9. SupplierIngredient
INSERT ALL
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S001', 'ING001')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S002', 'ING002')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S003', 'ING003')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S004', 'ING004')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S005', 'ING005')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S006', 'ING006')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S007', 'ING007')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S008', 'ING008')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S009', 'ING009')
  INTO SupplierIngredient (supplier_id, ingredient_id) VALUES ('S010', 'ING010')
SELECT * FROM DUAL;

-- 10. EmployeeInventory
INSERT ALL
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E001', 'INV001')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E002', 'INV002')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E003', 'INV003')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E004', 'INV004')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E005', 'INV005')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E006', 'INV006')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E007', 'INV007')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E008', 'INV008')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E009', 'INV009')
  INTO EmployeeInventory (employee_id, inventory_id) VALUES ('E010', 'INV010')
SELECT * FROM DUAL;

-- 11. EmployeeMenu
INSERT ALL
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E001', 'M001')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E002', 'M002')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E003', 'M003')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E004', 'M004')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E005', 'M005')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E006', 'M006')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E007', 'M007')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E008', 'M008')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E009', 'M009')
  INTO EmployeeMenu (employee_id, menu_id) VALUES ('E010', 'M010')
SELECT * FROM DUAL;

-- 12. EmployeeProduct (changed PROD to PRO)
INSERT ALL
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E001', 'PR001')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E002', 'PR002')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E003', 'PR003')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E004', 'PR004')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E005', 'PR005')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E006', 'PR006')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E007', 'PR007')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E008', 'PR008')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E009', 'PR009')
  INTO EmployeeProduct (employee_id, product_id) VALUES ('E010', 'PR010')
SELECT * FROM DUAL;

-- 13. EmployeeIngredient
INSERT ALL
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E001', 'ING001')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E002', 'ING002')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E003', 'ING003')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E004', 'ING004')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E005', 'ING005')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E006', 'ING006')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E007', 'ING007')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E008', 'ING008')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E009', 'ING009')
  INTO EmployeeIngredient (employee_id, ingredient_id) VALUES ('E010', 'ING010')
SELECT * FROM DUAL;

-- 14. EmployeeDocument
INSERT ALL
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E001', 'DOC001')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E002', 'DOC002')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E003', 'DOC003')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E004', 'DOC004')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E005', 'DOC005')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E006', 'DOC006')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E007', 'DOC007')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E008', 'DOC008')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E009', 'DOC009')
  INTO EmployeeDocument (employee_id, document_id) VALUES ('E010', 'DOC010')
SELECT * FROM DUAL;

-- 15. EmployeeTraining (changed to EmployeeTR)
INSERT ALL
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E001', 'TR001')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E002', 'TR002')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E003', 'TR003')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E004', 'TR004')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E005', 'TR005')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E006', 'TR006')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E007', 'TR007')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E008', 'TR008')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E009', 'TR009')
  INTO EmployeeTraining (employee_id, training_id) VALUES ('E010', 'TR010')
SELECT * FROM DUAL;

-- 16. EmployeeKitchen
INSERT ALL
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E001', 'K001')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E002', 'K002')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E003', 'K003')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E004', 'K004')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E005', 'K005')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E006', 'K006')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E007', 'K007')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E008', 'K008')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E009', 'K009')
  INTO EmployeeKitchen (employee_id, kitchen_id) VALUES ('E010', 'K010')
SELECT * FROM DUAL;

-- 17. TrainingCertificate (changed to TRCertificate)
INSERT ALL
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR001', 'CERT001')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR002', 'CERT002')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR003', 'CERT003')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR004', 'CERT004')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR005', 'CERT005')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR006', 'CERT006')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR007', 'CERT007')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR008', 'CERT008')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR009', 'CERT009')
  INTO TrainingCertificate (training_id, certificate_id) VALUES ('TR010', 'CERT010')
SELECT * FROM DUAL;

-- 18. ProductTransaction (changed PROD to PRO)
INSERT ALL
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR001', 'TX001')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR002', 'TX002')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR003', 'TX003')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR004', 'TX004')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR005', 'TX005')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR006', 'TX006')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR007', 'TX007')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR008', 'TX008')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR009', 'TX009')
  INTO ProductTransaction (product_id, transaction_id) VALUES ('PR010', 'TX010')
SELECT * FROM DUAL;

-- 19. ProductOrder (changed PROD to PRO)
INSERT ALL
  INTO ProductOrder (product_id, order_id) VALUES ('PR001', 'ORD001')
  INTO ProductOrder (product_id, order_id) VALUES ('PR002', 'ORD002')
  INTO ProductOrder (product_id, order_id) VALUES ('PR003', 'ORD003')
  INTO ProductOrder (product_id, order_id) VALUES ('PR004', 'ORD004')
  INTO ProductOrder (product_id, order_id) VALUES ('PR005', 'ORD005')
  INTO ProductOrder (product_id, order_id) VALUES ('PR006', 'ORD006')
  INTO ProductOrder (product_id, order_id) VALUES ('PR007', 'ORD007')
  INTO ProductOrder (product_id, order_id) VALUES ('PR008', 'ORD008')
  INTO ProductOrder (product_id, order_id) VALUES ('PR009', 'ORD009')
  INTO ProductOrder (product_id, order_id) VALUES ('PR010', 'ORD010')
SELECT * FROM DUAL;

-- 20. ProductMenu (changed PROD to PRO)
INSERT ALL
  INTO ProductMenu (product_id, menu_id) VALUES ('PR001', 'M001')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR002', 'M002')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR003', 'M003')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR004', 'M004')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR005', 'M005')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR006', 'M006')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR007', 'M007')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR008', 'M008')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR009', 'M009')
  INTO ProductMenu (product_id, menu_id) VALUES ('PR010', 'M010')
SELECT * FROM DUAL;

-- 21. ProductIngredient (changed PROD to PRO)
INSERT ALL
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR001', 'ING001')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR002', 'ING002')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR003', 'ING003')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR004', 'ING004')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR005', 'ING005')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR006', 'ING006')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR007', 'ING007')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR008', 'ING008')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR009', 'ING009')
  INTO ProductIngredient (product_id, ingredient_id) VALUES ('PR010', 'ING010')
SELECT * FROM DUAL;

-- 22. ProductFeedback (changed PROD to PRO)
INSERT ALL
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR001', 'FB001')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR002', 'FB002')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR003', 'FB003')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR004', 'FB004')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR005', 'FB005')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR006', 'FB006')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR007', 'FB007')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR008', 'FB008')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR009', 'FB009')
  INTO ProductFeedback (product_id, feedback_id) VALUES ('PR010', 'FB010')
SELECT * FROM DUAL;

-- 23. OrderTransaction
INSERT ALL
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD001', 'TX001')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD002', 'TX002')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD003', 'TX003')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD004', 'TX004')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD005', 'TX005')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD006', 'TX006')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD007', 'TX007')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD008', 'TX008')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD009', 'TX009')
  INTO OrderTransaction (order_id, transaction_id) VALUES ('ORD010', 'TX010')
SELECT * FROM DUAL;

-- 24. OrderIngredient
INSERT ALL
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD001', 'ING001')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD002', 'ING002')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD003', 'ING003')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD004', 'ING004')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD005', 'ING005')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD006', 'ING006')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD007', 'ING007')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD008', 'ING008')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD009', 'ING009')
  INTO OrderIngredient (order_id, ingredient_id) VALUES ('ORD010', 'ING010')
SELECT * FROM DUAL;

-- 25. TransactionIngredient
INSERT ALL
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX001', 'ING001')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX002', 'ING002')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX003', 'ING003')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX004', 'ING004')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX005', 'ING005')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX006', 'ING006')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX007', 'ING007')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX008', 'ING008')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX009', 'ING009')
  INTO TransactionIngredient (transaction_id, ingredient_id) VALUES ('TX010', 'ING010')
SELECT * FROM DUAL;

-- 26. TransactionLogistic
INSERT ALL
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX001', 'LG001')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX002', 'LG002')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX003', 'LG003')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX004', 'LG004')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX005', 'LG005')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX006', 'LG006')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX007', 'LG007')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX008', 'LG008')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX009', 'LG009')
  INTO TransactionLogistic (transaction_id, logistic_id) VALUES ('TX010', 'LG010')
SELECT * FROM DUAL;

-- 27. TransactionFeedback
INSERT ALL
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX001', 'FB001')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX002', 'FB002')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX003', 'FB003')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX004', 'FB004')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX005', 'FB005')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX006', 'FB006')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX007', 'FB007')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX008', 'FB008')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX009', 'FB009')
  INTO TransactionFeedback (transaction_id, feedback_id) VALUES ('TX010', 'FB010')
SELECT * FROM DUAL;

-- 28. LogisticIngredient
INSERT ALL
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG001', 'ING001')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG002', 'ING002')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG003', 'ING003')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG004', 'ING004')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG005', 'ING005')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG006', 'ING006')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG007', 'ING007')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG008', 'ING008')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG009', 'ING009')
  INTO LogisticIngredient (logistic_id, ingredient_id) VALUES ('LG010', 'ING010')
SELECT * FROM DUAL;

-- 29. LogisticFeedback
INSERT ALL
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG001', 'FB001')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG002', 'FB002')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG003', 'FB003')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG004', 'FB004')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG005', 'FB005')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG006', 'FB006')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG007', 'FB007')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG008', 'FB008')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG009', 'FB009')
  INTO LogisticFeedback (logistic_id, feedback_id) VALUES ('LG010', 'FB010')
SELECT * FROM DUAL;

-- 30. FeedbackIngredient
INSERT ALL
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB001', 'ING001')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB002', 'ING002')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB003', 'ING003')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB004', 'ING004')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB005', 'ING005')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB006', 'ING006')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB007', 'ING007')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB008', 'ING008')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB009', 'ING009')
  INTO FeedbackIngredient (feedback_id, ingredient_id) VALUES ('FB010', 'ING010')
SELECT * FROM DUAL;

-- 31. IngredientInventory
INSERT ALL
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING001', 'INV001')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING002', 'INV002')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING003', 'INV003')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING004', 'INV004')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING005', 'INV005')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING006', 'INV006')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING007', 'INV007')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING008', 'INV008')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING009', 'INV009')
  INTO IngredientInventory (ingredient_id, inventory_id) VALUES ('ING010', 'INV010')
SELECT * FROM DUAL;

-- 32. PersonPerson (Recursive)
INSERT ALL
  INTO PersonPerson (person_id, related_person_id) VALUES ('P001', 'P002')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P001', 'P003')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P002', 'P004')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P003', 'P005')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P004', 'P006')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P005', 'P007')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P006', 'P008')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P007', 'P009')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P008', 'P010')
  INTO PersonPerson (person_id, related_person_id) VALUES ('P009', 'P001')
SELECT * FROM DUAL;

-- 33. EmployeeEmployee (Recursive)
INSERT ALL
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E001', 'E002')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E001', 'E003')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E002', 'E004')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E003', 'E005')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E004', 'E006')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E005', 'E007')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E006', 'E008')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E007', 'E009')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E008', 'E010')
  INTO EmployeeEmployee (employee_id, related_employee_id) VALUES ('E009', 'E001')
SELECT * FROM DUAL;

-- 34. DocumentDocument (Recursive)
INSERT ALL
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC001', 'DOC002')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC001', 'DOC003')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC002', 'DOC004')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC003', 'DOC005')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC004', 'DOC006')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC005', 'DOC007')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC006', 'DOC008')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC007', 'DOC009')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC008', 'DOC010')
  INTO DocumentDocument (document_id, related_document_id) VALUES ('DOC009', 'DOC001')
SELECT * FROM DUAL;

-- 35. TransactionTransaction (Recursive with TX prefix)
INSERT ALL
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX001', 'TX002')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX001', 'TX003')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX002', 'TX004')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX003', 'TX005')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX004', 'TX006')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX005', 'TX007')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX006', 'TX008')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX007', 'TX009')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX008', 'TX010')
  INTO TransactionTransaction (transaction_id, related_transaction_id) VALUES ('TX009', 'TX001')
SELECT * FROM DUAL;
