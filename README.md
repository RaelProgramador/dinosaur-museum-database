# Museum Database - Sistema de Gerenciamento de Dinossauros

Este projeto foi desenvolvido como parte do módulo de **Introdução a Banco de Dados** na **Arden University (Manchester)**. O objetivo foi projetar, normalizar (3NF) e implementar um banco de dados relacional robusto para gerenciar o acervo de fósseis de dinossauros de um museu, mapeando suas eras geológicas, localizações de descoberta, taxonomias e exibições atuais.

## Tecnologias e Conceitos Utilizados
*   **SGBD:** MySQL / MariaDB
*   **Interface de Gerenciamento:** phpMyAdmin
*   **Modelagem Relacional:** Diagramas Lógicos e Físicos, Entidades e Relacionamentos (1:N)
*   **Normalização:** Aplicação estrita de regras até a Terceira Forma Normal (3NF)
*   **SQL Avançado:** DDL (Data Definition Language), DML (Data Manipulation Language), JOINS, Funções de Agregação, Cláusulas Condicionais (`LIKE`) e colunas derivadas.

---

## Modelagem do Banco de Dados

### Modelo Lógico e Físico
O banco de dados foi normalizado e estruturado para evitar redundância de dados e garantir a integridade referencial. A tabela principal `Dinosaur` se relaciona como "filha" de tabelas auxiliares que contêm dados específicos de eras, locais, tipos e classificações científicas.

*   **Entidades identificadas:** `Dinosaur`, `Location`, `Period`, `Type` e `Taxonomy`.
*   **Regra de Negócio:** Cada dinossauro possui exclusivamente uma localização, período, tipo e taxonomia associados (relacionamento obrigatório 1:N).

---

## Implementação e Scripts SQL

### 1. Criação da Estrutura (DDL)
Os scripts foram estruturados garantindo a ordem correta de dependência das chaves estrangeiras (`FOREIGN KEY`).

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
    exhibition VARCHAR(100) NULL, -- Ajustado dinamicamente para suportar strings longas
    FOREIGN KEY (type_id) REFERENCES Type(type_id),
    FOREIGN KEY (taxonomy_id) REFERENCES Taxonomy(taxonomy_id),
    FOREIGN KEY (period_id) REFERENCES Period(period_id),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);
