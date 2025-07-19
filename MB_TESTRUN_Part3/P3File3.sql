-- six_table_hr_training.sql (for SQL*Plus)
SET LINESIZE 200
SET PAGESIZE 50
SET VERIFY OFF

-- Format headers
COLUMN first_name           HEADING 'First Name'             FORMAT A15
COLUMN last_name            HEADING 'Last Name'              FORMAT A15
COLUMN base_salary          HEADING 'Base Salary (RM)'       FORMAT 999,999
COLUMN years_of_experience  HEADING 'Years of Experience'     FORMAT 999
COLUMN skill_level          HEADING 'Skill Level'            FORMAT A12
COLUMN hourly_rate          HEADING 'Hourly Rate (RM)'        FORMAT 999.99
COLUMN management_level     HEADING 'Management Level'        FORMAT A15
COLUMN team_size            HEADING 'Team Size'               FORMAT 999
COLUMN document_title       HEADING 'Document Title'         FORMAT A30
COLUMN document_type        HEADING 'Document Type'          FORMAT A15
COLUMN creation_date        HEADING 'Creation Date'          FORMAT A11
COLUMN training_title       HEADING 'Training Title'        FORMAT A30
COLUMN training_date        HEADING 'Training Date'         FORMAT A11

SELECT
  p.first_name,
  p.last_name,
  e.base_salary,
  e.years_of_experience,
  s.skill_level,
  s.hourly_rate,
  m.management_level,
  m.team_size,
  d.document_title,
  d.document_type,
  t.training_title,
  TO_CHAR(t.training_date, 'DD/MM/YYYY') AS training_date
FROM
  Person p
  JOIN Employee e
    ON p.person_id = e.person_id
  JOIN Staff s
    ON e.employee_id = s.employee_id
  JOIN Manager m
    ON e.employee_id = m.employee_id
  JOIN EmployeeDocument ed
    ON e.employee_id = ed.employee_id       -- explosion (free)
  JOIN Document d
    ON ed.document_id = d.document_id       -- real table
  JOIN EmployeeTraining et
    ON e.employee_id = et.employee_id       -- explosion (free)
  JOIN Training t
    ON et.training_id = t.training_id
WHERE
       p.gender                   = 'M'       -- constraint #1
   AND e.years_of_experience       >  1        -- constraint #2
   AND t.training_duration_hours    > 2     -- constraint #3
;
