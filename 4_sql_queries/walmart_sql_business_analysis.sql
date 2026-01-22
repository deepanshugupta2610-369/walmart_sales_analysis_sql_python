--Walmart Project Queries

SELECT * FROM walmart_sales

SELECT COUNT(*) FROM walmart_sales

-- Business Problems


--Q.1 Find different payment method and number of transactions, number of qty sold

SELECT 
	 payment_method,
	 COUNT(*) as no_payments,
	 SUM(quantity) as no_qty_sold
FROM walmart_sales
GROUP BY payment_method


-- Question #2
-- Identify the highest-rated category in each branch, displaying the branch, category
-- AVG RATING

SELECT * 
FROM
(	SELECT 
		branch,
		category,
		Round(AVG(rating):: numeric , 2) as avg_rating,
		Rank() OVER(PARTITION BY branch ORDER BY Round(AVG(rating):: numeric , 2) DESC) as rank
	FROM walmart_sales
	GROUP BY 1, 2
)
WHERE rank = 1



-- Q.3 Identify the busiest day for each branch based on the number of transactions

Select * from
( 
  select branch , TO_CHAR(date , 'day') as day_name ,
  Count (*) as No_of_transactions ,
  Rank() over( partition by branch order by count(*) desc) as rank 
  from walmart_sales
  group by 1 , 2
)
where rank = 1


-- Q. 4 
-- Calculate the total quantity of items sold per payment method. List payment_method and total_quantity.

SELECT 
	 payment_method,
	 -- COUNT(*) as no_payments,
	 SUM(quantity) as no_qty_sold
FROM walmart_sales
GROUP BY payment_method


-- Q.5
-- Determine the average, minimum, and maximum rating of category for each city. 
-- List the city, average_rating, min_rating, and max_rating.

SELECT city , category , 
ROUND(cast (AVG(rating) as numeric) , 2) as avg_rating ,
MIN(rating) as min_rating , 
MAX(rating) as max_rating
FROM walmart_sales
GROUP BY 1, 2 


-- Q.6
-- Calculate the total profit for each category by considering total_profit as
-- (unit_price * quantity * profit_margin). 
-- List category and total_profit, ordered from highest to lowest profit.

SELECT category  , 
ROUND(SUM(total):: numeric , 2) AS total_revenue ,
ROUND (SUM( total * profit_margin)::numeric , 2 ) AS Total_profit
FROM walmart_sales
GROUP BY category
ORDER BY total_profit desc


-- Q.7
-- Determine the most common payment method for each Branch. 
-- Display Branch and the preferred_payment_method.


WITH cte 
AS
(SELECT 
	branch,
	payment_method,
	COUNT(*) as total_trans,
	RANK() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) as rank
FROM walmart_sales
GROUP BY 1, 2
)
SELECT *
FROM cte
WHERE rank = 1


-- Q.8
-- Categorize sales into 3 group MORNING, AFTERNOON, EVENING 
-- Find out each of the shift and number of invoices .

	 SELECT
	branch,
CASE 
		WHEN EXTRACT(HOUR FROM(time::time)) < 12 THEN 'Morning'
		WHEN EXTRACT(HOUR FROM(time::time)) BETWEEN 12 AND 17 THEN 'Afternoon'
		ELSE 'Evening'
	END as Shift_time,
	COUNT(*) as No_of_invoices
FROM walmart_sales
GROUP BY 1, 2
ORDER BY 3 DESC



-- #9 Identify 5 branch with highest decrese ratio in 
-- revevenue compare to last year(current year 2023 and last year 2022)

-- rdr == last_rev-cr_rev/ls_rev*100

SELECT *,
EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY')) as formated_date
FROM walmart

-- 2022 sales
WITH revenue_2022
AS
(
	SELECT 
		branch,
		SUM(total) as revenue
	FROM walmart
	WHERE EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY')) = 2022 -- psql
	-- WHERE YEAR(TO_DATE(date, 'DD/MM/YY')) = 2022 -- mysql
	GROUP BY 1
),

revenue_2023
AS
(

	SELECT 
		branch,
		SUM(total) as revenue
	FROM walmart
	WHERE EXTRACT(YEAR FROM TO_DATE(date, 'DD/MM/YY')) = 2023
	GROUP BY 1
)

SELECT 
	ls.branch,
	ls.revenue as last_year_revenue,
	cs.revenue as cr_year_revenue,
	ROUND(
		(ls.revenue - cs.revenue)::numeric/
		ls.revenue::numeric * 100, 
		2) as rev_dec_ratio
FROM revenue_2022 as ls
JOIN
revenue_2023 as cs
ON ls.branch = cs.branch
WHERE 
	ls.revenue > cs.revenue
ORDER BY 4 DESC
LIMIT 5




