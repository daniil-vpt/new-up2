-- Заполнение таблицы Material
INSERT INTO Material (Name, MaterialType, Density, Price) VALUES
('Сталь', 'Металл', 7.85, 100.00),
('Пластик', 'Полимер', 0.95, 50.00);

-- Заполнение таблицы Assortment
INSERT INTO Assortment (Name, Diameter, WallThickness, Length, MaterialID) VALUES
('Труба стальная 100x5x6000', 100, 5, 6000, 1),
('Труба пластиковая 50x3x4000', 50, 3, 4000, 2);

-- Заполнение таблицы Client
INSERT INTO Client (Name, ContactPerson, Phone, Email, Address) VALUES
('ООО "СтройИнвест"', 'Иванов Иван Иванович', '123-456-7890', 'ivanov@example.com', 'г. Москва, ул. Ленина, д. 1'),
('ЗАО "ПромТех"', 'Петров Петр Петрович', '098-765-4321', 'petrov@example.com', 'г. Санкт-Петербург, ул. Пушкина, д. 2');

-- Заполнение таблицы Order
INSERT INTO [Order] (ClientID, OrderDate, DeliveryDate, OrderAmount, OrderStatus) VALUES
(1, '2023-01-01', '2023-01-10', 1000.00, 'Pending'),
(2, '2023-02-01', '2023-02-15', 500.00, 'Completed');

-- Заполнение таблицы Production
INSERT INTO Production (OrderID, AssortmentID, Quantity, ProductionDate, BatchNumber) VALUES
(1, 1, 100, '2023-01-05', 'BATCH001'),
(2, 2, 50, '2023-02-10', 'BATCH002');

-- Заполнение таблицы Warehouse
INSERT INTO Warehouse (AssortmentID, Quantity, ArrivalDate) VALUES
(1, 100, '2023-01-06'),
(2, 50, '2023-02-11');

-- Заполнение таблицы Shipment
INSERT INTO Shipment (OrderID, ProductionID, Quantity, ShipmentDate) VALUES
(1, 1, 100, '2023-01-10'),
(2, 2, 50, '2023-02-15');
