--Joins
	--Create an inner join that joins customers and orders and specifies the name of the customer and the invoiceId
select "Customer"."FirstName", "Invoice"."InvoiceId" from "Customer" join "Invoice"  on "Customer"."CustomerId" = "Invoice"."CustomerId";

	--Create an outer join that joins the customer and invoice table, specifying the CustomerId, firstname, lastname, invoiceId, and total.
select "Invoice"."InvoiceId", "Customer"."FirstName", "Customer"."LastName","Invoice"."Total" from "Customer"  full outer join "Invoice"  on "Customer"."CustomerId" = "Invoice"."CustomerId";

	--Create a right join that joins album and artist specifying artist name and title.
select "Artist"."Name", "Album"."Title" from "Album" right join "Artist" on "Artist"."ArtistId" = "Album"."ArtistId";

	--Create a cross join that joins album and artist and sorts by artist name in ascending order.
select * from "Album" cross join "Artist" order by "Artist"."Name" asc;

	--Perform a self-join on the employee table, joining on the reportsto column.
select e1."FirstName" as e1_name, e2."FirstName" as e2_name from "Employee" e1 inner join  "Employee" e2 on e1."ReportsTo" = e2."ReportsTo" and e1."EmployeeId" != e2."EmployeeId";

--Set Operators
	--Use a unionall to create a table that has the name of all employees and customers
select "Employee"."FirstName" from "Employee"
union
select "Customer"."FirstName" from "Customer";



