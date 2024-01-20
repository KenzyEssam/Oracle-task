show user;

conn user_1/123123;


create table department(ID int PRIMARY KEY,name varchar2(10));
  
create table Employee(ID int Primary key,name varchar2(30),salary int, depart_ID int references department(ID)); 


grant insert on user_1.department to user_2;

grant insert on user_1.Employee to user_2;

  select * from Employee;

  select * from department;
  

  begin
		dbms_output.put_line(sys.raise_salary(1));
	end;
    /
    
    -----
    commit
    -----
    
    update employee set name='o' where
		name='omar';
    
    update employee set name='c' where
		name='ahmed';
    
    
    commit;
    
    select * from employee;
  