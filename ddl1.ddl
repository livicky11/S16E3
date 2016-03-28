-- Generated by Oracle SQL Developer Data Modeler 4.1.3.901
--   at:        2016-03-28 17:21:45 CDT
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c




DROP TABLE Departments CASCADE CONSTRAINTS ;

DROP TABLE Person CASCADE CONSTRAINTS ;

DROP TABLE Project CASCADE CONSTRAINTS ;

DROP TABLE "current-projects" CASCADE CONSTRAINTS ;

DROP TABLE "parent-child" CASCADE CONSTRAINTS ;

CREATE TABLE Departments
  (
    "dept-no"   INTEGER NOT NULL ,
    "dept-name" VARCHAR2 (4000)
  ) ;
ALTER TABLE Departments ADD CONSTRAINT Departments_PK PRIMARY KEY ( "dept-no" ) ;


CREATE TABLE Person
  (
    person_id              INTEGER NOT NULL ,
    "first-name"           VARCHAR2 (4000) ,
    "last-name"            VARCHAR2 (4000) ,
    home_address           VARCHAR2 (4000) ,
    zipcode                INTEGER ,
    "home-phone"           INTEGER ,
    "us-citizen"           NUMBER ,
    isFired                NUMBER ,
    salary                 INTEGER ,
    "employee-id"          INTEGER ,
    "salary-exception"     NUMBER ,
    bonus                  INTEGER ,
    Person_person_id       INTEGER NOT NULL ,
    "Departments_dept-no1" INTEGER NOT NULL ,
    Person_person_id2      INTEGER NOT NULL ,
    Person_person_id1      INTEGER NOT NULL ,
    "Departments_dept-no"  INTEGER NOT NULL
  ) ;
CREATE UNIQUE INDEX Person__IDX ON Person
  (
    Person_person_id2 ASC
  )
  ;
ALTER TABLE Person ADD CONSTRAINT Person_PK PRIMARY KEY ( person_id ) ;


CREATE TABLE Project
  (
    "project-no"           INTEGER NOT NULL ,
    "project-title"        VARCHAR2 (4000) ,
    "end-date-month"       INTEGER ,
    "end-date-day"         INTEGER ,
    "end-date-year"        INTEGER ,
    "est-person-hours"     INTEGER ,
    "project-active"       NUMBER ,
    "Departments_dept-no"  INTEGER NOT NULL ,
    "Project_project-no"   INTEGER NOT NULL ,
    Person_person_id1      INTEGER NOT NULL ,
    "Departments_dept-no1" INTEGER NOT NULL ,
    Person_person_id       INTEGER NOT NULL
  ) ;
ALTER TABLE Project ADD CONSTRAINT Project_PK PRIMARY KEY ( "project-no" ) ;


CREATE TABLE "current-projects"
  (
    Person_person_id     INTEGER NOT NULL ,
    "Project_project-no" INTEGER NOT NULL
  ) ;


CREATE TABLE "parent-child"
  (
    Person_person_id  INTEGER NOT NULL ,
    Person_person_id1 INTEGER NOT NULL
  ) ;


ALTER TABLE Person ADD CONSTRAINT Person_Departments_FK FOREIGN KEY ( "Departments_dept-no" ) REFERENCES Departments ( "dept-no" ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Departments_FKv1 FOREIGN KEY ( "Departments_dept-no1" ) REFERENCES Departments ( "dept-no" ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FK FOREIGN KEY ( Person_person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FKv1 FOREIGN KEY ( Person_person_id1 ) REFERENCES Person ( person_id ) ;

ALTER TABLE Person ADD CONSTRAINT Person_Person_FKv2 FOREIGN KEY ( Person_person_id2 ) REFERENCES Person ( person_id ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Departments_FK FOREIGN KEY ( "Departments_dept-no" ) REFERENCES Departments ( "dept-no" ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Departments_FKv1 FOREIGN KEY ( "Departments_dept-no1" ) REFERENCES Departments ( "dept-no" ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Person_FK FOREIGN KEY ( Person_person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Person_FKv1 FOREIGN KEY ( Person_person_id1 ) REFERENCES Person ( person_id ) ;

ALTER TABLE Project ADD CONSTRAINT Project_Project_FK FOREIGN KEY ( "Project_project-no" ) REFERENCES Project ( "project-no" ) ;

ALTER TABLE "current-projects" ADD CONSTRAINT "current-projects_Person_FK" FOREIGN KEY ( Person_person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE "current-projects" ADD CONSTRAINT "current-projects_Project_FK" FOREIGN KEY ( "Project_project-no" ) REFERENCES Project ( "project-no" ) ;

ALTER TABLE "parent-child" ADD CONSTRAINT "parent-child_Person_FK" FOREIGN KEY ( Person_person_id ) REFERENCES Person ( person_id ) ;

ALTER TABLE "parent-child" ADD CONSTRAINT "parent-child_Person_FKv1" FOREIGN KEY ( Person_person_id1 ) REFERENCES Person ( person_id ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             1
-- ALTER TABLE                             17
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- TSDP POLICY                              0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
