
drop database if exists ahamad;
create database ahamad;
use ahamad;
create table customer(
id int primary key auto_increment,
First_name varchar(50) not null,
Last_name varchar(50),
phone varchar(10) not null,
Age tinyint unsigned check(age>0),
Country varchar(50) default 'india',
Email varchar(100) unique, 
Address tinytext,
pincode varchar(6) default '201301',
Date_inserted_at Date DEFAULT (CURRENT_DATE),
created_Time TIME DEFAULT (CURRENT_TIME),
created_at_datetime TIMESTAMP DEFAULT(CURRENT_TIMESTAMP));

select * from customer;

INSERT INTO CUSTOMER (First_Name, Last_Name, Phone, Age, Email,Address)-- we will not mention default columns
VALUES
('Shaimaa', 'Sharma', '9117668001', 21, 'shaimaa.sharma@gimal.com', 'A52 sector 6 Noida'),
('Ahamad', 'ali', '8744949858', 45, 'ahamad.ali@gimal.com', 'A52 sector 6 noida');


PART 1;

drop database if exists shopping_management;
create database shopping_management;
use shopping_management;
create table customers(
     customer_id int primary key auto_increment,
customer_name varchar(100),
email varchar(250) unique,
phone_no char(10) not null unique,
Age INT check(Age< 0),
Gender enum('male', 'female', 'other'),
country varchar(50) DEFAULT 'India',
city varchar(50) not null,
pin_code char(6) DEFAULT '201303',
registraion_Date DATE DEFAULT (CURRENT_DATE),
registraion_time TIME DEFAULT (CURRENT_TIME),
created_at DATETIME DEFAULT  CURRENT_TIMESTAMP,
Address varchar(250),
customer_status ENUM('Active', 'Inactive', 'Blocked') DEFAULT 'Active',
customer_notes varchar(1023)
);

-- part 3--

CREATE TABLE Orders(
   Order_id int primary key Auto_increment,
  customer_id int not null,
  order_Date DATE not null DEFAULT (CURRENT_DATE),
  Order_amount DECIMAL(10,2) NOT NULL,
  Order_sataus ENUM ('Pending','Processing','Shipped','delivered','cancelled') not null DEFAULT 'Pending',
  Payment_method ENUM('case','car','upi','net banking'),
  Payment_sataus ENUM('pending','paid','faild') not null DEFAULT 'Pending',
  shipping_Address varchar(250) not null,
  delivery_pincode char(6),
  Quatity INT CHECK(Quantity > 0),
  Discount_Amount DECIMAL(10,2) DEFAULT '0.00',
  Delivery_Date DATE DEFAULT(CURRENT_DATE),
  Create_AT DATETIME DEFAULT(CURRENT_TIMESTAMP),
  tracking_number varchar(30) unique,
  Delivery_status ENUM('not dispatched', 'in transit', 'deliverd', 'returned')DEFAULT 'not dispatched',
  order_notes varchar(1000),
  FOREIGN KEY (CUSTOMER_ID)
  REFERENCES CUSTOMER(CUSTOMER_ID)
  ON DELETE CASCADE
  ON UPDATE CASCADE
);

describe customers;
describe orders;

show create table orders;


