-- Creates a view with a new Type column by unioning both tables

SELECT *, "Original" 
  AS Type 
FROM `employee-turnover-503115.employee_data.tbl_hr_data`
UNION ALL
SELECT *, "Pilot" 
  AS Type 
FROM `employee-turnover-503115.employee_data.tbl_new_employees`
