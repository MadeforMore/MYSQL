

## 📘 1. Keys – Primary, Foreign, Candidate

### 🔑 Primary Key

* Uniquely identifies each record in a table.
* Cannot have `NULL` values.
* Only **one** primary key per table.

✅ Example:

```sql
CREATE TABLE Student (
  roll_no INT PRIMARY KEY,
  name VARCHAR(100)
);
```

### 🔗 Foreign Key

* Links one table to another.
* Refers to the primary key of another table.
* Helps in maintaining **Referential Integrity**.

✅ Example:

```sql
CREATE TABLE Marks (
  roll_no INT,
  FOREIGN KEY (roll_no) REFERENCES Student(roll_no)
);
```

### 🎯 Candidate Key

* Any column or combination of columns that can become a primary key.
* A table can have **multiple candidate keys**.
* One of them is chosen as the **primary key**.

---

## 🧠 2. Normalization – 1NF, 2NF, 3NF

Normalization helps in organizing data to reduce **redundancy** and improve **efficiency**.

### ✅ 1NF – First Normal Form

* Only atomic (single) values are allowed.
* No multiple values in a cell.

### ✅ 2NF – Second Normal Form

* 1NF + No Partial Dependency.
* Every non-key column must depend on the **whole** primary key.

### ✅ 3NF – Third Normal Form

* 2NF + No Transitive Dependency.
* Non-key columns must not depend on other non-key columns.

💡 Trick to Remember:
**1NF = Atomic**
**2NF = Full Dependency**
**3NF = No middle-man columns**

---

## 🔄 3. Transactions – ACID Properties

A **transaction** is a group of operations that are performed as a single unit.

### 🔹 A – Atomicity

* All or nothing.
* If one part fails, entire transaction fails.

### 🔹 C – Consistency

* Database remains in a valid state before & after the transaction.

### 🔹 I – Isolation

* Transactions run independently of each other.

### 🔹 D – Durability

* Once committed, changes are saved permanently.

🧠 Example: ATM withdrawal – money should be deducted and also recorded. Both must happen together.

---

## ⚡ 4. Indexing – Why & How

### Why Index?

* Speeds up search operations on a table.
* Works like a **book index** – quick access to data.

### How it works?

* Uses **B-Trees or Hashes** in the backend.
* Created on columns that are often used in WHERE, ORDER BY, etc.

### Types of Index:

* **Primary Index** – Automatically created on primary key.
* **Composite Index** – Created on multiple columns.
* **Clustered Index** – Sorts the table physically.
* **Non-Clustered Index** – Does not affect physical order.

✅ Example:

```sql
CREATE INDEX idx_name ON Student(name);
```

---

## 🔄 5. Joins – Inner, Left, Right, Full

Joins combine rows from two or more tables based on a related column.

### 🔸 INNER JOIN

* Returns rows with matching values in both tables.

### 🔸 LEFT JOIN

* All rows from **left** table + matched rows from right.

### 🔸 RIGHT JOIN

* All rows from **right** table + matched rows from left.

### 🔸 FULL JOIN

* All rows from both tables; NULL where no match.

✅ Syntax Example:

```sql
SELECT *
FROM A
LEFT JOIN B ON A.id = B.id;
```

💡 Trick to Remember:

* **LEFT JOIN** → All from Left
* **RIGHT JOIN** → All from Right
* **FULL JOIN** → All from Both
* **INNER JOIN** → Only Matching Rows

---

## 📐 6. ER Diagrams – Entity, Attributes, Relationship

### 📌 Entity

* Real-world object or concept.
  👉 Example: Student, Course

### 📌 Attribute

* Property of an entity.
  👉 Example: Name, Roll Number

### 📌 Relationship

* Connection between two entities.
  👉 Example: Student ENROLLS in Course

### Types of Relationships:

* **One-to-One**: Each A has one B
* **One-to-Many**: A has many B
* **Many-to-Many**: A and B have multiple connections

---

## ✅ Summary Table for Quick Revision

| Topic         | Key Concepts                    | Tip to Remember                 |
| ------------- | ------------------------------- | ------------------------------- |
| Keys          | Primary, Foreign, Candidate     | 1 PK only; FK = Connect tables  |
| Normalization | 1NF, 2NF, 3NF                   | Atomic → Full → No Transitive   |
| Transactions  | ACID – Atomic, Consistent, etc. | Like ATM – all steps must work  |
| Indexing      | Fast access via B-Tree or Hash  | Use on WHERE/ORDER BY columns   |
| Joins         | Inner, Left, Right, Full        | Left = all from left, and so on |
| ER Diagrams   | Entity, Attribute, Relationship | Visual map of your database     |

