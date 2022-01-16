
#4 departments, dept.no, dept_manager, employees, salaries, titles 

#5 INT (integer), DATE, VARCHAR (string fixed number of MAX characters length), and ENUM (string object with a value chosen from a list)

#6 All of them

#7 employees, titles, and departments 

#8 employees, dept_emp, salaries

#9 There is no direct relationship 

#10
SHOW CREATE TABLE dept_manager;
#CREATE TABLE `dept_manager` (
#  `emp_no` int NOT NULL,
#  `dept_no` char(4) NOT NULL,
#  `from_date` date NOT NULL,
#  `to_date` date NOT NULL,
#  PRIMARY KEY (`emp_no`,`dept_no`),
#  KEY `dept_no` (`dept_no`),
#  CONSTRAINT `dept_manager_ibfk_1` FOREIGN KEY (`emp_no`) REFERENCES `employees` (`emp_no`) ON DELETE CASCADE ON UPDATE RESTRICT,
#  CONSTRAINT `dept_manager_ibfk_2` FOREIGN KEY (`dept_no`) REFERENCES `departments` (`dept_no`) ON DELETE CASCADE ON UPDATE RESTRICT
#) ENGINE=InnoDB DEFAULT CHARSET=latin1

