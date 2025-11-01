--SQL TEST FINACCEL
--CREATED BY: Yoga Bhakti Utomo
--Created Date: 01-11-2025
--Description : List Queries of Part 1 test

--PART 1
--1. Show a list of only the second last transactions from each vendor

SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY vendor ORDER BY tran_date DESC) AS rn
    FROM transaction
) AS ranked
WHERE rn = 2;


--2. Count the transactions from each vendor with the status CANCELLED per day  

SELECT 
    vendor,
    DATE(tran_date) AS transaction_day,
    COUNT(*) AS cancelled_count
FROM transaction
WHERE status = 'CANCELLED'
GROUP BY vendor, tran_date
ORDER BY vendor, tran_date asc;

--3.Show a list of customers who made more than 1 SHIPPED purchases

SELECT
    cust_id,
    COUNT(*) AS shipped_count,
    GROUP_CONCAT(DISTINCT vendor ORDER BY vendor) AS vendors
FROM transaction
WHERE status = 'SHIPPED'
GROUP BY cust_id
HAVING shipped_count > 1;


--4. Show the total transactions (volume) and category of each vendor by following these criteria: 
 --a.	Superb: More than 2 SHIPPED and 0 CANCELLED transactions 
 --b.	Good: More than 2 SHIPPED and 1 or more CANCELLED transactions 
 --c.	Normal: other than Superb and Good criteria 
 --Order the vendors by the best category (Superb, Good, Normal), then by the biggest 	
 --transaction volume 

SELECT
    vendor AS 'Vendor',
    CASE
        WHEN SUM(CASE WHEN status = 'SHIPPED' THEN 1 ELSE 0 END) > 2
             AND SUM(CASE WHEN status = 'CANCELLED' THEN 1 ELSE 0 END) = 0 THEN 'Superb'
        WHEN SUM(CASE WHEN status = 'SHIPPED' THEN 1 ELSE 0 END) > 2
             AND SUM(CASE WHEN status = 'CANCELLED' THEN 1 ELSE 0 END) >= 1 THEN 'Good'
        ELSE 'Normal'
    END AS 'Category',
    COUNT(*) AS 'Total Transaction',
    SUM(CASE WHEN status = 'SHIPPED' THEN 1 ELSE 0 END) AS 'Shipped Transaction',
    SUM(CASE WHEN status = 'CANCELLED' THEN 1 ELSE 0 END) AS 'Cancelled Transaction'

FROM transaction
GROUP BY vendor
ORDER BY 
    CASE
        WHEN SUM(CASE WHEN status = 'SHIPPED' THEN 1 ELSE 0 END) > 2
             AND SUM(CASE WHEN status = 'CANCELLED' THEN 1 ELSE 0 END) = 0 THEN 1
        WHEN SUM(CASE WHEN status = 'SHIPPED' THEN 1 ELSE 0 END) > 2
             AND SUM(CASE WHEN status = 'CANCELLED' THEN 1 ELSE 0 END) >= 1 THEN 2
        ELSE 3
    END,
    'Total Transaction' DESC;
	

--5. Group the transactions by hour of transaction_date  

SELECT distinct
    LPAD(HOUR(tran_date), 2, '0') AS 'Hour of the Day',
    COUNT(*) AS 'Total Transaction'
FROM transaction
GROUP BY tran_date
ORDER BY 'Hour of the Day';


--6. Group the transactions by day and statuses as the example below
SELECT
    DATE(tran_date) AS 'Date',
    SUM(CASE WHEN status = 'SHIPPED' THEN 1 ELSE 0 END) AS 'SHIPPED',
    SUM(CASE WHEN status = 'CANCELLED' THEN 1 ELSE 0 END) AS 'CANCELLED',
    SUM(CASE WHEN status = 'PROCESSING' THEN 1 ELSE 0 END) AS 'PROCESSING'
FROM transaction
GROUP BY DATE(tran_date)
ORDER BY 'Date';


--7.Calculate the average, minimum and maximum of days interval of each transaction (how many days from one transaction to the next)
SELECT
    CONCAT(ROUND(AVG(diff_days), 2), ' day(s)') AS 'Average Interval',
    CONCAT(MIN(diff_days), ' day(s)') AS 'Minimum Interval',
    CONCAT(MAX(diff_days), ' day(s)') AS 'Maximum Interval'
FROM (
    SELECT 
        DATEDIFF(tran_date, LAG(tran_date) OVER (ORDER BY tran_date)) AS diff_days
    FROM transaction
) AS intervals
WHERE diff_days IS NOT NULL;



  