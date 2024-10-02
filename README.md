# УП 11.01
## Практическая №1
### Куренков Даниил 3-21 ИСП-6

## *1. Описание*
Это база данных для завода, производящего различные виды трубных изделий, включая стальные трубы, пластиковые трубы, фитинги, муфты и другие элементы. Система должна хранит информацию о материалах, диаметрах, толщинах стенок, длинах, сортаментах, 
заказах, производстве, складе, отгрузке и т.д., а также обеспечивает возможность планирования производства, отслеживания заказов, учета материалов, ведения складского учета и другие функции.

## *2. Описание БД*
Таблица «Material» (ID, Name, MaterialType, Density, Price) - содержит информацию о материалах
•	ID – идентификатор материала (порядковый номер)
•	Name – название материала
•	MaterialType – тип материала
•	Density – плотность материала
•	Price – цена материала

Таблица «Assortment» (ID, Name, Diameter, WallThickness, Length, MaterialID) - содержит информацию о сортаменте трубных изделий
•	ID – идентификатор сортамента (порядковый номер)
•	Name – название сортамента
•	Diameter – диаметр изделия
•	WallThickness – толщина стенки изделия
•	Length – длина изделия
•	MaterialID – идентификатор материала (внешний ключ, ссылается на Material.ID)


Таблица «Client» (ID, Name, ContactPerson, Phone, Email, Address) - содержит информацию о клиентах
•	ID – идентификатор клиента (порядковый номер)
•	Name – название клиента
•	ContactPerson – контактное лицо
•	Phone – номер телефона
•	Email – электронная почта
•	Address – адрес клиента

Таблица «Order» (ID, ClientID, OrderDate, DeliveryDate, OrderAmount, OrderStatus) - содержит информацию о заказах
•	ID – идентификатор заказа (порядковый номер)
•	ClientID – идентификатор клиента (внешний ключ, ссылается на Client.ID)
•	OrderDate – дата заказа
•	DeliveryDate – срок поставки
•	OrderAmount – сумма заказа
•	OrderStatus – статус заказа

Таблица «Production» (ID, OrderID, AssortmentID, Quantity, ProductionDate, BatchNumber) - содержит информацию о производстве
•	ID – идентификатор производства (порядковый номер)
•	OrderID – идентификатор заказа (внешний ключ, ссылается на Order.ID)
•	AssortmentID – идентификатор сортамента (внешний ключ, ссылается на Assortment.ID)
•	Quantity – количество произведенных изделий
•	ProductionDate – дата производства
•	BatchNumber – номер партии

Таблица «Warehouse» (ID, AssortmentID, Quantity, ArrivalDate) - содержит информацию о складе
•	ID – идентификатор записи на складе (порядковый номер)
•	AssortmentID – идентификатор сортамента (внешний ключ, ссылается на Assortment.ID)
•	Quantity – количество изделий на складе
•	ArrivalDate – дата поступления на склад

Таблица «Shipment» (ID, OrderID, ProductionID, Quantity, ShipmentDate) - содержит информацию об отгрузках
•	ID – идентификатор отгрузки (порядковый номер)
•	OrderID – идентификатор заказа (внешний ключ, ссылается на Order.ID)
•	ProductionID – идентификатор производства (внешний ключ, ссылается на Production.ID)
•	Quantity – количество отгруженных изделий
•	ShipmentDate – дата отгрузки


## *3. Используемые технологии*  
•	SQL Server Management Studio – это интегрированная среда для управления любой инфраструктурой SQL. Используйте SSMS для доступа, настройки, администрирования, администрирования и разработки всех компонентов SQL Server и других
•	Visual Studio Code - универсальный текстовый редактор позволяющий устанвливать различные расширения, в том числе для работы с базами данных и PostgreSQL

## *4. Скриншоты*
[Таблица Material](https://github.com/daniil-vpt/new-up2/blob/main/Demonstration/изображение_2024-10-02_141356240.png)   
[Таблица Assortment](https://github.com/daniil-vpt/new-up2/blob/main/Demonstration/изображение_2024-10-02_141438714.png)  
[Таблица Client](https://github.com/daniil-vpt/new-up2/blob/main/Demonstration/изображение_2024-10-02_141527342.png)  
[Таблица Order](https://github.com/daniil-vpt/new-up2/blob/main/Demonstration/изображение_2024-10-02_141557411.png)  
[Таблица Production](https://github.com/daniil-vpt/new-up2/blob/main/Demonstration/изображение_2024-10-02_141627934.png)  
[Таблица Warehouse](https://github.com/daniil-vpt/new-up2/blob/main/Demonstration/изображение_2024-10-02_141652860.png)  
[Таблица Shipment](https://github.com/daniil-vpt/new-up2/blob/main/Demonstration/изображение_2024-10-02_141719063.png)  
