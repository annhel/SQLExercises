--Querying practice
	--Select all records from the Employee table.
select * from "Employee";
	--Select all records from the Employee table where last name is King.
select * from "Employee" where "LastName" = 'King';
	--Select all records from the Employee table where first name is Andrew and REPORTSTO is NULL.
select * from "Employee" where "FirstName" = 'Andrew' and "ReportsTo" is null;
	--Select all albums in Album table and sort result set in descending order by title.
select * from "Album" order by "Title" desc;
	--Select first name from Customer and sort result set in ascending order by city
select "FirstName" from "Customer" order by "City" asc;
	--Select all invoices with a billing address like “T%”
select * from "Invoice" where "BillingAddress" like 'T%';
	--Select all invoices that have a total between 15 and 50
select * from "Invoice" where "Total" between 15 and 50;
	--Select all employees hired between 1st of June 2003 and 1st of March 2004
select * from "Employee" where "HireDate" between '2003-06-01' and '2004-03-01';
--Insert practice
	--Insert two new records into Genre table
insert into "Genre" values ((select max("GenreId") from "Genre") + 1,'Latin-Pop');
insert into "Genre" values ((select max("GenreId") from "Genre") + 1, 'K-Pop');
	--Insert two new records into Employee table
insert into "Employee"("EmployeeId", "LastName", "FirstName", "HireDate", "Title") values ((select max("EmployeeId") from "Employee") + 1, 'Martinez', 'Angel', '2023-01-23', 'Software Enginner');
insert into "Employee"("EmployeeId", "LastName", "FirstName", "HireDate", "Title") values ((select max("EmployeeId") from "Employee") + 1, 'Smith', 'Timmy', '2023-02-28', 'Software Enginner');
	--Insert two new records into Customer table
insert into "Customer"("CustomerId", "FirstName", "LastName", "Email") values ((select max("CustomerId") from "Customer") + 1, 'Ronald', 'Donald', 'ronnydonny@gmail.com');
--Update Practice
	--Update Aaron Mitchell in Customer table to Robert Walter
update "Customer" set "FirstName" = 'Robert', "LastName" = 'Walter' where "FirstName" = 'Aaron' and "LastName" = 'Mitchell';
	--Update name of artist in the Artist table “Creedence Clearwater Revival” to “CCR”
update "Artist" set "Name" = 'CCR' where "Name" = 'Creedence Clearwater Revival';