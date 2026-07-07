# 🗺️ DVD Rental Database Schema

This document provides an overview of the DVD Rental database structure and the relationships between its main tables.

Understanding the schema is the first step before writing SQL queries and answering business questions.

---

# 📊 Main Entities

The database is composed of **15 tables**.

| Table | Description |
|--------|-------------|
| actor | Stores actor information |
| address | Stores customer, staff, and store addresses |
| category | Movie categories (Action, Comedy, etc.) |
| city | Cities linked to addresses |
| country | Countries linked to cities |
| customer | Customer information |
| film | Movie catalog |
| film_actor | Relationship between films and actors |
| film_category | Relationship between films and categories |
| inventory | Physical copies of films available in stores |
| language | Languages available for films |
| payment | Customer payment records |
| rental | Movie rental transactions |
| staff | Store employees |
| store | DVD rental stores |

---

# 🎬 Business Flow

The simplified rental process is illustrated below.

```text
Customer
    │
    ▼
Rental
    │
    ▼
Inventory
    │
    ▼
Film

Customer
    │
    ▼
Payment

Staff
    │
    ├────────► Rental
    │
    └────────► Payment

Store
    │
    ▼
Inventory
```

---

# 🔗 Key Relationships

## Customer

A customer can:

- Rent many movies
- Make multiple payments

Related tables:

- rental
- payment
- address

---

## Film

A film can:

- Belong to multiple categories
- Have multiple actors
- Exist in multiple inventory copies

Related tables:

- film_actor
- film_category
- inventory
- language

---

## Inventory

Represents the physical copy of a movie.

Each inventory record belongs to:

- One film
- One store

Each inventory item can be rented multiple times.

---

## Rental

Stores rental transactions.

Each rental is associated with:

- One customer
- One inventory item
- One staff member

---

## Payment

Stores payment information.

Each payment is associated with:

- One customer
- One rental
- One staff member

---

# 🧩 Many-to-Many Relationships

The database uses junction tables to model many-to-many relationships.

## film_actor

```
Film
   ▲
   │
film_actor
   │
   ▼
Actor
```

A movie can have many actors.

An actor can participate in many movies.

---

## film_category

```
Film
   ▲
   │
film_category
   │
   ▼
Category
```

A movie can belong to one or more categories.

A category contains many movies.

---

# 📈 Analytical Opportunities

Using this database, it is possible to answer questions such as:

- Which customers rent the most movies?
- Which categories generate the highest revenue?
- Which actors appear in the most films?
- Which store performs better?
- Which movies are rented most frequently?
- What is the average payment amount?
- What is the average rental duration?

---

# 🎯 Learning Goal

Understanding the database schema is essential before writing SQL queries.

A solid understanding of table relationships leads to better query design, cleaner JOIN operations, and more accurate business insights.
