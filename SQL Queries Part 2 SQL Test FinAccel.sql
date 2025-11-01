--SQL TEST FINACCEL
--CREATED BY: Yoga Bhakti Utomo
--Created Date: 01-11-2025
--Description : List Queries of Part 2 test


--PART 2
--1. Show the sum of the total value of the products shipped along with the Distributor Commissions 
--(2% of the total product value if total quantity is 100 or less, 4% of the total product value if total quantity sold is more than 100) 
SELECT 
    product_name AS 'Product Name',
    FORMAT(SUM(quantity * price), 0) AS 'Value',
    FORMAT(
        CASE 
            WHEN SUM(quantity) <= 100 THEN SUM(quantity * price) * 0.02
            ELSE SUM(quantity * price) * 0.04
        END, 0
    ) AS 'Distributor Commission'
FROM transaction_detail
GROUP BY product_name
ORDER BY FIELD(product_name, 'Taro', 'Beng Beng', 'Indomie Kari Ayam', 'Indomie Ayam Bawang', 'Teh Sariwangi Murni', 'Teh Hijau Cap Kepala Djenggot',
			   'Coki-coki', 'Bakmi Mewah', 'Pocari', 'Sambal Indofood', 'Chuba', 'Momogi', 'Nabati');
			   
			   
--2. Show total quantity of “Indomie (all variant)” shipped within February 2018 
SELECT 
    SUM(td.quantity) AS total_quantity
FROM transaction_detail td
JOIN transaction t ON td.trx_id = t.id
WHERE t.status = 'SHIPPED'
  AND t.tran_date BETWEEN '2018-02-01' AND '2018-02-28'
  AND td.product_name LIKE 'Indomie%';
  
  
--3. For each product, show the ID of the last transaction which contained that particular product
SELECT
    product_name AS `Product Name`,
    MAX(trx_id) AS `Last Transaction ID`
FROM transaction_detail
GROUP BY product_name
ORDER BY MAX(trx_id) asc;