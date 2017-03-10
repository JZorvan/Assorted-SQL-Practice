Joins Review

-- Use a JOIN to select all patrons with outstanding books. Select their first name and email address.

SELECT patrons.first_name, patrons.email, loans.* FROM patrons INNER JOIN loans ON patrons.id = loans.patron_id;

-- Use a JOIN to find out which patrons haven't had any loans. Select their first name and email address.

SELECT patrons.first_name, patrons.email FROM patrons LEFT JOIN loans ON patrons.id = loans.patron_id WHERE loaned_on IS NULL;

-- Create a report that shows the title of the book, first and last name of the patron, email and all date fields of the loan.

SELECT patrons.first_name || " " || patrons.last_name AS 'Patron', 
    patrons.email AS 'Email', 
    books.title AS 'Title',  
    loans.loaned_on AS 'Loaned On', 
    loans.return_by AS 'Due Date', 
    loans.returned_on AS 'Return On' FROM patrons 
  INNER JOIN loans ON patrons.id = loans.patron_id 
  INNER JOIN books ON loans.book_id = books.id
  ORDER BY patrons.first_name;

-- In a car database there is a Model table with columns, ModelID, MakeID and ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- For all cars in the database, show Model Name, VIN and Sticker Price in one result set.

SELECT Model.ModelName AS 'Model Name', Car.VIN AS 'VIN', Car.StickerPrice AS 'Sticker Price' FROM Model INNER JOIN Car ON Model.ModelID = Car.ModelID;

-- In a car database there is a Make table with columns, MakeID and MakeName, a Model table with columns, ModelID, MakeID and ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- For all cars in the database, show Make Name, Model Name, VIN and Sticker Price from the Model and Car tables in one result set.

SELECT Make.MakeName AS 'Make', Model.ModelName AS 'Model', Car.VIN AS 'VIN', Car.StickerPrice AS 'Sticker Price' FROM Make INNER JOIN Model ON Make.MakeID = Model.MakeID INNER JOIN Car ON Model.ModelID = Car.ModelID;

-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate. The database also has a SalesRep table with columns, SalesRepID, FirstName, LastName, SSN, PhoneNumber, StreetAddress, City, State and ZipCode.
-- Show the First and Last Name of each sales rep along with SaleAmount from both the SalesRep and Sale tables in one result set.

SELECT SalesRep.FirstName AS 'First Name', SalesRep.LastName AS 'Last Name', Sale.SaleAmount AS 'Sale Amount' FROM Sale INNER JOIN SalesRep ON Sale.SalesRepID = SalesRep.SalesRepID;

-- In a car database there is a Model table with columns, ModelID, MakeID and ModelName and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- Show all Model names from the Model table along with VIN from the Car table. Make sure models that aren’t in the Car table still show in the results!

SELECT Model.ModelName AS 'Model', Car.VIN AS 'VIN' FROM Model LEFT OUTER JOIN Car ON Car.ModelID = Model.ModelID;

-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate. The database also has a SalesRep table with columns, SalesRepID, FirstName, LastName, SSN, PhoneNumber, StreetAddress, City, State and ZipCode.
-- Show all SaleDate, SaleAmount, and SalesRep First and Last name from Sale and SalesRep. Make sure that all Sales appear in results even if there is no SalesRep associated to the sale.

SELECT Sale.SaleDate AS 'Date', Sale.SaleAmount AS 'Amount', SalesRep.FirstName AS 'Agent First Name', SalesRep.LastName AS 'Agent Last Name' FROM Sale LEFT OUTER JOIN SalesRep ON Sale.SalesRepID = SalesRep.SalesRepID;