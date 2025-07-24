
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

**⭐ Done reading this? You're ready to write and understand MySQL like a pro!**
