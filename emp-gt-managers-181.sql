select e.name as Employee from Employee 
 e join Employee a on a.id = e.managerId 
 where e.salary > a.salary
