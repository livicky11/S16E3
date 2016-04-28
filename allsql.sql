--
--
--PART ONE
--
--

--Shared components

select dept_name as d,
       dept_id as r
  from departments
 order by 1

select first_name || ' ' || last_Name as d,
       person_id as r
  from person
 where (type = 'Employee' or type = 'Project Employee') and (isfired IS NULL OR isfired <> 1)
 order by 1

select first_name || ' ' || last_name as d,
       person_id as r
  from person 
  where (type = 'Manager' or type = 'Interim Manager')
 order by 1

select first_name || ' ' || last_Name as d,
       person_id as r
  from person
 order by 1

select project_title as d,
       project_id as r
  from project
 order by 1

select first_name || ' ' || last_Name as d,
       person_id as r
  from person
 where (type = 'Employee' or type = 'Project-Employee') and (isfired IS NULL OR isfired <> 1)
 order by 1

select project_title as d,
       project_id as r
  from project
 where type = 'Master'
 order by 1

select first_name || ' ' || last_Name as d,
       person_id as r
  from person
 where person_person_id1 IS NULL
 order by 1


--Relationship SQL

update person 
set isfired = 1
where person_id = :P4_EMPLIST;

update project
set project_completed = 1, type= 'Previous-Project'
where project_id = :P5_PROJECTLIST;

update project
set Person_person_id = :P6_MANAGER_LIST where project_id = :P6_Project_List;

update person set employee_pno = :P6_PROJECT_LIST where person_id=:P6_MANAGER_LIST;

update person
set employee_pno = :P7_project_list
where person_id = :P7_employee_list;

update person
set type = 'Project Employee'
where person_id = :P7_employee_list;


--Reports

SELECT '' EDIT_LINK, DEPT_ID, DEPT_NO, DEPT_NAME 
FROM DEPARTMENTS

select '' edit_link, PERSON_ID,
       FIRST_NAME,
       LAST_NAME,
       HOME_ADDRESS,
       ZIPCODE,
       HOME_PHONE,
       US_CITIZEN,
       ISFIRED,
       SALARY,
       EMPLOYEE_ID,
       SALARY_EXCEPTION,
       BONUS,
       PERSON_PERSON_ID1,
       TYPE,
       PERSON_PERSON_ID,
       DEPARTMENTS_DEPT_ID,
       EMPLOYEE_PNO
  from PERSON

select '' edit_link,
PROJECT_ID,
       PROJECT_NO,
       PROJECT_TITLE,
       END_DATE_MONTH,
       END_DATE_DAY,
       END_DATE_YEAR,
       EST_PERSON_HOURS,
       PROJECT_ACTIVE,
       PROJECT_NO1,
       PERSON_PERSON_ID,
       TYPE,
       DEPARTMENTS_DEPT_ID,
       PROJECT_PROJECT_ID,
       PROJECT_COMPLETED
  from PROJECT

select '' edit_link,
       PERSON_ID,
       FIRST_NAME,
       LAST_NAME,
       HOME_ADDRESS,
       ZIPCODE,
       HOME_PHONE,
       US_CITIZEN,
       EMPLOYEE_ID,
       SALARY,
       SALARY_EXCEPTION,
     PERSON_PERSON_ID as MANAGER
from EMPLOYEE_VIEW;

select '' edit_link,
       PERSON_ID,
       FIRST_NAME,
       LAST_NAME,
       HOME_ADDRESS,
       ZIPCODE,
       HOME_PHONE,
       US_CITIZEN,
       EMPLOYEE_ID,
       SALARY,
       SALARY_EXCEPTION,
       BONUS,
       DEPARTMENTS_DEPT_ID,
       TYPE
  from MANAGER_VIEW

--Spouse SQL

UPDATE person 
SET person.person_person_id1 = (SELECT p2.person_id FROM person p2 WHERE p2.person_person_id1 = person.person_id )
WHERE person.person_id= (SELECT p2.person_person_id1 FROM person p2 WHERE p2.person_person_id1 = person.person_id ) ;


--
--
--PART TWO
--
--

--Person Table

select				
jt1.first_name	first_name,			
jt2.last_name	last_name,			
jt3.person_id	person_id,			
jt4.home_address	home_address,		
jt5.zipcode	zipcode,			
jt6.home_phone	home_phone,			
jt7.us_citizen	us_citizen
from	apex_collections	t,
json_table(t.clob001, '$.first_name[*]' COLUMNS rid for ordinality, first_name varchar path '$') jt1,
json_table(t.clob001, '$.last_name[*]' COLUMNS rid for ordinality, last_name varchar path '$') jt2,
json_table(t.clob001, '$.person_id[*]' COLUMNS rid for ordinality, person_id varchar path '$') jt3,
json_table(t.clob001, '$.home_address[*]' COLUMNS rid for ordinality, home_address varchar path '$') jt4,
json_table(t.clob001, '$.zipcode[*]' COLUMNS rid for ordinality, zipcode varchar path '$') jt5,
json_table(t.clob001, '$.home_phone[*]' COLUMNS rid for ordinality, home_phone varchar path '$') jt6,
json_table(t.clob001, '$.us_citizen[*]' COLUMNS rid for ordinality, us_citizen varchar path '$') jt7
where	t.collection_name	=	'P2_PERSONJSON'and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid

