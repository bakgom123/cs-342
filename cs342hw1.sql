-- CS 342 HW1
-- Gunju Yoo 
-- Jan 24, 2023

  

--1 
use ap 
GO 


--2
select VendorContactFName,VendorContactLName, VendorState, VendorCity from Vendors 
order by VendorState, VendorCity, VendorContactLName, VendorContactFName 


--3
select VendorContactLName + ', ' + VendorContactFName as VendorFullName from Vendors
where VendorState = 'OH'


--4
select InvoiceTotal, (InvoiceTotal * .25) as PercentInvoiceTotal, (InvoiceTotal * .25) + InvoiceTotal as PercentTotalPlus10 from Invoices
GO


--5(1)
select VendorContactLName + ', ' + VendorContactFName as VendorFullName from Vendors
where VendorContactLName like 'A%' 
or VendorContactLName like 'D%' 
or VendorContactLName like 'E%' 
or VendorContactLName like 'L%' 
GO


--5(2)
select VendorContactLName + ', ' + VendorContactFName as VendorFullName from Vendors
where VendorContactLName like '[ADEL]%'
GO


--6 
select PaymentDate from Invoices
where PaymentDate IS Null and PaymentTotal != 0
GO


--7
select * from Vendors
where DefaultTermsID = 3
GO


--8
select * from Vendors
where DefaultTermsID = 3
and DefaultAccountNo >= 540
GO


--9
select * from Vendors
where VendorName like '%Company%'
GO


--10
select VendorState, left(VendorPhone, 5) as Prefix from Vendors
GO


--11
select VendorState, left(VendorPhone, 5) as Prefix from Vendors
where left(VendorPhone, 5) IS NOT NULL
GO


--12 
use pubs  
GO 


--13 
select top 5 title, ytd_sales from titles 
order by ytd_sales desc
GO 


--14
select title, (ytd_sales/price) as Sold from titles
GO


--15
select top 3 title, (ytd_sales/price) as Sold from titles
order by (ytd_sales/price) desc
GO

--16
-- It might uses different data types in the same column.