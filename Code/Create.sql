-- Создание базы данных
CREATE DATABASE PipeProductionSystem;
GO

-- Использование созданной базы данных
USE PipeProductionSystem;
GO

-- Создание таблицы Материал
CREATE TABLE Material (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    MaterialType NVARCHAR(100) NOT NULL,
    Density DECIMAL(10, 2) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);
GO

-- Создание таблицы Сортамент
CREATE TABLE Assortment (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Diameter DECIMAL(10, 2) NOT NULL,
    WallThickness DECIMAL(10, 2) NOT NULL,
    Length DECIMAL(10, 2) NOT NULL,
    MaterialID INT NOT NULL,
    FOREIGN KEY (MaterialID) REFERENCES Material(ID)
);
GO

-- Создание таблицы Клиент
CREATE TABLE Client (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    ContactPerson NVARCHAR(100) NOT NULL,
    Phone NVARCHAR(20) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    Address NVARCHAR(200) NOT NULL
);
GO

-- Создание таблицы Заказ
CREATE TABLE Order (
    ID INT PRIMARY KEY IDENTITY(1,1),
    ClientID INT NOT NULL,
    OrderDate DATE NOT NULL,
    DeliveryDate DATE NOT NULL,
    OrderAmount DECIMAL(10, 2) NOT NULL,
    OrderStatus NVARCHAR(50) NOT NULL,
    FOREIGN KEY (ClientID) REFERENCES Client(ID)
);
GO

-- Создание таблицы Производство
CREATE TABLE Production (
    ID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL,
    AssortmentID INT NOT NULL,
    Quantity INT CHECK (Quantity > 0),
    ProductionDate DATE NOT NULL,
    BatchNumber NVARCHAR(50) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Order(ID),
    FOREIGN KEY (AssortmentID) REFERENCES Assortment(ID)
);
GO

-- Создание таблицы Склад
CREATE TABLE Warehouse (
    ID INT PRIMARY KEY IDENTITY(1,1),
    AssortmentID INT NOT NULL,
    Quantity INT CHECK (Quantity > 0),
    ArrivalDate DATE NOT NULL,
    FOREIGN KEY (AssortmentID) REFERENCES Assortment(ID)
);
GO

-- Создание таблицы Отгрузка
CREATE TABLE Shipment (
    ID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL,
    ProductionID INT NOT NULL,
    Quantity INT CHECK (Quantity > 0),
    ShipmentDate DATE NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Order(ID),
    FOREIGN KEY (ProductionID) REFERENCES Production(ID)
);
