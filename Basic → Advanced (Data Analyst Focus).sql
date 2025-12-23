

1️⃣ SQL INTERVIEW QUESTIONS WITH ANSWERS (MOST ASKED)
🔥 Basic → Advanced (Data Analyst Focus)
Q1. What is the difference between WHERE and HAVING?

Answer:

      WHERE filters rows before aggregation
      HAVING filters groups after aggregation

  use employee_records;

query:
     select * from employees;

     SELECT department, AVG(salary)
     FROM employees
     GROUP BY department
     HAVING AVG(salary) > 50000;

Q2. Find the second highest salary?
  
  query:
        SELECT MAX(salary)
        FROM employees
        WHERE salary < (SELECT MAX(salary) FROM employees);

Q3. Difference between INNER JOIN and LEFT JOIN?

Answer:
       INNER JOIN → matching records only
       LEFT JOIN → all left table rows + matched right rows

Q4. What is a correlated subquery?

Answer:
       A subquery that depends on the outer query and executes once per row.

Q5. Difference between RANK() and DENSE_RANK()?

  Table:
       | Function   | Gaps |
       | ---------- | ---- |
       | RANK       | Yes  |
       | DENSE_RANK | No   |

Q6. How do you handle NULL values?
  
query:
     COALESCE(column, 0)

Q7. Count NULL vs non-NULL values?
  
query:
     SELECT COUNT(col), COUNT(*)
     FROM table_name;

Q8. Top 2 employees per department?
query:
         SELECT *
      FROM (
         SELECT *, DENSE_RANK() OVER (PARTITION BY dept ORDER BY salary DESC) rnk
      FROM employees
      ) t
      WHERE rnk <= 2;


Q9. Difference between UNION and UNION ALL?

answer:
       UNION removes duplicates
       UNION ALL keeps duplicates (faster)

Q10. What are window functions used for?

Answer:
      Running totals, ranking, comparisons without collapsing rows.

2️⃣ REAL ANALYTICS DATASETS + PRACTICE QUERIES
📊 Dataset 1: Sales Data
query:
      CREATE TABLE sales (
      order_id INT,
      customer_id INT,
      order_date DATE,
      amount INT
      );

🔹 Practice Queries:=

1.Total revenue per month
query:
     SELECT MONTH(order_date), SUM(amount)
     FROM sales
     GROUP BY MONTH(order_date);

            2.Customers with no orders.
            3.Top 5 customers by revenue.
            4.Running total of sales.


📊 Dataset 2: Employee Analytics:=

query:
     CREATE TABLE employees (
     emp_id INT,
     dept VARCHAR(30),
     salary INT,
     join_date DATE
     );

🔹 Practice Queries:=

             1.Avg salary per dept
             2.Highest paid employee per dept
             3.Salary greater than dept avg
             4.Employees joined in last 6 months

📊 Dataset 3: Customer Analytics:=

  query:
        CREATE TABLE customers (
        customer_id INT,
        city VARCHAR(30),
        segment VARCHAR(20)
        );


Practice Queries:=

              1.Count customers per city
              2.Corporate customers in Mumbai
              3.Cities with more than 10 customers





















