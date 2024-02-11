SELECT 
    MAX(months * salary) AS max_earnings,
    COUNT(*) AS num_employees
FROM 
    Employee
WHERE 
    months * salary = (SELECT MAX(months * salary) FROM Employee);
