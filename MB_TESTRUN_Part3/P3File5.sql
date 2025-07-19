CREATE OR REPLACE VIEW View_Person_Employee_Manager AS
SELECT 
    p.person_id,
    e.employee_id,
    m.manager_id
FROM 
    Person p
JOIN 
    Employee e ON p.person_id = e.person_id
JOIN 
    Manager m ON e.employee_id = m.employee_id
WHERE 
    m.bonus_eligibility = 'Yes';
SELECT * FROM View_Person_Employee_Manager;
