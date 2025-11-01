--SQL TEST FINACCEL
--CREATED BY: Yoga Bhakti Utomo
--Created Date: 01-11-2025
--Description : SQL Create & Insert table


--CREATE
--Part 1
CREATE TABLE transaction (
  id INTEGER PRIMARY KEY,
  cust_id varchar(10) NOT NULL,
  order_id varchar(10) NOT NULL,
  tran_date datetime not null,
  status varchar(10) not null,
  vendor varchar(10)not null
);

--Part 2
CREATE TABLE transaction_detail (
  trx_id INTEGER,
  product_name varchar(50) NOT NULL,
  quantity INTEGER,
  price decimal(10,2) not null
);

--Part 3
CREATE TABLE tracking (
  user_id INTEGER,
  event_time datetime NOT NULL,
  app_version varchar(20) not null,
  event_type varchar(50) not null
);

--INSERT
--Part 1:
INSERT INTO transaction VALUES (1, '422818', 'TEST000001', '2018-01-01 0:00:10', 'SHIPPED', 'Vendor A');
INSERT INTO transaction VALUES (2, '181820', 'TEST000002', '2018-01-01 0:10:10', 'SHIPPED', 'Vendor A');
INSERT INTO transaction VALUES (3, '999019', 'TEST000003', '2018-01-02 3:18:01', 'CANCELLED', 'Vendor A');
INSERT INTO transaction VALUES (4, '1923192', 'TEST000004', '2018-02-04 5:00:00', 'CANCELLED', 'Vendor C');
INSERT INTO transaction VALUES (5, '645532', 'TEST000005', '2018-02-10 16:00:10', 'SHIPPED', 'Vendor C');
INSERT INTO transaction VALUES (6, '1101011', 'TEST000006', '2018-02-11 11:00:11', 'SHIPPED', 'Vendor C');
INSERT INTO transaction VALUES (7, '1020000', 'TEST000007', '2018-02-10 0:00:00', 'SHIPPED', 'Vendor D');
INSERT INTO transaction VALUES (8, '40111234', 'TEST000008', '2018-03-11 6:30:11', 'SHIPPED', 'Vendor D');
INSERT INTO transaction VALUES (9, '1923192', 'TEST000009', '2018-03-12 10:00:11', 'CANCELLED', 'Vendor B');
INSERT INTO transaction VALUES (10, '1101011', 'TEST000010', '2018-03-12 15:30:12', 'SHIPPED', 'Vendor B');
INSERT INTO transaction VALUES (11, '999019', 'TEST000011', '2018-03-15 12:30:45', 'CANCELLED', 'Vendor A');
INSERT INTO transaction VALUES (12, '645532', 'TEST000012', '2018-04-01 9:30:22', 'SHIPPED', 'Vendor A');
INSERT INTO transaction VALUES (13, '650013', 'TEST000013', '2018-04-01 10:50:37', 'SHIPPED', 'Vendor C');
INSERT INTO transaction VALUES (14, '777734', 'TEST000014', '2018-04-02 13:45:19', 'SHIPPED', 'Vendor D');

--Part 2:
INSERT INTO transaction_detail VALUES (1, 'Beng beng', 100, 6000);
INSERT INTO transaction_detail VALUES (1, 'Taro', 80, 5500);
INSERT INTO transaction_detail VALUES (2, 'Beng Beng', 70, 6000);
INSERT INTO transaction_detail VALUES (2, 'Taro', 41, 5500);
INSERT INTO transaction_detail VALUES (2, 'Indomie Kari Ayam', 12, 3000);
INSERT INTO transaction_detail VALUES (2, 'Indomie Ayam Bawang', 20, 3100);
INSERT INTO transaction_detail VALUES (3, 'Indomie Ayam Bawang', 30, 3200);
INSERT INTO transaction_detail VALUES (3, 'Indomie Kari Ayam', 90, 3300);
INSERT INTO transaction_detail VALUES (3, 'Taro', 100, 5500);
INSERT INTO transaction_detail VALUES (4, 'Beng Beng', 40, 6000);
INSERT INTO transaction_detail VALUES (5, 'Teh Sariwangi Murni', 50, 8000);
INSERT INTO transaction_detail VALUES (6, 'Indomie Kari Ayam', 10, 3000);
INSERT INTO transaction_detail VALUES (6, 'Indomie Ayam Bawang', 8, 3100);
INSERT INTO transaction_detail VALUES (6, 'Teh Sariwangi Murni', 80, 8000);
INSERT INTO transaction_detail VALUES (6, 'Teh Hijau Cap Kepala Djenggot', 15, 9500);
INSERT INTO transaction_detail VALUES (7, 'Coki-coki', 70, 1000);
INSERT INTO transaction_detail VALUES (8, 'Bakmi Mewah', 1500, 13000);
INSERT INTO transaction_detail VALUES (9, 'Pocari', 50, 8000);
INSERT INTO transaction_detail VALUES (9, 'Sambal Indofood', 22, 15000);
INSERT INTO transaction_detail VALUES (10, 'Chuba', 100, 3000);
INSERT INTO transaction_detail VALUES (11, 'Momogi', 200, 1000);
INSERT INTO transaction_detail VALUES (11, 'Taro', 20, 5500);
INSERT INTO transaction_detail VALUES (12, 'Bakmi Mewah', 500, 13000);
INSERT INTO transaction_detail VALUES (12, 'Beng Beng', 900, 6000);
INSERT INTO transaction_detail VALUES (12, 'Teh Sariwangi Murni', 20, 8000);
INSERT INTO transaction_detail VALUES (13, 'Indomie Ayam Bawang', 500, 3100);
INSERT INTO transaction_detail VALUES (14, 'Nabati', 100, 1500);


