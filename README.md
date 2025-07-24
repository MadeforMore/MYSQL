# MYSQL
The Practice Queshions for my SQL

General Order

SELECT column(s)

FROM table-name

WHERE condition

GROUP BY column(s)

HAVING condition

ORDER BY column(s) ASC;


#WHERE and HAVING 
1) WHERE is for Rows
2) HAVING is for Groups

#to delete all data :-
DELETE FROM <table name >


1)On DELETE Cascade ( *if we delect someting from table that automaticaly get refleted in the table* )
When we create a foreign key using this option, it deletes the referencing rows in the child table
when the referenced row is deleted in the parent table which has a primary key.

2)On UPDATE cascade ( *if we Update someting from table that automaticaly get refleted in the table* )
When we create a foreign key using UPDATE CASCADE the referencing rows are updated in the child
table when the referenced row is updated in the parent table which has a primary key.

Example : write this after the Froigen Key Decleration :- 
ON DELETE CASCADE
ON UPDATE CASCADE

#Table related Queries

1)ALTER TABLE table-name
CHANGE COLUMN old_ name new_name new_datatype new_constraint; <== to chage the name of Column 

2) ALTER TABLE table_name
MODIFY col-name new_datatype new_constraint;  < == to add the new column to the table 

3) ALTER TABLE student
RENAME collage_student ; ==> to change the name of table

4) ALTER TABLE student 
ADD COLUMN age INT NOT NULL DEFAULT 18; == > to add the column in the table

5)ALTER TABLE stusdent 
MODIFY age VARCHAR(3); ==> to modify somthing or to cahnge the data type.

6) ALTER TABLE student 
DROP age ; ===> to drop the Column


#TRUNCATE TABLE table-name ; ========> the TRUNCATE is delete the table info (*Drop is delete the hole table*)

#Joins in SQL
Join is used to combine rows from two or more tables, based on a related column between them.

#types : 1) Inner Join ==> when we need the Comman data 

// below 3 are outer joins
2)Left join :- Returns all records from the left table, and the matched records from the right table .(*in this the table name you write first then it take the hole data of thata table*)
3) Right join : - (*in this the 2nd name of tabke you writhe then it take the hole data of that table*)
4) Full join :- Returns all records when there is a match in either left or right table . 

#two more joins : 1)Left Exclusive Join :-  only left data which is not connted with other table 
2)Right Exclusive Join :- only right table which is not connted to the other table 




