---------UC1---------

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| demo_db            |
| information_schema |
| mysql              |
| payroll_services   |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.00 sec)

mysql> use payroll_services
Database changed
mysql>

--------UC2-----------

mysql> create table employee_payroll (id int PRIMARY KEY AUTO_INCREMENT, name VARCHAR(50), salary double, start DATE);
ERROR 1050 (42S01): Table 'employee_payroll' already exists
mysql> desc employee_payroll
    -> ;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| id     | int unsigned | NO   | PRI | NULL    | auto_increment |
| name   | varchar(50)  | NO   |     | NULL    |                |
| Gender | varchar(10)  | YES  |     | NULL    |                |
| salary | double       | NO   |     | NULL    |                |
| start  | date         | NO   |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+
5 rows in set (0.01 sec)
mysql> desc employee_payroll
    -> ;
+--------------+--------------+------+-----+--------------------+----------------+
| Field        | Type         | Null | Key | Default            | Extra          |
+--------------+--------------+------+-----+--------------------+----------------+
| id           | int unsigned | NO   | PRI | NULL               | auto_increment |
| name         | varchar(50)  | NO   |     | NULL               |                |
| basic_pay    | float        | NO   |     | 5000000            |                |
| deductions   | float        | NO   |     | 60000              |                |
| taxable_pay  | float        | NO   |     | 7000               |                |
| income_tax   | float        | NO   |     | 20000              |                |
| net_pay      | float        | NO   |     | 20000              |                |
| phone_number | varchar(250) | YES  |     | NULL               |                |
| address      | varchar(255) | NO   |     | mumbai,Maharashtra |                |
| Gender       | varchar(10)  | YES  |     | NULL               |                |
| start        | date         | NO   |     | NULL               |                |
+--------------+--------------+------+-----+--------------------+----------------+
11 rows in set (0.01 sec)