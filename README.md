@hicesse

---

# Database Assignment 1

This repository contains **Database Assignment 1** for the Database Systems course.

## Description

This project demonstrates fundamental relational database concepts using MySQL, including:

* Database schema design
* Table creation with primary keys
* Foreign key relationships
* Data integrity constraints
* Multi-table JOIN queries

The database models a simple academic system consisting of **students**, **majors**, and **courses**, where relationships are implemented using foreign keys.

## Database Structure

* **students**
  Stores student data and references `majors` via `major_id`.

* **majors**
  Acts as the central table representing academic majors.

* **courses**
  Stores course data and references `majors` via `major_id`.

## Features

* One-to-many relationships using foreign keys
* Proper use of `ALTER TABLE` for constraint management
* JOIN queries across three related tables
* Clear and readable SQL using table aliases

## Technologies

* MySQL
* SQL

## Notes

This project is created for academic purposes as part of the first database assignment and focuses on understanding relational concepts rather than application-level implementation.

---
