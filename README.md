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



