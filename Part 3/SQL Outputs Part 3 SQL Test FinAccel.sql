--SQL TEST FINACCEL
--CREATED BY: Yoga Bhakti Utomo
--Created Date: 01-11-2025
--Description : Output result from Part 3

--1. 1. The company deployed several new features in the latest app version. You are tasked to figure out if these new features are beneficial to the company. Please identify and explain the metrics you are going to use to prove the new feature’s
--	 usefulness. You are free to decide on the metrics and can use all 3 tables as reference. Please write the SQL to show the metrics and the results of the query.

--Query 1: Counting total user that pass through funnel analysis (dashboard → service → purchase → confirmation) for each app version.
+-------------+------------------+----------------+-----------------+---------------------+
| app_version | dashboard_visits | service_visits | purchase_visits | confirmation_visits |
+-------------+------------------+----------------+-----------------+---------------------+
| 1.12.0      |               12 |             11 |               8 |                   8 |
| 1.13.0      |               10 |              8 |               5 |                   5 |
+-------------+------------------+----------------+-----------------+---------------------+

--Query 2: Conversion Rate App per version
+-------------+-----------+-----------+-------------------------+
| app_version | confirmed | dashboard | conversion_rate_percent |
+-------------+-----------+-----------+-------------------------+
| 1.12.0      |         8 |        12 |                   66.67 |
| 1.13.0      |         5 |        10 |                   50.00 |
+-------------+-----------+-----------+-------------------------+

--Query 3: Counting total of SHIPPED Transaction per App Version
--Output:
+-------------+----------------------+
| app_version | shipped_transactions |
+-------------+----------------------+
| 1.12.0      |                    8 |
| 1.13.0      |                    6 |
+-------------+----------------------+
