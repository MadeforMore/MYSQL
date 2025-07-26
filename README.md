
# 📘 MySQL Practice & Revision Notes — Simplified & Structured

This is your **ultimate cheat sheet** for MySQL. Everything is explained in **simple language** with short examples, organized for **easy revision**, **interview prep**, and **practice**.

---

## 📚 General SQL Query Order

```sql
SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s) ASC;
```

---

## 🔍 WHERE vs HAVING

| Clause | Use Case |
|--------|----------|
| `WHERE` | Used for filtering **rows** before grouping |
| `HAVING` | Used for filtering **groups** after `GROUP BY` |

---

## 🧹 Deleting Data

```sql
DELETE FROM table_name;  -- Deletes all rows
TRUNCATE TABLE table_name;  -- Deletes data, keeps structure
DROP TABLE table_name;  -- Deletes entire table structure
```

---

## 🔁 ON DELETE / UPDATE CASCADE

- **ON DELETE CASCADE**: If a row is deleted in the parent table, it automatically deletes related rows in the child table.
- **ON UPDATE CASCADE**: If a row is updated in the parent table, it auto-updates related rows in the child table.

✅ Add this after a `FOREIGN KEY` in `CREATE TABLE`:

```sql
ON DELETE CASCADE
ON UPDATE CASCADE
```

---

## 🧱 Table Altering Queries

| Operation | Query Example |
|----------|----------------|
| Rename column | `ALTER TABLE table_name CHANGE old_name new_name DATATYPE;` |
| Modify column type | `ALTER TABLE table_name MODIFY col_name DATATYPE;` |
| Rename table | `ALTER TABLE old_name RENAME new_name;` |
| Add new column | `ALTER TABLE table_name ADD COLUMN age INT DEFAULT 18;` |
| Drop column | `ALTER TABLE table_name DROP COLUMN age;` |

---

## 🔗 SQL Joins

**Used to combine rows from two or more tables based on a common column.**

| Type | Description |
|------|-------------|
| `INNER JOIN` | Returns only matching rows |
| `LEFT JOIN` | All from left + matching from right |
| `RIGHT JOIN` | All from right + matching from left |
| `FULL JOIN` | All matching rows from both sides |
| `LEFT EXCLUSIVE JOIN` | Only left-side rows **not** matched |
| `RIGHT EXCLUSIVE JOIN` | Only right-side rows **not** matched |

🧠 **Self Join** (Table joins with itself):

```sql
SELECT a.name AS manager, b.name AS employee
FROM employee a
JOIN employee b ON a.id = b.manager_id;
```

---

## 🔄 UNION vs UNION ALL

- `UNION`: Combines two SELECT queries and removes duplicates.
- `UNION ALL`: Combines all, **including duplicates**.

Rules:
- Same number of columns.
- Same data types.
- Same column order.

---

## 🧠 SQL Subqueries

Subqueries are SELECT statements inside another query.

📌 Types:
1. In `SELECT`
2. In `FROM` (**alias required**)
3. In `WHERE` (most common)

```sql
SELECT name FROM student WHERE marks > (SELECT AVG(marks) FROM student);
```

---

## 👁️ MySQL Views

- Views are **virtual tables** based on SELECT queries.
- They do **not** store data but show real-time data from original tables.

```sql
CREATE VIEW view1 AS
SELECT rollno, name FROM student;

SELECT * FROM view1;
```

✅ Use views when you want to simplify complex queries.

---


---
📘 SQL/DBMS Notes – Easy to Remember & Interview-Ready
Here are detailed and easy-to-remember notes on each important SQL/DBMS topic. These are explained in simple English, step-by-step, with examples so you never forget them during interviews or exams.
---
📘 1. Keys – Primary, Foreign, Candidate
🔑 Primary Key
* Uniquely identifies each record in a table.
* Cannot have `NULL` values.
* Only one primary key per table.

Example:
CREATE TABLE Student (
roll_no INT PRIMARY KEY,
name VARCHAR(100)
);

