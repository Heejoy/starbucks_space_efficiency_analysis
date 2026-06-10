-- 4 core KPIs
SELECT
	-- Total revenue
	ROUND(SUM(Spend_Amount_CAD), 2) AS total_revenue,
	-- Average stay duration (minues)
	ROUND(AVG(Stay_Duration_Min), 2) AS avg_duration,
	-- Average customer group size
	ROUND(AVG(Group_Size), 2) As avg_group_size,
	-- Revenue per minute
	ROUND(SUM(Spend_Amount_CAD)/SUM(Stay_Duration_Min), 2) AS revenue_per_min
FROM starbucks_data

-- Revenue per minute by customer type
SELECT 
	Customer_Type,
	COUNT(Customer_ID) AS total_customers,
	ROUND(SUM(Stay_Duration_Min),2) AS total_duration,
	ROUND(SUM(Spend_Amount_CAD),2) AS total_spend,
	ROUND(SUM(Spend_Amount_CAD)/SUM(Stay_Duration_Min), 2) AS revenue_per_min
FROM starbucks_data
GROUP BY Customer_Type
ORDER BY revenue_per_min DESC;

-- percentage distribution of main customer behaviours 
SELECT
	Activity,
	COUNT(Customer_ID) AS customer_count,
	ROUND(100*COUNT(Customer_ID)/(SELECT COUNT(*) FROM starbucks_data), 2) AS percentage
FROM starbucks_data
GROUP BY Activity 
ORDER BY customer_count DESC;

-- Averaage spend by stay duration 
-- bin customers into specific time ranges 
-- to discover spending behavior trends
SELECT
	CASE	
		WHEN Stay_Duration_Min <= 30 THEN 'Short Stay (0-30 mins)'
		WHEN Stay_Duration_Min <= 60 THEN 'Medium Stay (31-60 mins)'
		WHEN Stay_Duration_Min <= 120 THEN 'Long Stay (61-120 mins)'
		ELSE 'Extended Stay (120+ mins)'
	END AS duration_range,
	COUNT(Customer_ID) AS customer_count,
	ROUND(AVG(Spend_Amount_CAD), 2) AS avg_spend,
	ROUND(SUM(Spend_Amount_CAD)/SUM(Stay_Duration_Min), 2) AS revenue_per_min
FROM starbucks_data
GROUP BY
	CASE	
		WHEN Stay_Duration_Min <= 30 THEN 'Short Stay (0-30 mins)'
		WHEN Stay_Duration_Min <= 60 THEN 'Medium Stay (31-60 mins)'
		WHEN Stay_Duration_Min <= 120 THEN 'Long Stay (61-120 mins)'
		ELSE 'Extended Stay (120+ mins)'
	END
ORDER BY avg_spend DESC;

-- Space Mismatch & Financial Efficiency Analysis by Seat Type
-- to evaluate layout inefficiencies
-- such as sinple customers occupying large tables

SELECT 
	Seat_Type,
	COUNT(Customer_ID) AS total_uses,
	-- Averge number of people occupying the table
	ROUND(AvG(Group_Size), 2) AS avg_group_size,
	-- Average dwell time per table type
	ROUND(AVG(Spend_Amount_CAD), 2) AS avg_spend,
	-- Average stay time per table type
	ROUND(AVG(Stay_Duration_Min), 2) AS avg_duration,
	-- Seating efficiency: revenue per minute per table type
	ROUND(SUM(Spend_Amount_CAD) / SUM(Stay_Duration_Min), 2) AS seat_efficiency
FROM starbucks_data
GROUP BY Seat_Type
ORDER BY avg_duration DESC;
