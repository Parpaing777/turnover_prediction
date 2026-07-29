-- Combines the departments that were one-hot-encoded during data modeling back into one column for the visualization 
SELECT
  *,
  CASE
    WHEN Departments_IT = 1 THEN 'IT'
    WHEN Departments_RandD = 1 THEN 'RandD'
    WHEN Departments_accounting = 1 THEN 'accounting'
    WHEN Departments_hr = 1 THEN 'hr'
    WHEN Departments_management = 1 THEN 'management'
    WHEN Departments_marketing = 1 THEN 'marketing'
    WHEN Departments_product_mng = 1 THEN 'product_mng'
    WHEN Departments_sales = 1 THEN 'sales'
    WHEN Departments_support = 1 THEN 'support'
    WHEN Departments_technical = 1 THEN 'technical'
    ELSE 'unknown'
  END AS Departments
FROM `employee-turnover-503115.employee_data.pilot_predictions`
