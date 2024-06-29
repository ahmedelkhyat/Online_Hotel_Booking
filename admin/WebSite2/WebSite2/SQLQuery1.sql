create database hotel;
use hotel;
GO

create table singup
( full_name varchar(30),
 
  email varchar(25) ,
  password varchar(15) primary key,
  birthday date,
  confirm_password varchar(15));

  create table login
  (email varchar(25),
   password varchar (15) primary key);


   
create table employees
( employee_id int,
  employee_name varchar(35),
  address varchar(30),
  salary numeric(7,2),
  phone varchar(20));

create table feedback
  (feedback_id int ,
  first_name varchar(30),
   last_name varchar(30),
   phone varchar(20),
   country varchar(15),
   subject varchar(200));
 

create table booking
   ( booking_id int,
   frist_name varchar (30),
    phone varchar(20),
  your_e_mail varchar(35),
  arrival_date date,
  departure_date date,
  room_type varchar (20));



  
  
 
  insert into login(email,password)
  values
  ('ahmedeldsokey@com','A123'),
  ('ahmedmohamed@com','B345' ),
  ('emankhairy@com', 'C456'),
  ('esraasamy@com','D678'),
  ('lailaashraf@com','f965'),
  ('rehabsaeed@com','g876');
  
  insert into singup(full_name,email,password,birthday, confirm_password )
  values
  ('ahmed eldsokey','ahmedeldsokey@com','A123', '1-10-2001', 'A123'),
  ('ahmed mohamed','ahmedmohamed@com','B345','2-24-2002','B345' ),
  ('eman khairy','emankhairy@com', 'C456','3-12-2002','C456'),
  ('esraa samy','esraasamy@com','D678','1-14-2002','D678'),
  ('laila ashraf','lailaashraf@com','f965','1-23-2002','f965'),
  ('rehabsaeed','rehabsaeed@com','g876','2-18-2002','g876');

  
    insert into booking(booking_id,frist_name,phone,your_e_mail,arrival_date,departure_date,room_type)
  values
  ('1','ahmed','01066564601','ahmedeldsokey@com','1-1-2002','1-2-2003','single'),
  ('2','ahmed','01066368902','ahmedmohamed@com','3-21-2002','3-1-2004','single'),
  ('3','eman' ,'012456378','emankhairy@com', '2-15-2019','6-3-2019','single'),
  ('4','esraa', '01000456789','esraasamy@com','4-3-2020','2-3-2020','double'),
  ('5','laila','010056690','lailaashraf@com','6-1-2021','1-1-2021','double'),
  ('6','rehab','0106665544','rehabsaeed@com','1-16-2020','3-1-2020','double');

  insert into feedback(feedback_id,first_name,last_name,phone,country,subject)
  values
  ('1','ahmed','eldsokey','01066564601','Australia','good'),
  ('2','ahmed','mohamed','01000356789','canada','bad'),
  ('3','eman' ,'khairy','010056461','USA','excellent'),
  ('4','esraa', 'samy','01067567478','India','beautiful'),
  ('5','laila','ashraf','01234567','South Africa','the food is delicious and healthy'),
  ('6','rehab','saeed','010445577','Russia','The service in this hotel is good'),
  ('7','sara','ahmed','01066564606','Pakistan','The rooms are comfortable'),
  ('8','dana','osman','01066564609','Bangladesh','bad'),
  ('9','hassan', 'ibrahim','01067578903','Zimbawe','bad');

  insert into employees(employee_id,employee_name,address,salary,phone)
  values
  ('1','eldsokey osman','kafr el-sheikh','3000','01066564609'),
  ('2','mohamed mahmoud','alex','2000','01066564601'),
  ('3','sara ismail','cairo ','4000','01066564606'),
  ('4','nora elsead','mansoura','3000.75','01000665646'),
  ('5','basel mohamed','al manzala','3000.67','01077564609'),
  ('6','noha abdallah','qalin','5000','01088564609'),
  ('7','radwa abdelwahed','desouq','1500','01069564609'),
  ('8','noran mohamed','menoufia','2500','01060564609'),
  ('9','fatma fawzie','qalyubia','1000','01066564609');
  

  select * from singup 
  select * from employees
  select * from feedback
  select * from booking
  select * from login
  select full_name from singup where email='emankhairy@com' and password='C456'

  
drop table singup
drop table employees
drop table feedback
drop table booking
drop table login