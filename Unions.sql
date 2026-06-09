-- Databricks notebook source
SELECT account_id, account_holder FROM unions.dataset.branch_sandton_accounts
UNION
SELECT account_id, account_holder FROM unions.dataset.branch_rosebank_accounts;
--QUESTION 2
SELECT product_code, product_name, 'Savings' AS product_type
FROM unions.dataset.savings_products
UNION
SELECT product_code, product_name, 'Current' AS product_type
FROM unions.dataset.current_products; 

--QUESTION 3
SELECT staff_id, staff_name, NULL AS email
 FROM unions.dataset.retail_banking_staff 
UNION 
SELECT staff_id, staff_name, NULL AS email 
 FROM unions.dataset.corporate_banking_staff;

-- QUESTION 4
SELECT city_code, city_name, NULL AS region 
 FROM unions.dataset.mobile_branch_cities 
UNION 
SELECT city_code, city_name, NULL AS region 
 FROM unions.dataset.digital_branch_cities;

--QUESTION 5
SELECT customer_id, customer_name, NULL AS segment
 FROM unions.dataset.push_notification_targets 
UNION 
SELECT customer_id, customer_name, NULL AS segment 
 FROM unions.dataset.inapp_banner_targets;





