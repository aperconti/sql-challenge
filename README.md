# sql-challenge
# Project Overview:
## Tools/Requirements
The tools used for this project are:
pandas,
SQL, 
Juypter,
PgAdmin,
sqlalchemy,
matplotlib

### Environment requirements:
Pandas === 1.1.4
SQL === 
PgAdmin 4

## Objectives
## Data sourcing and cleaning
The first step of this project was inspecting the CSVs and sketching out an ERD of the tables. I used the information to create a table schema for each of the six CSV files. Specifying data types, primary keys, foreign keys, and other constraints.


## Installation and Setup
Process can be followed with these steps:

1.Open postgres and PgAdmin.

2.Create a new database in pgAdmin.

3.Load the CSV's.

4.Run queries in pgAdmin.

5.Run juypter notebook for further analysis. 

## Final Product and Conclusion
The number of employees with repeating names is highly suspect. The only original name is April Fools.

The job title and compensation raise concern, as well. The top paid employee is not an executive but instead a Technique Leader, which is a made-up job title. Furthermore, the minimum paid employee is an Assistant Engineer.

The differences in pay, according to employee title, also raises concern. There are minimal increases in salary from Assistant to Senior level in engineering, with several Senior Engineers making a few dollars more than Assistant Engineers.

These findings have lead me to believe that this dataset is not original.
#### Contributors
Autum Perconti


