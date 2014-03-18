Week 2 Day 2 Homework Questions
==================

# Readings & Exercises

## Postgres Weekly

<http://postgresweekly.com/>

You sign up for this newsletter for future updates on what is happening in the Postgres (PG) community. This includes updates to PG but also interesting write-ups and tutorials.

## `GROUP BY` Example/Tutorial

Take a look at the `GROUP BY` example to understand a common use case for it (being used along an aggregate function to count or sum records based on groupings)

<http://www.w3schools.com/sql/sql_groupby.asp>

# Questions

## Question Set 1

a. What are the four main data manipulation (CRUD) SQL commands?

1. SELECT (Read)
2. INSERT (Create)
3. UPDATE (Update)
4. DELETE (Delete)

b. Can you delete records from two tables at once? Or will that need to be two separate delete statements?

You'd think so, but nope.

## Question Set 2

a. What is a Primary Key?

It's a unique identifier.

Tells the databse that it's a special column of which there can be only one per table and it uniquely identifies each row (unique and not nullable). It's usually also told to auto increment this value (in Oracle and Postgres, these numbers are generated via "Sequences")

b. What data type is it usually?

An integer.

c. What other properties does/should a primary key have?

Each table has a primary key and there is only one per table. They're always going to be named 'id'.

## Question Set 3

a. What is a Join and what is the one thing it needs to do its thing?

A JOIN returns a specific type of user-defined amalgamation of two or more tables.

A JOIN needs a primary-foreign key relationship. This is usually specified by the 'ON' keyword alongside a 'JOIN' clause.

b. What type of join is the default JOIN clause (if you don't specify)?

INNER JOIN.

c. What is the difference between an INNER JOIN and an OUTER JOIN?

INNER JOIN creates a table of common data between both tables where an OUTER JOIN creates a table of all of the "left" table and the common elements of the "right" table.

INNER JOINs are strict and only produce results from records where the conditions match. OUTER JOINs may also include records from the parent table that don't have a matching child record in the other table.

