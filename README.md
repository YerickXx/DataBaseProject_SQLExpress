# IT Service Management System (Database Core) 🛠️

##  Project Overview
This project focuses on the design and implementation of a **relational database core** for managing IT technical services. The primary goal is to ensure data integrity and process automation through programmed logic directly within the database engine.

The system manages the registration of employees (officials), technicians, and service order traceability, ensuring that every transaction adheres to specific business rules.

> **Current Status:**  Under Development  
> The project is currently in the **persistence layer** and internal logic implementation phase.

---

##  Technologies & Standards
* **Engine:** Microsoft SQL Server Express.
* **Language:** T-SQL (Transact-SQL).
* **Architecture:** Relational design with **3rd Normal Form (3NF)** normalization.
* **Version Control:** Git using [Conventional Commits](https://www.conventionalcommits.org/) (`feat`, `fix`, `docs`, etc.).

---

##  Technical Components Implemented

###  Stored Procedures
Specialized **CRUD** (Create, Read, Update, Delete) procedures have been developed to decouple the application layer from the database.

* **Attribute-Parameter Parity:** Procedures are designed to accept a parameter for every single column in the table (including manual IDs), allowing for granular control over data entry as per specific project requirements.
* **Optimization:** Implementation of `SET NOCOUNT ON` and robust error handling using `TRY...CATCH` blocks.

###  Functions (Scalar & Table-Valued)
*(Upcoming)* Developing functions for:
* Dynamic calculation of response times in service orders.
* Real-time technician availability checks.

---

##  How to Use
1. Clone the repository:
   ```bash
   git clone [https://github.com/YerickXx/Library.git](https://github.com/YerickXx/Library.git)
