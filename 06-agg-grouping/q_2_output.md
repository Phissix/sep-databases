**Schema (PostgreSQL v9.6)**

    CREATE TABLE donations(
      "donor"  VARCHAR(16),
      "amount" DECIMAL(13,4),
      "date"   DATE                      
    );

    INSERT INTO donations
        ("donor",     "amount", "date")
    VALUES
        ('Daenerys',   102,     '2017-03-22'),
        ('Missandei',   25,     '2017-03-23'),
        ('Missandei',   30,     '2017-03-24'),
        ('Daenerys',    71,     '2017-03-25'),
        ('Tyrion',      60,     '2017-03-26'),
        ('Sansa',       33,     '2017-03-27'),
        ('Jon',         25,     '2017-03-28'),
        ('Missandei',   10,     '2017-03-29'),
        ('Arya',        15,     '2017-03-30'),
        ('Tormund',     50,     '2017-03-31'),
        ('Bran',        25,     '2017-04-01'),
        ('Arya',        30,     '2017-04-02'),
        ('Brienne',     75,     '2017-04-03'),
        ('Margaery',   120,     '2017-04-04'),
        ('Samwell',     20,     '2017-04-05'),
        ('Melisandre',  45,     '2017-04-06'),
        ('Petyr',       70,     '2017-04-07'),
        ('Theon',        5,     '2017-04-08'),
        ('Bronn',       20,     '2017-04-09'),
        ('Daario',      10,     '2017-04-10'),
        ('Gilly',        7,     '2017-04-11'),
        ('Ygritte',     30,     '2017-04-12'),
        ('Tyrion',      50,     '2017-04-13'),
        ('Arya',        15,     '2017-04-14'),
        ('Tyrion',      10,     '2017-04-15'),
        ('Missandei',   25,     '2017-04-16'),
        ('Theon',       15,     '2017-04-17');


---

**Query #1**

    SELECT SUM(amount) FROM donations;

| sum      |
| -------- |
| 993.0000 |

---
**Query #2**

    SELECT SUM(amount) AS total_amount, donor FROM donations GROUP BY donor;

| total_amount | donor      |
| ------------ | ---------- |
| 20.0000      | Samwell    |
| 10.0000      | Daario     |
| 75.0000      | Brienne    |
| 120.0000     | Tyrion     |
| 70.0000      | Petyr      |
| 45.0000      | Melisandre |
| 25.0000      | Bran       |
| 50.0000      | Tormund    |
| 30.0000      | Ygritte    |
| 7.0000       | Gilly      |
| 25.0000      | Jon        |
| 60.0000      | Arya       |
| 20.0000      | Theon      |
| 20.0000      | Bronn      |
| 120.0000     | Margaery   |
| 90.0000      | Missandei  |
| 33.0000      | Sansa      |
| 173.0000     | Daenerys   |

---
**Query #3**

    SELECT AVG(amount) AS avg_donation, donor FROM donations GROUP BY donor;

| avg_donation         | donor      |
| -------------------- | ---------- |
| 20.0000000000000000  | Samwell    |
| 10.0000000000000000  | Daario     |
| 75.0000000000000000  | Brienne    |
| 40.0000000000000000  | Tyrion     |
| 70.0000000000000000  | Petyr      |
| 45.0000000000000000  | Melisandre |
| 25.0000000000000000  | Bran       |
| 50.0000000000000000  | Tormund    |
| 30.0000000000000000  | Ygritte    |
| 7.0000000000000000   | Gilly      |
| 25.0000000000000000  | Jon        |
| 20.0000000000000000  | Arya       |
| 10.0000000000000000  | Theon      |
| 20.0000000000000000  | Bronn      |
| 120.0000000000000000 | Margaery   |
| 22.5000000000000000  | Missandei  |
| 33.0000000000000000  | Sansa      |
| 86.5000000000000000  | Daenerys   |

---
**Query #4**

    SELECT COUNT(amount) FROM donations WHERE amount > 100;

| count |
| ----- |
| 2     |

---
**Query #5**

    SELECT MAX(amount) FROM donations;

| max      |
| -------- |
| 120.0000 |

---
**Query #6**

    SELECT MIN(amount) FROM donations;

| min    |
| ------ |
| 5.0000 |

---

[View on DB Fiddle](https://www.db-fiddle.com/f/9SzjowZ2NsbEZ4nYe6FQ3d/0)
