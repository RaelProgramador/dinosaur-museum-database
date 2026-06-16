# Museum Database - Dinosaur Records Management System

This project was developed as part of the **Introduction to Database** module during my Bachelor of Science (BSc) in Computing at **Arden University (Manchester)**[cite: 1, 2]. The core objective was to design, normalize (3NF), and implement a robust relational database to manage a museum's collection of dinosaur fossils, mapping their geological eras, discovery locations, taxonomies, and current exhibition halls.

## Technologies & Concepts Applied
*   **DBMS:** MySQL / MariaDB
*   **Management Interface:** phpMyAdmin
*   **Relational Modeling:** Logical and Physical Diagrams, Entities, and Relationships (1:N)
*   **Normalization:** Strictly met all criteria up to the Third Normal Form (3NF)
*   **Advanced SQL:** DDL (Data Definition Language), DML (Data Manipulation Language), JOINS, Aggregation Functions, Conditional Clauses (`LIKE`), and Derived Columns.

---

## Database Modeling

### Logical & Physical Design
The database was thoroughly normalized and structured to eliminate data redundancy and enforce referential integrity. The core `Dinosaur` table functions as a child table, referencing lookup tables containing specific data about periods, locations, types, and scientific classifications[cite: 2].

*   **Identified Entities:** `Dinosaur`, `Location`, `Period`, `Type`, and `Taxonomy`[cite: 2].
*   **Business Rule:** Each dinosaur is strictly tied to a unique location, period, type, and taxonomy (mandatory 1:N relationship)[cite: 2].

---

## Implementation & SQL Scripts

### 1. Schema Creation (DDL)
Scripts were structured sequentially to guarantee the correct order of data execution and foreign key (`FOREIGN KEY`) dependencies[cite: 2].

```sql
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(15) NOT NULL
);

CREATE TABLE Period (
    period_id INT PRIMARY KEY,
    period_name VARCHAR(20) NOT NULL,
    period_start INT NOT NULL,
    period_end INT NOT NULL
);

CREATE TABLE Type (
    type_id INT PRIMARY KEY,
    type_name VARCHAR(30) NOT NULL
);

CREATE TABLE Taxonomy (
    taxonomy_id INT PRIMARY KEY,
    taxonomy_info VARCHAR(200) NOT NULL,
    named_by VARCHAR(100) NOT NULL
);

CREATE TABLE Dinosaur (
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    diet VARCHAR(15) NOT NULL,
    type_id INT NOT NULL,
    taxonomy_id INT NOT NULL,
    length FLOAT NOT NULL,
    period_id INT NOT NULL,
    location_id INT NOT NULL,
    species VARCHAR(20) NOT NULL,
    exhibition VARCHAR(100) NULL,
    FOREIGN KEY (type_id) REFERENCES Type(type_id),
    FOREIGN KEY (taxonomy_id) REFERENCES Taxonomy(taxonomy_id),
    FOREIGN KEY (period_id) REFERENCES Period(period_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
