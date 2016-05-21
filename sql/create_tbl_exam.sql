create table tbl_exam(
 id char(5) unique,
 eng int check(eng <=100 && eng >=0),
 math int check(math <=100 && math >=0),
 memo varchar(50) default 'nothing',
 primary key(id)
);

