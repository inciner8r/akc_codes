-- 7) Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table. Consider table Job (job_id,job_title.min_sal,max_sal)

-- CREATE TABLE job_history ( EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, START_DATE date NOT NULL, END_DATE date NOT NULL, JOB_ID varchar(10) NOT NULL, DEPARTMENT_ID decimal(4,0) DEFAULT NULL, FOREIGN KEY (job_id) REFERENCES jobs(job_id) )ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS jobs ( 
JOB_ID varchar(10) NOT NULL UNIQUE, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
);

CREATE TABLE job_history ( 
EMPLOYEE_ID decimal(6,0) NOT NULL PRIMARY KEY, 
START_DATE date NOT NULL, 
END_DATE date NOT NULL, 
JOB_ID varchar(10) NOT NULL, 
DEPARTMENT_ID decimal(4,0) DEFAULT NULL, 
FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);


DESC job_history;
select * from jobs inner join job_history on jobs.JOB_ID = job_history.JOB_ID;