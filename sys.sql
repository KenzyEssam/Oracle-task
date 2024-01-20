
show user;


create user manager identified by 123;

grant dba to manager;


CREATE OR REPLACE FUNCTION raise_salary(d_id INTEGER)
        RETURN VARCHAR2 AS
    BEGIN
        IF (d_id = 1) THEN
            UPDATE user_1.employee
            SET salary = salary * 1.1
            WHERE depart_ID = 1;
  
            RETURN 'Salaries updated for department one';
       ELSE
           RETURN 'Nothing updated';
       END IF;
   END raise_salary;
   /
   
   begin
        dbms_output.put_line(raise_salary(1));
    END;
    /


    
  select * from user_1.employee;
    
  grant execute on raise_salary to user_1;
	
  grant execute on raise_salary to user_2;
	
	  
SELECT
    w.sid AS "Waiting Session SID",
    w.serial# AS "Waiting Session Serial#",
    w.blocking_session AS "Blocking Session SID",
    w.seconds_in_wait AS "Waiting Session Period",
    b.serial# AS "Blocking Serial#",
    v.sql_fulltext AS "Waiting Session SQL Statement"
FROM
    v$session w
JOIN
    v$session b ON w.blocking_session = b.sid
JOIN
    v$sql v ON w.sql_id = v.sql_id
WHERE
    w.blocking_session IS NOT NULL;



  
  ----------------------1-------------------------
  create or replace function avrage_salary(department_id number) return number
  is 
  av_salary number;
  BEGIN  
  
    Select Avg(salary) into av_salary from user_1.employee where depart_ID = department_id;
    
    return av_salary;
  
  end avrage_salary;
  /

  -------------------------------2------------------------
  
  
  create or replace function total_salary (department_id number) return number
  is
  ta_salary number;
  
  begin
  
    select sum (salary) into ta_salary from user_1.employee where depart_ID = department_id;
    
    return ta_salary;
  
  end total_salary;
  /
  
  -------------------3-------------------------
  
  
  CREATE OR REPLACE FUNCTION get_max_salary
		RETURN NUMBER
	AS
		max_salary NUMBER;
	BEGIN
		SELECT MAX(salary)
		INTO max_salary
		FROM user_1.Employee;

		RETURN max_salary;
	END get_max_salary;
	/
  
  -------------------------------
  
drop table user_1.employee; 

drop table user_1.department CASCADE CONSTRAINTS;
  
drop user user_1 cascade;
  

drop user manager cascade;

drop user user_2 cascade;

  