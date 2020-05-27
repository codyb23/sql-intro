--1.

CREATE TABLE "Employees"
(
  "FullName" TEXT NOT NULL,
  "Salary" INT,
  "JobPosition" TEXT,
  "PhoneExtension" TEXT,
  "IsPartTime" TEXT,
  "Id" SERIAL PRIMARY KEY
);

--2.

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Lazy Larry', '250', 'Cashier', '727-278-4678', 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Jerry John', '400', 'Cook', '727-467-7890', 'Yes');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Luke Skywalker', '700', 'Manager', '727-907-3456', 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Chewy Lui', '450', 'Cook', '727-789-4532', 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Cody Banks', '950', 'Manager', '727-895-3789', 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Johnny Cash', '300', 'Cook', '727-451-7845', 'Yes');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Elon Musk', '1500', 'Owner', '727-934-6729', 'No');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Charles Welsh', '200', 'Cashier', '727-532-8956', 'Yes');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Gavin Stark', '950', 'Software Developer', '727-895-9037', 'No');

--3.

SELECT "FullName"
FROM "Employees";

--4.

SELECT "FullName", "PhoneExtension"
From "Employees"
WHERE "IsPartTime" = 'No';


--5.

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Cherry GoldMan', '950', 'Software Developer', '727-657-9154', 'Yes');


--6.

UPDATE "Employees" SET "Salary" = '500' Where "JobPosition" = 'Cook'


--7.

DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';

--8.

ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR
(10);

-- Foreign Keys
--1. 

CREATE TABLE "Departments"
(
  "Id" SERIAL PRIMARY KEY,
  "DepartmentName" TEXT,
  "Building" TEXT
);

--2. 

ALTER TABLE "Employees" ADD COLUMN "DepartmentId" 
INTEGER NULL REFERENCES "Departments"
("Id");

--3.

CREATE TABLE "Orders"
(
  "Id" SERIAL PRIMARY KEY,
  "OrderNumber" TEXT,
  "DatePlaced" TIMESTAMP,
  "Email" Text
);

CREATE TABLE "Products"
(
  "Id" SERIAL PRIMARY KEY,
  "Price" DOUBLE PRECISION,
  "Name" TEXT,
  "Description" TEXT,
  "QuantityInStock" INT
);

--4.

CREATE TABLE "ProductOrders"
(
  "Id" SERIAL PRIMARY KEY,
  "ProductId" INTEGER REFERENCES "Products" ("Id"),
  "OrderId" INTEGER REFERENCES "Orders" ("Id"),
  "OrderQuantity" INTEGER
);

--5.

INSERT INTO "Departments"
  ("DepartmentName", "Building")
VALUES
  ('Development', 'Main');

INSERT INTO "Departments"
  ("DepartmentName", "Building")
VALUES
  ('Marketing', 'North');

--6.

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime", "DepartmentId")
VALUES
  ('Tim Smith', '40000', 'Programmer', '123', 'false', '1');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime", "DepartmentId")
VALUES
  ('Barbara', '80000', 'Manager', '234', 'false', '1');

INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime", "DepartmentId")
VALUES
  ('Tom Jones', '32000', 'Admin', '456', 'true', '2');

--7.

INSERT INTO "Products"
  ("Price", "Name", "Description", "QuantityInStock")
VALUES
  ('12.45', 'Widget', 'The Original Widget', '100');

INSERT INTO "Products"
  ("Price", "Name", "Description", "QuantityInStock")
VALUES
  ('99.99', 'Flowbee', 'Perfect for haircuts', '3');

--8.

INSERT INTO "Orders"
  ("OrderNumber", "DatePlaced", "Email")
VALUES
  ('X529', '2020-01-01 16:55:00', 'person@example.com');

--9.

INSERT INTO "ProductOrders"
  ("ProductId", "OrderId", "OrderQuantity")
VALUES
  ('1', '1', '3');

--10.

INSERT INTO "ProductOrders"
  ("ProductId", "OrderId", "OrderQuantity")
VALUES
  ('2', '1', '2');