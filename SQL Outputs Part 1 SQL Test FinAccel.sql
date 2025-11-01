--SQL TEST FINACCEL
--CREATED BY: Yoga Bhakti Utomo
--Created Date: 01-11-2025
--Description : Output result from Part 1



--1. Show a list of only the second last transactions from each vendor
--Output:
+----+----------+------------+---------------------+-----------+----------+----+
| id | cust_id  | order_id   | tran_date           | status    | vendor   | rn |
+----+----------+------------+---------------------+-----------+----------+----+
| 11 | 999019   | TEST000011 | 2018-03-15 12:30:45 | CANCELLED | Vendor A |  2 |
|  9 | 1923192  | TEST000009 | 2018-03-12 10:00:11 | CANCELLED | Vendor B |  2 |
|  6 | 1101011  | TEST000006 | 2018-02-11 11:00:11 | SHIPPED   | Vendor C |  2 |
|  8 | 40111234 | TEST000008 | 2018-03-11 06:30:11 | SHIPPED   | Vendor D |  2 |
+----+----------+------------+---------------------+-----------+----------+----+


--2. Count the transactions from each vendor with the status CANCELLED per day 
--Output:
+----------+-----------------+-----------------+
| vendor   | transaction_day | cancelled_count |
+----------+-----------------+-----------------+
| Vendor A | 2018-01-02      |               1 |
| Vendor A | 2018-03-15      |               1 |
| Vendor B | 2018-03-12      |               1 |
| Vendor C | 2018-02-04      |               1 |
+----------+-----------------+-----------------+

--3.Show a list of customers who made more than 1 SHIPPED purchases 
--Output
+---------+---------------+-------------------+
| cust_id | shipped_count | vendors           |
+---------+---------------+-------------------+
| 1101011 |             2 | Vendor B,Vendor C |
| 645532  |             2 | Vendor A,Vendor C |
+---------+---------------+-------------------+

--4. Show the total transactions (volume) and category of each vendor by following these criteria: 
 --a.	Superb: More than 2 SHIPPED and 0 CANCELLED transactions 
 --b.	Good: More than 2 SHIPPED and 1 or more CANCELLED transactions 
 --c.	Normal: other than Superb and Good criteria 
 --Order the vendors by the best category (Superb, Good, Normal), then by the biggest 	
 --transaction volume
 
 --Output:
 +----------+----------+-------------------+---------------------+-----------------------+
| Vendor   | Category | Total Transaction | Shipped Transaction | Cancelled Transaction |
+----------+----------+-------------------+---------------------+-----------------------+
| Vendor D | Superb   |                 3 |                   3 |                     0 |
| Vendor A | Good     |                 5 |                   3 |                     2 |
| Vendor C | Good     |                 4 |                   3 |                     1 |
| Vendor B | Normal   |                 2 |                   1 |                     1 |
+----------+----------+-------------------+---------------------+-----------------------+

--5. Group the transactions by hour of transaction_date
--Output:
+-----------------+-------------------+
| Hour of the Day | Total Transaction |
+-----------------+-------------------+
| 00              |                 1 |
| 03              |                 1 |
| 05              |                 1 |
| 06              |                 1 |
| 09              |                 1 |
| 10              |                 1 |
| 11              |                 1 |
| 12              |                 1 |
| 13              |                 1 |
| 15              |                 1 |
| 16              |                 1 |
+-----------------+-------------------+

--6. Group the transactions by day and statuses as the example below
--Output:
+------------+---------+-----------+------------+
| Date       | SHIPPED | CANCELLED | PROCESSING |
+------------+---------+-----------+------------+
| 2018-01-01 |       2 |         0 |          0 |
| 2018-01-02 |       0 |         1 |          0 |
| 2018-02-04 |       0 |         1 |          0 |
| 2018-02-10 |       2 |         0 |          0 |
| 2018-02-11 |       1 |         0 |          0 |
| 2018-03-11 |       1 |         0 |          0 |
| 2018-03-12 |       1 |         1 |          0 |
| 2018-03-15 |       0 |         1 |          0 |
| 2018-04-01 |       2 |         0 |          0 |
| 2018-04-02 |       1 |         0 |          0 |
+------------+---------+-----------+------------+

--7. Calculate the average, minimum and maximum of days interval of each transaction (how many days from one transaction to the next)
--Output:
+------------------+------------------+------------------+
| Average Interval | Minimum Interval | Maximum Interval |
+------------------+------------------+------------------+
| 7.00 day(s)      | 0 day(s)         | 33 day(s)        |
+------------------+------------------+------------------+
  