-- Create database and tables
DROP DATABASE IF EXISTS ShopDB;
CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT PRIMARY KEY,
    Name VARCHAR(50)
);

CREATE TABLE Product(
	ID INT PRIMARY KEY,
    ProductName VARCHAR(50)
);
CREATE TABLE Warehouses(
	ID INT PRIMARY KEY,
    Name VARCHAR(50),
    AddressID VARCHAR(50),
    CountryID INT,
    FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION
    
);
CREATE TABLE ProductInventory (
    ID INT PRIMARY KEY,
    ProductID INT,
    Amount INT,
    WarehousesID INT,
    FOREIGN KEY (WarehousesID) REFERENCES Warehouses(ID) ON DELETE NO ACTION, 
    FOREIGN KEY (ProductID) REFERENCES Product(ID) ON DELETE NO ACTION
);

-- Populate test data

INSERT INTO Countries (ID, Name) VALUES (1, 'Country1');
INSERT INTO Countries (ID, Name) VALUES (2, 'Country2');

INSERT INTO Product(ID, ProductName) VALUES (1, 'AwersomeProduct');