--Part 3:
INSERT INTO tracking VALUES (181820, '2018-01-01 00:09:50', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (181820, '2018-01-01 00:10:00', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (181820, '2018-01-01 00:10:10', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (181820, '2018-01-01 00:10:25', '1.12.0', 'confirmation_page');
INSERT INTO tracking VALUES (422818, '2018-01-01 00:00:02', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (422818, '2018-01-01 00:00:05', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (422818, '2018-01-01 00:00:10', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (422818, '2018-01-01 00:00:15', '1.12.0', 'confirmation_page');
INSERT INTO tracking VALUES (645532, '2018-02-10 14:44:13', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (645532, '2018-02-10 15:44:13', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (645532, '2018-02-10 15:48:13', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (645532, '2018-02-10 16:00:10', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (645532, '2018-02-10 16:03:05', '1.12.0', 'confirmation_page');
INSERT INTO tracking VALUES (645532, '2018-04-01 08:10:55', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (645532, '2018-04-01 08:13:11', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (645532, '2018-04-01 08:22:22', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (645532, '2018-04-01 09:05:22', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (645532, '2018-04-01 09:30:22', '1.13.0', 'purchase_page');
INSERT INTO tracking VALUES (645532, '2018-04-01 09:37:11', '1.13.0', 'confirmation_page');
INSERT INTO tracking VALUES (650013, '2018-04-01 10:12:55', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (650013, '2018-04-01 10:42:11', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (650013, '2018-04-01 10:50:37', '1.13.0', 'purchase_page');
INSERT INTO tracking VALUES (650013, '2018-04-01 10:55:31', '1.13.0', 'confirmation_page');
INSERT INTO tracking VALUES (777734, '2018-04-02 12:15:11', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (777734, '2018-04-02 13:40:11', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (777734, '2018-04-02 13:43:55', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (777734, '2018-04-02 13:45:19', '1.13.0', 'purchase_page');
INSERT INTO tracking VALUES (777734, '2018-04-02 13:48:32', '1.13.0', 'confirmation_page');
INSERT INTO tracking VALUES (808894, '2018-04-01 08:50:27', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (808894, '2018-04-01 08:55:22', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (888888, '2018-04-02 17:41:55', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (888889, '2018-04-02 11:42:12', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (888889, '2018-04-02 11:48:12', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (888891, '2018-01-02 05:22:12', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (888892, '2018-01-02 13:22:12', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (888892, '2018-01-02 13:33:41', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (888893, '2018-03-12 08:01:12', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (888893, '2018-03-12 08:11:12', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (888894, '2018-03-12 06:55:00', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (888894, '2018-03-12 06:57:00', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (888895, '2018-03-13 02:33:22', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (888895, '2018-03-13 02:33:28', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (888896, '2018-03-15 05:17:22', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (999019, '2018-01-02 03:00:05', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (999019, '2018-01-02 03:03:00', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (999019, '2018-01-02 03:18:01', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (999019, '2018-01-02 03:19:05', '1.12.0', 'confirmation_page');
INSERT INTO tracking VALUES (999019, '2018-03-15 12:11:33', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (999019, '2018-03-15 12:25:31', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (999019, '2018-03-15 12:30:45', '1.13.0', 'purchase_page');
INSERT INTO tracking VALUES (999019, '2018-03-15 12:50:12', '1.13.0', 'confirmation_page');
INSERT INTO tracking VALUES (1020000, '2018-02-09 23:55:22', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (1020000, '2018-02-09 23:58:41', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (1020000, '2018-02-10 00:00:00', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (1020000, '2018-02-10 00:00:33', '1.12.0', 'confirmation_page');
INSERT INTO tracking VALUES (1101011, '2018-02-11 10:33:22', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (1101011, '2018-02-11 10:34:19', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (1101011, '2018-02-11 11:00:11', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (1101011, '2018-02-11 11:07:12', '1.12.0', 'confirmation_page');
INSERT INTO tracking VALUES (1101011, '2018-03-12 15:09:12', '1.13.0', 'dashboard_page');
INSERT INTO tracking VALUES (1101011, '2018-03-12 15:21:22', '1.13.0', 'service_page');
INSERT INTO tracking VALUES (1101011, '2018-03-12 15:30:12', '1.13.0', 'purchase_page');
INSERT INTO tracking VALUES (1101011, '2018-03-12 15:34:12', '1.13.0', 'confirmation_page');
INSERT INTO tracking VALUES (1923192, '2018-02-04 04:00:00', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (1923192, '2018-02-04 04:12:00', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (1923192, '2018-02-04 04:14:00', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (1923192, '2018-02-04 04:22:00', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (1923192, '2018-02-04 05:00:00', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (1923192, '2018-02-04 05:02:00', '1.12.0', 'confirmation_page');
INSERT INTO tracking VALUES (1923192, '2018-03-12 09:22:55', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (1923192, '2018-03-12 09:31:22', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (1923192, '2018-03-12 10:00:11', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (1923192, '2018-03-12 10:15:11', '1.12.0', 'confirmation_page');
INSERT INTO tracking VALUES (40111234, '2018-03-11 06:05:18', '1.12.0', 'dashboard_page');
INSERT INTO tracking VALUES (40111234, '2018-03-11 06:22:44', '1.12.0', 'service_page');
INSERT INTO tracking VALUES (40111234, '2018-03-11 06:30:11', '1.12.0', 'purchase_page');
INSERT INTO tracking VALUES (40111234, '2018-03-11 06:43:12', '1.12.0', 'confirmation_page');

