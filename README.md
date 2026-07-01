# sql-app-08
A SQL application to implement one-to-many association.

## Problem Statement
### For the below-mentioned data set and rules: 
* Create an ER Diagram using the Conceptual Data Model.
* Create an ER Diagram using the Logical Data Model.
* Create an ER Diagram using the Physical Data Model.

#### Data Set:
* Customer Data: First name, last name, and mobile number.
* Order Data: Order Date and Order Amount.

#### Rules:
* A customer can place many separate orders.
* Each order belongs to one customer.

### Generate SQL: 
* Create tables in the database.
* Insert records for 6 customers where 4 customers have placed orders and 2 customers have not.
* Out of 4 customer who placed orders, 2 customers have placed multiple orders, and 2 customers have placed single orders.
* Find customers who have placed orders.
* Find customers without orders.
* Find customers, even those without orders.
* Find customers having orders placed after 2025.
* Find the total order amount per customer.
* Find customers who have placed more than one order.

## Getting Started
Follow these steps to get a local repository up and running:

1. Clone the repository on local machine:
`git clone https://github.com/Codegnan-HYD/sql-app-08.git`

2. Create a new branch for your work:
`git branch <your-branch-name>`

3. Switch to your branch:
`git checkout <your-branch-name>`

## Contributing
1. Create files and save the ER Diagrams with Conceptual Data Model:
`ERD-Conceptual.png`

2. Create a file and save the ER Diagram with Logical Data Model:
`ERD-Logical.png`

3. Create a file and save the ER Diagram with Physical Data Model:
`ERD-Physical.png`

4. Create a file and save all the DDL SQL commands in it:
`DDL.sql`

5. Create a file and save all the DML SQL commands in it:
`DML.sql`

6. Add all the files to the staging area:
`git add ERD-Conceptual.png`
`git add ERD-Logical.png`
`git add ERD-Physical.png`
`git add DDL.sql`
`git add DML.sql`

7. Commit your changes:
`git commit -m <your commit message>`

8. Push your branch to the remote repository:
`git push https://github.com/Codegnan-HYD/sql-app-08.git <your-branch-name>`

## Prerequisites
1. draw.io 
2. MySQL Database Server 9.7.0
3. MySQL Workbench 8.0.47