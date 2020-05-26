1.
CREATE TABLE "Employees"
(
  "FullName" TEXT NOT NULL,
  "Salary" INT,
  "JobPosition" TEXT,
  "PhoneExtension" TEXT,
  "IsPartTime" TEXT,
  "Id" SERIAL PRIMARY KEY
);
2.
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
3.
SELECT "FullName"
FROM "Employees";
4.
SELECT "FullName", "PhoneExtension"
From "Employees"
WHERE "IsPartTime" = 'No';

5.
INSERT INTO "Employees"
  ("FullName", "Salary", "JobPosition", "PhoneExtension",
  "IsPartTime")
VALUES
  ('Cherry GoldMan', '850', 'Software Developer', '727-657-9154', 'Yes');

6.
UPDATE "Employees" SET "Salary" = '500' Where "Salary" = '400'
UPDATE "Employees" SET "Salary" = '500' Where "Salary" = '300'
UPDATE "Employees" SET "Salary" = '500' Where "Salary" = '600'
UPDATE "Employees" SET "Salary" = '500' Where "Salary" = '450'
7.
DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
8.
ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR
(10);