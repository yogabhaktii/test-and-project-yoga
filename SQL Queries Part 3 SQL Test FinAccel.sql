--SQL TEST FINACCEL
--CREATED BY: Yoga Bhakti Utomo
--Created Date: 01-11-2025
--Description : List Queries of Part 3 test


--PART 3
--1. The company deployed several new features in the latest app version. You are tasked to figure out if these new features are beneficial to the company. Please identify and explain the metrics you are going to use to prove the new feature’s
--	 usefulness. You are free to decide on the metrics and can use all 3 tables as reference. Please write the SQL to show the metrics and the results of the query.

--2. One of the metrics should show a funnel.
--Query 1: Counting total user that pass through funnel analysis (dashboard → service → purchase → confirmation) for each app version.

SELECT 
    app_version,
    COUNT(DISTINCT CASE WHEN event_type = 'dashboard_page' THEN user_id END) AS dashboard_visits,
    COUNT(DISTINCT CASE WHEN event_type = 'service_page' THEN user_id END) AS service_visits,
    COUNT(DISTINCT CASE WHEN event_type = 'purchase_page' THEN user_id END) AS purchase_visits,
    COUNT(DISTINCT CASE WHEN event_type = 'confirmation_page' THEN user_id END) AS confirmation_visits
FROM tracking
GROUP BY app_version
ORDER BY app_version;

--Query 2: Conversion Rate App per version
SELECT 
    app_version,
    COUNT(DISTINCT CASE WHEN event_type = 'confirmation_page' THEN user_id END) AS confirmed,
    COUNT(DISTINCT CASE WHEN event_type = 'dashboard_page' THEN user_id END) AS dashboard,
    ROUND(
        COUNT(DISTINCT CASE WHEN event_type = 'confirmation_page' THEN user_id END) /
        COUNT(DISTINCT CASE WHEN event_type = 'dashboard_page' THEN user_id END) * 100, 2
    ) AS conversion_rate_percent
FROM tracking
GROUP BY app_version
ORDER BY app_version;

--Query 3: Counting total of SHIPPED Transaction per App Version
SELECT
    t.app_version,
    COUNT(DISTINCT tr.order_id) AS shipped_transactions
FROM tracking t
JOIN transaction tr
    ON t.user_id = tr.cust_id
WHERE tr.status = 'SHIPPED'
  AND t.event_type = 'confirmation_page'
GROUP BY t.app_version
ORDER BY shipped_transactions DESC;

--Conclusion:
--1. Conversion Rate and total SHIPPED transaction is decreased in 1.13.0 App Version comparing to the previous version.
--2. Based on the analysis of the queries above, the new features introduced in version 1.13.0 have not yet shown a positive impact on business performance.
--3. Based on the query analysis above, it should be evaluated by A/B Testing that tested by two groups of users and comparing the latest version and previous versions based on:
--		 	a. Average time from dashboard to confirmation_page
--			b. total transaction per user
--			c. Retention analysis to measure user return behavior.
--			d. User feedback collection to identify usability issues


 		
