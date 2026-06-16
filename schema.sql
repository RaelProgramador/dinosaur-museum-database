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

ALTER TABLE Dinosaur MODIFY COLUMN exhibition VARCHAR(100);
