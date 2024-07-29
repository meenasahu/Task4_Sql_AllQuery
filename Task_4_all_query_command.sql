create table online_food (
	Age	int ,
	Gender varchar ,
	Marital_Status varchar,
	Occupation varchar,
	Educational_Qualifications varchar,
	Pin_Code int )

insert into online_food values (23,'Female','Unmarried','student','Gradduation')

select * from online_food

copy online_food from 'D:\Data Analytics SQL\Task4_sql\online_food_query.csv' DELIMITER ',' csv header

--add a constraint to check a age should not be greater than 78--

alter table online_food add constraint age_not_greater check(age<=78)

--add a custom constraint after table is created that, perticular column to not allow value ('a1', 'b1' , 'check')--


alter table online_food add column food_Manager_Name int

alter table online_food rename column food_Manager_Name to Food_Manager_id

update online_food set food_Manager_id = 'a2' where pin_code=560001

update online_food set food_Manager_id = 3 where pin_code=560001
	
select * from online_food

--do every query we dont up unitl now in large data set--


--distint--

select distinct occupation,age from online_food

--update--

update online_food set occupation ='HouseWife' where pin_code=560001

select * from online_food

--AND--

select  gender , age from online_food where pin_code= 560001 AND occupation= 'HouseWife'

--or--

select  gender , age from online_food where pin_code= 560001 or marital_status = 'single'

--alter table --









