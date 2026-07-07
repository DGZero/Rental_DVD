# 💾 Database Setup

This project uses the **DVD Rental** sample database for PostgreSQL.

The database is **not included** in this repository because it is publicly available and can be downloaded from the official source.

---

# 📥 Download

Download the sample database from:

https://neon.com/postgresql/postgresql-getting-started/postgresql-sample-database

After downloading, extract the archive and locate the following file:

```text
dvdrental.tar
```

---

# 🛠️ Requirements

Before restoring the database, install:

- PostgreSQL
- DBeaver Community (or pgAdmin)

---

# 🚀 Create the Database

Create a new PostgreSQL database named:

```sql
CREATE DATABASE dvd_rental;
```

---

# 🔄 Restore the Backup

In DBeaver:

1. Right-click the **dvd_rental** database.
2. Select **Tools → Restore**.
3. Choose the **dvdrental.tar** file.
4. Set **Format** to **Tar**.
5. Click **Start**.

After the restore is complete, the database should contain **15 tables**.

---

# 📂 Database Tables

- actor
- address
- category
- city
- country
- customer
- film
- film_actor
- film_category
- inventory
- language
- payment
- rental
- staff
- store

---

# 📊 Database Overview

The DVD Rental database simulates a DVD rental business and contains data about:

- Customers
- Movies
- Actors
- Categories
- Stores
- Staff
- Rentals
- Payments

It is widely used for learning SQL and PostgreSQL because it contains realistic relationships between multiple tables.

---

# 📌 Notes

The database backup file (`dvdrental.tar`) is **not stored in this repository**.

Please download it from the official source above before running the examples in this project.
