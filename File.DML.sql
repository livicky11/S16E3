truncate table Person;
truncate table current_projects;
truncate table Project;
truncate table parent_child;
truncate table Departments;

alter trigger Departments_PK_trig disable;
alter trigger Person_PK_trig disable;
alter trigger Project_PK_trig disable;

alter table parent_child disable constraint parent_child_Person_FKv1;
alter table parent_child disable constraint parent_child_Person_FK;
alter table current_projects disable constraint current_projects_Project_FK;
alter table current_projects disable constraint current_projects_Person_FK;
alter table Project disable constraint Project_Project_FK;
alter table Project disable constraint Project_Person_FK;
alter table Project disable constraint Project_Departments_FK;
alter table Person disable constraint Person_Person_FK;
alter table Person disable constraint Person_Person_FK;
alter table Person disable constraint Person_Departments_FK;

INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, employee_id, salary, salary_exception, bonus, type) VALUES (1, 'Bill', 'Dawer', '432 Hill Rd', 78705, 7891903, 1, 11, 70200, 1, 10000, 'Interim Manager');
INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, employee_id, salary, salary_exception, type) VALUES (2, 'Diane', 'Wall', '32 Cannon Dr', 78705, 7891903, 1, 12, 80210, 0, 'Project Employee');
INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, employee_id, salary, salary_exception, type) VALUES (3, 'Jennifer', 'Brown', '35 Palm Lane', 73014, 2360884, 1, 13, 80210, 0, 'Project Employee');
INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, salary, type) VALUES (4, 'Alice', 'Dawer', '432 Hill Rd', 78021, 6541658, 0, 50500, 'Previous Employee');
INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, employee_id, salary, salary_exception, type) VALUES (5, 'George', 'Layton', '347 Nueces St', 78705, 8798798, 1, 15, 70201, 0, 'Employee');
INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, type) VALUES (9, 'Mike', 'Dawer', '432 Hill Rd', 78705, 7891903, 1, 'Person');
INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, employee_id, salary, bonus, type) VALUES (8, 'Henry', 'Silverstone', '100 Gates St', 70007, 4565404, 1, 18, 570201, 200000, 'President' );
INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, employee_id, salary, type) VALUES (6, 'Susan', 'Petro', '323 Country Lane', 73421, 6541238, 1, 16, 70210, 'Project Employee');
INSERT INTO Person (person_id, first_name, last_name, home_address, zipcode, home_phone, us_citizen, employee_id, salary, type) VALUES(7, 'Steven', 'Williams', '3 Seton St', 78705, 8798712, 0, 17, 70210, 'Interim Manager');

INSERT INTO Project(project_id, project_no, project_title, type, project_active) VALUES (41, 21, 'Mission Impossible', 'Current', 1);
INSERT INTO Project(project_id, project_no, project_title, type, est_person_hours, end_date_month, end_date_day, end_date_year) VALUES (42, 22, 'Code Red', 'Previous', 2000, 1, 6, 1999);
INSERT INTO Project(project_id, project_no, project_title, type, est_person_hours, end_date_month, end_date_day, end_date_year) VALUES (43, 23, 'Desert Rose', 'Previous', 1300, 5, 3, 1997);
INSERT INTO Project(project_id, project_no, project_title, type, project_active) VALUES (44, 24, 'Hallo', 'Current', 0);
INSERT INTO Project(project_id, project_no, project_title, type, project_active) VALUES (45, 25, 'Stick And Fly', 'Current', 1);
INSERT INTO Project(project_id, project_no, project_title, type, project_active) VALUES (46, 26, 'Night Rider', 'Current', 1);

INSERT INTO Departments (dept_id, dept_no, dept_name) VALUES (1, 31 , 'Purchasing');
INSERT INTO Departments (dept_id, dept_no, dept_name) VALUES (2, 32 , 'Sales');
INSERT INTO Departments (dept_id, dept_no, dept_name) VALUES (3, 33 , 'Marketing');
INSERT INTO Departments (dept_id, dept_no, dept_name) VALUES (4, 34 , 'R&D');
INSERT INTO Departments (dept_id, dept_no, dept_name) VALUES (5, 35 , 'Accounting');

alter trigger Departments_PK_trig enable;
alter trigger Person_PK_trig enable;
alter trigger Project_PK_trig enable;

alter table parent_child enable constraint parent_child_Person_FKv1;
alter table parent_child enable constraint parent_child_Person_FK;
alter table current_projects enable constraint current_projects_Project_FK;
alter table current_projects enable constraint current_projects_Person_FK;
alter table Project enable constraint Project_Project_FK;
alter table Project enable constraint Project_Person_FK;
alter table Project enable constraint Project_Departments_FK;
alter table Person enable constraint Person_Person_FK;
alter table Person enable constraint Person_Person_FK;
alter table Person enable constraint Person_Departments_FK;