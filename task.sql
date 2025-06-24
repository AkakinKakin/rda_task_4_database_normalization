-- Create database and tables

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE ProductName(
	ID INT,
    ProductName VARCHAR(50),
    PRIMARY KEY (ID)
);

CREATE TABLE ProductInventory (
    ID INT,
    ProductNameID INT,
    WarehouseAmount INT,
    WarehouseName VARCHAR(50),
    WarehouseAddress VARCHAR(50), 
    CountryID INT,
    FOREIGN KEY (ProductNameID) REFERENCES ProductName(ID) ON DELETE NO ACTION,
	FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

-- Populate test data

INSERT INTO ProductName (ID, ProductName)
VALUES (1, 'AwersomeProduct');

INSERT INTO Countries (ID,Name)
	VALUES (1, 'Country1');
INSERT INTO Countries (ID,Name)
	VALUES (2, 'Country2');
    
INSERT INTO ProductInventory (ID,ProductNameID,WarehouseAmount,WarehouseName,WarehouseAddress,CountryID)
	VALUES (1, 1, 2, 'Warehouse-1', 'City-1, Street-1',1);
INSERT INTO ProductInventory (ID,ProductNameID,WarehouseAmount,WarehouseName,WarehouseAddress,CountryID)
	VALUES (2, 1, 5, 'Warehouse-2', 'City-2, Street-2',2);
