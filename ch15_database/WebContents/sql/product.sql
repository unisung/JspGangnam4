drop table product;

create table if not exists product(
p_id varchar(10) not null primary key,
p_name varchar(20),
p_unitPrice integer,
p_description text,
p_category varchar(20),
p_manufacturer varchar(20),
p_unitsInStock long,
p_condition varchar(20),
p_fileName varchar(20)
)default charset=utf8;