--This is technically SIM:
--"from person retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P2_PERSONJSON'


--Employee Create

'insert employee(employee-id := 'employeeid', salary := 'salary', salary-exception := 'salaryexception', person-id := 'personid', first-name := 'firstname', last-name := 'lastname', home_address := 'homeaddress', zipcode := 'zipcode', home-phone := 'homephone', us-citizen := 'uscitizen');'

--Employee Table

select				
jt1.first_name	first_name,			
jt2.last_name	last_name,			
jt3.person_id	person_id,			
jt4.home_address	home_address,			
jt5.zipcode	zipcode,			
jt6.home_phone	home_phone,			
jt7.us_citizen	us_citizen,			
jt8.employee_id	employee_id,			
jt9.salary	salary,			
jt10.salary_exception salary_exception
from	apex_collections	t,
json_table(t.clob001, '$.first_name[*]' COLUMNS rid for ordinality, first_name varchar path '$') jt1,
json_table(t.clob001, '$.last_name[*]' COLUMNS rid for ordinality, last_name varchar path '$') jt2,
json_table(t.clob001, '$.person_id[*]' COLUMNS rid for ordinality, person_id varchar path '$') jt3,
json_table(t.clob001, '$.home_address[*]' COLUMNS rid for ordinality, home_address varchar path '$') jt4,
json_table(t.clob001, '$.zipcode[*]' COLUMNS rid for ordinality, zipcode varchar path '$') jt5,
json_table(t.clob001, '$.home_phone[*]' COLUMNS rid for ordinality, home_phone varchar path '$') jt6,
json_table(t.clob001, '$.us_citizen[*]' COLUMNS rid for ordinality, us_citizen varchar path '$') jt7,
json_table(t.clob001, '$.employee_id[*]' COLUMNS rid for ordinality, employee_id varchar path '$') jt8,
json_table(t.clob001, '$.salary[*]' COLUMNS rid for ordinality, salary varchar path '$') jt9,
json_table(t.clob001, '$.salary_exception[*]' COLUMNS rid for ordinality, salary_exception varchar path '$') jt10
where	t.collection_name	=	'P5_EMPLOYEEJSON'and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid

--This is technically SIM:
--"from employee retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P5_EMPLOYEEJSON'

--Department Table

select		
jt1.dept_no dept_no,
jt2.dept_name dept_name
from	apex_collections	t,
json_table(t.clob001, '$.dept_no[*]' COLUMNS rid for ordinality, dept_no varchar path '$') jt1,
json_table(t.clob001, '$.dept_name[*]' COLUMNS rid for ordinality, dept_name varchar path '$') jt2
where	t.collection_name	=	'P8_DEPARTMENTJSON' and 
jt1.rid = jt2.rid

--This is technically SIM:
--"from department retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P8_DEPARTMENTJSON'

--Manager Table

select				
jt1.first_name	first_name,			
jt2.last_name	last_name,			
jt3.person_id	person_id,			
jt4.home_address	home_address,			
jt5.zipcode	zipcode,			
jt6.home_phone	home_phone,			
jt7.us_citizen	us_citizen,			
jt8.employee_id	employee_id,			
jt9.salary	salary,			
jt10.salary_exception salary_exception,
jt11.bonus bonus
from	apex_collections	t,
json_table(t.clob001, '$.first_name[*]' COLUMNS rid for ordinality, first_name varchar path '$') jt1,
json_table(t.clob001, '$.last_name[*]' COLUMNS rid for ordinality, last_name varchar path '$') jt2,
json_table(t.clob001, '$.person_id[*]' COLUMNS rid for ordinality, person_id varchar path '$') jt3,
json_table(t.clob001, '$.home_address[*]' COLUMNS rid for ordinality, home_address varchar path '$') jt4,
json_table(t.clob001, '$.zipcode[*]' COLUMNS rid for ordinality, zipcode varchar path '$') jt5,
json_table(t.clob001, '$.home_phone[*]' COLUMNS rid for ordinality, home_phone varchar path '$') jt6,
json_table(t.clob001, '$.us_citizen[*]' COLUMNS rid for ordinality, us_citizen varchar path '$') jt7,
json_table(t.clob001, '$.employee_id[*]' COLUMNS rid for ordinality, employee_id varchar path '$') jt8,
json_table(t.clob001, '$.salary[*]' COLUMNS rid for ordinality, salary varchar path '$') jt9,
json_table(t.clob001, '$.salary_exception[*]' COLUMNS rid for ordinality, salary_exception varchar path '$') jt10,
json_table(t.clob001, '$.bonus[*]' COLUMNS rid for ordinality, bonus varchar path '$') jt11
where	t.collection_name	=	'P9_MANAGERJSON'and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid

