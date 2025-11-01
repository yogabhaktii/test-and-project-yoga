--SQL TEST FINACCEL
--CREATED BY: Yoga Bhakti Utomo
--Created Date: 01-11-2025
--Description : Output result from Part 2


--1. Show the sum of the total value of the products shipped along with the Distributor Commissions 
--(2% of the total product value if total quantity is 100 or less, 4% of the total product value if total quantity sold is more than 100)
--Output:
+-------------------------------+------------+------------------------+
| Product Name                  | Value      | Distributor Commission |
+-------------------------------+------------+------------------------+
| Taro                          | 1,325,500  | 53,020                 |
| Beng beng                     | 6,660,000  | 266,400                |
| Indomie Kari Ayam             | 363,000    | 14,520                 |
| Indomie Ayam Bawang           | 1,732,800  | 69,312                 |
| Teh Sariwangi Murni           | 1,200,000  | 48,000                 |
| Teh Hijau Cap Kepala Djenggot | 142,500    | 2,850                  |
| Coki-coki                     | 70,000     | 1,400                  |
| Bakmi Mewah                   | 26,000,000 | 1,040,000              |
| Pocari                        | 400,000    | 8,000                  |
| Sambal Indofood               | 330,000    | 6,600                  |
| Chuba                         | 300,000    | 6,000                  |
| Momogi                        | 200,000    | 8,000                  |
| Nabati                        | 150,000    | 3,000                  |
+-------------------------------+------------+------------------------+

--2. Show total quantity of “Indomie (all variant)” shipped within February 2018
--Output:
+----------------+
| total_quantity |
+----------------+
|             18 |
+----------------+

--3. For each product, show the ID of the last transaction which contained that particular product 
--Output:
+-------------------------------+---------------------+
| Product Name                  | Last Transaction ID |
+-------------------------------+---------------------+
| Indomie Kari Ayam             |                   6 |
| Teh Hijau Cap Kepala Djenggot |                   6 |
| Coki-coki                     |                   7 |
| Pocari                        |                   9 |
| Sambal Indofood               |                   9 |
| Chuba                         |                  10 |
| Taro                          |                  11 |
| Momogi                        |                  11 |
| Beng beng                     |                  12 |
| Teh Sariwangi Murni           |                  12 |
| Bakmi Mewah                   |                  12 |
| Indomie Ayam Bawang           |                  13 |
| Nabati                        |                  14 |
+-------------------------------+---------------------+
