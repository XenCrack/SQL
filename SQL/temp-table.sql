create table #CRACK(
	id int,
	name nvarchar(50),
	surname nvarchar(50),
	emailAddress nvarchar(50)
)
insert into #CRACK
select 
top 5
p.BusinessEntityID,
p.FirstName,
p.LastName,
e.EmailAddress
from Person.Person p
inner join Person.EmailAddress e
on p.BusinessEntityID = e.BusinessEntityID
--insert into #CRACK(id,name) select id,name from Department
--insert into #CRACK(id,name) values(1,'adasd')
--insert into #CRACK(id,name) values(2,'adasd')
--insert into #CRACK(id,name) values(3,'adasd')
--insert into #CRACK(id,name) values(4,'adasd')
--insert into #CRACK(id,name) values(5,'adasd')

update #CRACK set name = 'Önder' where id = 2
select * from #CRACK
drop table #CRACK
