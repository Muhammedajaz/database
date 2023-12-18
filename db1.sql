create TABLE employees(
 pk_emp_id serial primary key ,
 type varchar (100),
 first_name varchar (200),
 last_name varchar(200),
 email varchar(200),
 phone varchar(100),
 gender varchar(20),
 dob date
);

create TABLE category(
    pk_category_id serial primary key ,
    category_name varchar(200),
    description varchar(400)
);

create TABLE products(
    pk_product_id serial primary key,
    product_name varchar(200),
    fk_category_id int,
    description varchar(400),
    price float,
    added_date date ,
    foreign key(fk_category_id) references
    category(pk_category_id)
    on delete cascade on update cascade
);

create TABLE bills(
    pk_bill_id serial primary key,
    costomer_name varchar(100) ,
    costomer_phone varchar(50) ,
    bill_date date
);

ALTER TABLE products add product_brand varchar(100);
ALTER TABLE employees add city varchar(100);

ALTER TABLE products drop column added_date ;

DROP TABLE products

ALTER TABLE products ALTER COLUMN price TYPE int ;
ALTER TABLE employees ALTER column phone type int using phone :: INT; 
ALTER TABLE products rename to items ;

select from products;


-- category insert
insert into category values(1,'grocey' , 'food and grains , daily needs , spices');
insert into category values(2,'stationary', 'books and pens');
insert into category values(3, 'cosmetics', 'beauty products');
insert into category values(4, 'electronics','gadgets') ;


-- product insert
insert into products values(1,'classmate notebook', 2, '200 pages, 40*40 cm, lined notebook',45, '2020-06-09');
insert into products values(2, 'camel notebook',3, '100 page notebook',40, '2020-05-10');
insert into products values(3, 'maggi noodles',1, 'chicken flavoured',30, '2020-03-19');


-- employees insert
insert into employees values(1, 'staff','arun', 'mathew', 'arun@gmail.com', 1234567890, 'male', '2000-06-12');
insert into employees values(2, 'staff', 'drishya', 'drish', 'drishya@gmail.com', 0987654321, 'female', '2004-10-02');
insert into employees values(3, 'staff', 'ramees', 'u', 'ramees123@gmail.com', 1231234567, 'male', '2000-10-05');
insert into employees values(4, 'admin', 'muhammed', 'sahil', 'sahil@gmail.com', 908765234, 'male', '1999-09-10');


-- bills insert
insert into bills values(1,'ranees','1234567890','10-02-2023');
insert into bills values(2,'hanna','0987654321','10-02-2006');
insert into bills values(3,'ajaz','9048157856','10-02-2004');
insert into bills values(4,'azeem','909897961','22-08-2023');



-- .....................................