--This is technically SIM:
--"from manager retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P9_MANAGERJSON'

--Project Table

select		
jt1.project_no project_no,
jt2.project_title project_title
from	apex_collections	t,
json_table(t.clob001, '$.project_no[*]' COLUMNS rid for ordinality, project_no varchar path '$') jt1,
json_table(t.clob001, '$.project_title[*]' COLUMNS rid for ordinality, project_title varchar path '$') jt2
where	t.collection_name	=	'P11_PROJECTJSON' and 
jt1.rid = jt2.rid

--This is technically SIM:
--"from project retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P11_PROJECTJSON'

--Department Create

'INSERT Department( dept-no:= 'deptno' ,dept-name := 'deptname');'

--Manager Create

'INSERT Manager ( person-id := 'personid' , first-name := 'firstname' , last-name := 'lastname' , home_address:= 'homeaddress', zipcode := 'zipcode', home-phone := 'homephone' , us-citizen := 'uscitizen' ,employee-id:= 'employeeid',salary:= 'salary' , salary-exception := 'salaryexception', bonus:= 'bonus' );'

--Project Create

'INSERT Project( project-no:= 'projectno' ,project-title := 'projecttitle');'

--View Previous Projects

select				
jt1.project_no project_no,			
jt2.project_name 
project_name,			
jt3.end_date_month end_date_month,			
jt4.end_date_day end_date_day,			
jt5.end_date_year end_date_year,			
jt6.est_person_hours est_person_hours		
from	apex_collections	t,
json_table(t.clob001, '$.project_no[*]' COLUMNS rid for ordinality, project_no varchar path '$') jt1,
json_table(t.clob001, '$.project_name[*]' COLUMNS rid for ordinality, project_name varchar path '$') jt2,
json_table(t.clob001, '$.end_date_month[*]' COLUMNS rid for ordinality, end_date_month varchar path '$') jt3,
json_table(t.clob001, '$.end_date_day[*]' COLUMNS rid for ordinality, end_date_day varchar path '$') jt4,
json_table(t.clob001, '$.end_date_year[*]' COLUMNS rid for ordinality, end_date_year varchar path '$') jt5,
json_table(t.clob001, '$.est_person_hours[*]' COLUMNS rid for ordinality, est_person_hours varchar path '$') jt6
where	t.collection_name	=	'P19_PREVIOUSPROJECTJSON' and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid

--This is technically SIM:
--"from previous-project retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P19_PREVIOUSPROJECTJSON'

--View Current Projects

select		
jt1.project_no project_no,
jt2.project_title project_title,
jt3.project_active project_active
from	apex_collections	t,
json_table(t.clob001, '$.project_no[*]' COLUMNS rid for ordinality, project_no varchar path '$') jt1,
json_table(t.clob001, '$.project_title[*]' COLUMNS rid for ordinality, project_title varchar path '$') jt2,
json_table(t.clob001, '$.project_active[*]' COLUMNS rid for ordinality, project_active varchar path '$') jt3
where	t.collection_name	=	'P20_CURRENTPROJECTJSON' and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid

--This is technically SIM:
--"from current-project retrieve *;"

--View President

select				
jt1.project_no project_no,			
jt2.project_name 
project_name,			
jt3.end_date_month end_date_month,			
jt4.end_date_day end_date_day,			
jt5.end_date_year end_date_year,			
jt6.est_person_hours est_person_hours		
from	apex_collections	t,
json_table(t.clob001, '$.project_no[*]' COLUMNS rid for ordinality, project_no varchar path '$') jt1,
json_table(t.clob001, '$.project_name[*]' COLUMNS rid for ordinality, project_name varchar path '$') jt2,
json_table(t.clob001, '$.end_date_month[*]' COLUMNS rid for ordinality, end_date_month varchar path '$') jt3,
json_table(t.clob001, '$.end_date_day[*]' COLUMNS rid for ordinality, end_date_day varchar path '$') jt4,
json_table(t.clob001, '$.end_date_year[*]' COLUMNS rid for ordinality, end_date_year varchar path '$') jt5,
json_table(t.clob001, '$.est_person_hours[*]' COLUMNS rid for ordinality, est_person_hours varchar path '$') jt6
where	t.collection_name	=	'P19_PREVIOUSPROJECTJSON' and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid

