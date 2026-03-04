
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
select count (*) as total_number_of_sales_records
FROM [pc_data].[dbo].[pc_data];

-- 2. Count the number of sales per Continent.
select Continent,
	count (*) as continent_sales
FROM [pc_data].[dbo].[pc_data]
group by Continent;

-- 3. Count the number of sales per Country or State.
select Country_or_State,
	count (*) as Country_or_State_sales
FROM [pc_data].[dbo].[pc_data]
group by Country_or_State;

-- 4. List all distinct Shop Name values.
select distinct Shop_Name
FROM [pc_data].[dbo].[pc_data];

-- 5. Find the average Sale Price.
select avg (Sale_Price) as average_Sale_Price
FROM [pc_data].[dbo].[pc_data];

-- 6. Find the highest and lowest Sale Price.
select max (Sale_Price) as highest_Sale_Price ,
		min (Sale_Price) as lowest_sale_price
FROM [pc_data].[dbo].[pc_data];

-- 7. Count the number of sales by Payment Method.
select Payment_Method,
	count (*) as count_by_payment_method
FROM [pc_data].[dbo].[pc_data]
group by Payment_Method;

-- 8. Count the number of sales by Channel (Online vs Offline).
select Channel,
	count (*) as sales_by_channel
FROM [pc_data].[dbo].[pc_data]
group by Channel;

-- 9. Count the number of sales by Priority level.
select Priority,
	count (*) as sales_by_Priority
FROM [pc_data].[dbo].[pc_data]
group by Priority;

-- 10. Count the number of distinct PC Make values.
select PC_Make,
count (*) as sales_by_PC_Make
FROM [pc_data].[dbo].[pc_data]
group by PC_Make;

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
select sum (Sale_Price) as total_revenue
FROM [pc_data].[dbo].[pc_data];

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
select sum (Sale_Price - Cost_Price) as total_profit
FROM [pc_data].[dbo].[pc_data]

-- 13. Find the average Discount Amount.
select avg (Discount_Amount) as average_Discount_Amount
FROM [pc_data].[dbo].[pc_data];

-- 14. Calculate total Finance Amount issued.
select sum (Finance_Amount) as total_Finance_Amount_issued
FROM [pc_data].[dbo].[pc_data];

-- 15. Find total revenue per PC Make.
select PC_Make,
		sum (Sale_Price) as revenue_per_pc_make
FROM [pc_data].[dbo].[pc_data]
group by PC_Make;

-- 16. Find average Sale Price per Storage Type.
select Storage_Type,
		sum (Sale_Price) as revenue_per_Storage_Type
FROM [pc_data].[dbo].[pc_data]
group by Storage_Type;

-- 17. Calculate total revenue per Shop Name.
select Shop_Name,
		sum (Sale_Price) as revenue_per_Shop_Name
FROM [pc_data].[dbo].[pc_data]
group by Shop_Name;

-- 18. Calculate total revenue per Sales Person Name.
select Sales_Person_Name,
		sum (Sale_Price) as revenue_per_Sales_Person_Name
FROM [pc_data].[dbo].[pc_data]
group by Sales_Person_Name;

-- 19. Find average Credit Score per Payment Method.
select Payment_Method, 
		avg (Credit_Score) as average_Credit_Score_per_Payment_Method
FROM [pc_data].[dbo].[pc_data]
group by Payment_Method;

-- 20. Calculate total Cost of Repairs per Sales Person Department.
select Sales_Person_Department,
	sum (cast (Cost_of_Repairs as int)) as total_Cost_of_Repairs_per_Sales_Person_Department
FROM [pc_data].[dbo].[pc_data]
group by Sales_Person_Department;

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
select Shop_Name,
	sum (Sale_Price - Cost_Price) as total_profit_per_shop_name
FROM [pc_data].[dbo].[pc_data]
group by Shop_Name;

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
select sum ((Sale_Price - Cost_Price) / Sale_Price) as total_profit_margin_per_sale
FROM [pc_data].[dbo].[pc_data];

-- 23. Determine which Continent has the highest total revenue.
select TOP 1 Continent,
	sum (Sale_Price) as revenue_per_Sales_Person_Name
FROM [pc_data].[dbo].[pc_data]
group by Continent
order by sum (Sale_Price) DESC;

-- 24. Calculate average Sale Price per RAM size.
select RAM, 
		avg (Sale_Price) as average__PER_RAM
FROM [pc_data].[dbo].[pc_data]
group by RAM;

-- 25. Find the PC Model with the highest Sale Price.
select top 1 PC_Model,
			Sale_price
FROM [pc_data].[dbo].[pc_data]
order by Sale_price DESC;

-- 26. Calculate the average number of days between Purchase Date and Ship Date.
select avg (datediff (day, cast (Purchase_Date as date), cast (Ship_Date as date))) as average_number_of_days_between_Purchase_and_Ship_Date
FROM [pc_data].[dbo].[pc_data]

-- 27. Determine which Sales Person Department generates the highest revenue.
select top 1 Sales_Person_Name,
		sum (Sale_Price) as revenue_per_Sales_Person_Name
FROM [pc_data].[dbo].[pc_data]
group by Sales_Person_Name
order by sum (Sale_Price) DESC;

-- 28. Calculate total revenue per Storage Capacity.
select Storage_Capacity,
		sum (Sale_Price) as revenue_per_Storage_Capacity
FROM [pc_data].[dbo].[pc_data]
group by Storage_Capacity;

-- 29. Identify sales where Sale Price is lower than PC Market Price.
select Sale_Price,
		PC_Market_Price
FROM [pc_data].[dbo].[pc_data]
where Sale_Price < PC_Market_Price;

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.
select Sales_Person_Name,
		sum (Sale_Price) as Total_Sales,
	rank () over (order by sum (Sale_Price) DESC) as Rank_number
 FROM [pc_data].[dbo].[pc_data]
group by Sales_Person_Name;

