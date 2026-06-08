with CTE AS (
    select salary ,
    DENSE_Rank() over(
        order by salary desc
    ) as DenseRank from Employee
)

-- select SecondHighestSalary from CTE where DenseRank = 2
SELECT 
    MAX(CASE WHEN DenseRank = 2 THEN salary END) AS SecondHighestSalary
FROM CTE;