--This is technically SIM:
--"from previous-project retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P19_PREVIOUSPROJECTJSON'

--View Project Employee

select				
jt1.first_name	first_name,			
jt2.last_name	last_name,			
jt3.person_id	person_id,			
jt4.home_address	home_address,			
jt5.zipcode	zipcode,			
jt6.home_phone	home_phone,			
jt7.us_citizen	us_citizen,			
jt8.employee_id	employee_id,			
jt9.salary	salary,			
jt10.salary_exception salary_exception
from	apex_collections	t,
json_table(t.clob001, '$.first_name[*]' COLUMNS rid for ordinality, first_name varchar path '$') jt1,
json_table(t.clob001, '$.last_name[*]' COLUMNS rid for ordinality, last_name varchar path '$') jt2,
json_table(t.clob001, '$.person_id[*]' COLUMNS rid for ordinality, person_id varchar path '$') jt3,
json_table(t.clob001, '$.home_address[*]' COLUMNS rid for ordinality, home_address varchar path '$') jt4,
json_table(t.clob001, '$.zipcode[*]' COLUMNS rid for ordinality, zipcode varchar path '$') jt5,
json_table(t.clob001, '$.home_phone[*]' COLUMNS rid for ordinality, home_phone varchar path '$') jt6,
json_table(t.clob001, '$.us_citizen[*]' COLUMNS rid for ordinality, us_citizen varchar path '$') jt7,
json_table(t.clob001, '$.employee_id[*]' COLUMNS rid for ordinality, employee_id varchar path '$') jt8,
json_table(t.clob001, '$.salary[*]' COLUMNS rid for ordinality, salary varchar path '$') jt9,
json_table(t.clob001, '$.salary_exception[*]' COLUMNS rid for ordinality, salary_exception varchar path '$') jt10
where	t.collection_name	=	'P22_PROJECTEMPLOYEEJSON'and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid

--This is technically SIM:
--"from project-employee retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P22_PROJECTEMPLOYEEJSON'

--View Interim Manager

select				
jt1.first_name	first_name,			
jt2.last_name	last_name,			
jt3.person_id	person_id,			
jt4.home_address	home_address,			
jt5.zipcode	zipcode,			
jt6.home_phone	home_phone,			
jt7.us_citizen	us_citizen,			
jt8.employee_id	employee_id,			
jt9.salary	salary,			
jt10.salary_exception salary_exception,
jt11.bonus bonus
from	apex_collections	t,
json_table(t.clob001, '$.first_name[*]' COLUMNS rid for ordinality, first_name varchar path '$') jt1,
json_table(t.clob001, '$.last_name[*]' COLUMNS rid for ordinality, last_name varchar path '$') jt2,
json_table(t.clob001, '$.person_id[*]' COLUMNS rid for ordinality, person_id varchar path '$') jt3,
json_table(t.clob001, '$.home_address[*]' COLUMNS rid for ordinality, home_address varchar path '$') jt4,
json_table(t.clob001, '$.zipcode[*]' COLUMNS rid for ordinality, zipcode varchar path '$') jt5,
json_table(t.clob001, '$.home_phone[*]' COLUMNS rid for ordinality, home_phone varchar path '$') jt6,
json_table(t.clob001, '$.us_citizen[*]' COLUMNS rid for ordinality, us_citizen varchar path '$') jt7,
json_table(t.clob001, '$.employee_id[*]' COLUMNS rid for ordinality, employee_id varchar path '$') jt8,
json_table(t.clob001, '$.salary[*]' COLUMNS rid for ordinality, salary varchar path '$') jt9,
json_table(t.clob001, '$.salary_exception[*]' COLUMNS rid for ordinality, salary_exception varchar path '$') jt10,
json_table(t.clob001, '$.bonus[*]' COLUMNS rid for ordinality, bonus varchar path '$') jt11
where	t.collection_name	=	'P23_INTERIMMANAGERJSON'and 
jt1.rid = jt2.rid and jt2.rid = jt3.rid and jt3.rid = jt4.rid and jt4.rid = jt5.rid and jt5.rid = jt6.rid and jt6.rid = jt7.rid and jt7.rid = jt8.rid and jt8.rid = jt9.rid and jt9.rid = jt10.rid and jt10.rid = jt11.rid

--This is technically SIM:
--"from interim-manager retrieve *;"

select clob001 from apex_collections 
where collection_name = 'P23_INTERIMMANAGERJSON'

--Person Create

'insert person(person-id := 'personid', first-name := 'firstname', last-name := 'lastname', home_address := 'homeaddress', zipcode := 'zipcode', home-phone := 'homephone', us-citizen := 'uscitizen');'