🔗 Foreign Key
* Links one table to another.
* Refers to the primary key of another table.
* Helps in maintaining Referential Integrity.

Example:
CREATE TABLE Marks (
roll_no INT,
FOREIGN KEY (roll_no) REFERENCES Student(roll_no)
);

🎯 Candidate Key
* Any column or combination of columns that can become a primary key.
* A table can have multiple candidate keys.
* One of them is chosen as the primary key.
🧠 2. Normalization – 1NF, 2NF, 3NF
Normalization helps in organizing data to reduce redundancy and improve efficiency.

✅ 1NF – First Normal Form
* Only atomic (single) values are allowed.
* No multiple values in a cell.

✅ 2NF – Second Normal Form
* 1NF + No Partial Dependency.
* Every non-key column must depend on the whole primary key.

✅ 3NF – Third Normal Form
* 2NF + No Transitive Dependency.
* Non-key columns must not depend on other non-key columns.

Trick to Remember:
1NF = Atomic
2NF = Full Dependency
3NF = No middle-man columns
🔄 3. Transactions – ACID Properties
A transaction is a group of operations that are performed as a single unit.

🔹 A – Atomicity
* All or nothing.
* If one part fails, entire transaction fails.

🔹 C – Consistency
* Database remains in a valid state before & after the transaction.

🔹 I – Isolation
* Transactions run independently of each other.

🔹 D – Durability
* Once committed, changes are saved permanently.

Example: ATM withdrawal – money should be deducted and also recorded. Both must happen together.
⚡ 4. Indexing – Why & How
Why Index?
* Speeds up search operations on a table.
* Works like a book index – quick access to data.

How it works?
* Uses B-Trees or Hashes in the backend.
* Created on columns that are often used in WHERE, ORDER BY, etc.

Types of Index:
* Primary Index – Automatically created on primary key.
* Composite Index – Created on multiple columns.
* Clustered Index – Sorts the table physically.
* Non-Clustered Index – Does not affect physical order.

Example:
CREATE INDEX idx_name ON Student(name);
🔄 5. Joins – Inner, Left, Right, Full
Joins combine rows from two or more tables based on a related column.

🔸 INNER JOIN
* Returns rows with matching values in both tables.

🔸 LEFT JOIN
* All rows from left table + matched rows from right.

🔸 RIGHT JOIN
* All rows from right table + matched rows from left.

🔸 FULL JOIN
* All rows from both tables; NULL where no match.

Example:
SELECT *
FROM A
LEFT JOIN B ON A.id = B.id;

Trick to Remember:
LEFT JOIN → All from Left
RIGHT JOIN → All from Right
FULL JOIN → All from Both
INNER JOIN → Only Matching Rows
📐 6. ER Diagrams – Entity, Attributes, Relationship
📌 Entity
* Real-world object or concept.
Example: Student, Course

📌 Attribute
* Property of an entity.
Example: Name, Roll Number

📌 Relationship
* Connection between two entities.
Example: Student ENROLLS in Course

Types of Relationships:
* One-to-One: Each A has one B
* One-to-Many: A has many B
* Many-to-Many: A and B have multiple connections
✅ Summary Table for Quick Revision
| Topic         | Key Concepts                    | Tip to Remember                 |
| ------------- | ------------------------------- | ------------------------------- |
| Keys          | Primary, Foreign, Candidate     | 1 PK only; FK = Connect tables  |
| Normalization | 1NF, 2NF, 3NF                   | Atomic → Full → No Transitive   |
| Transactions  | ACID – Atomic, Consistent, etc. | Like ATM – all steps must work  |
| Indexing      | Fast access via B-Tree or Hash  | Use on WHERE/ORDER BY columns   |
| Joins         | Inner, Left, Right, Full        | Left = all from left, and so on |
| ER Diagrams   | Entity, Attribute, Relationship | Visual map of your database     |
---

**⭐ Done reading this? You're ready to write and understand MySQL like a pro!**
