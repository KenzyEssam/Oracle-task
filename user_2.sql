show user;
conn user_2/123123;


insert into user_1.department values (1,'HR');
  
insert into user_1.department values (2,'IT');
  
insert into user_1.department values (3,'Finance');
  
  commit;
  
insert into user_1.Employee values (1,'omar',7000,2);
  
insert into user_1.Employee values (2,'ahmed',5000,1);
  
 insert into user_1.Employee values (3,'maged',4000,3);
  
insert into user_1.Employee values (4,'esraa',3000,1);
  
insert into user_1.Employee values (5,'nada',2000,3);
  
  commit;
  
  select * from USER_1.EMPLOYEE;
  
  begin
		dbms_output.put_line(sys.raise_salary(1));
    end;
    /
    commit
    
    update user_1.employee set name='a' where
		name='ahmed';
  
    
        update user_1.employee set name='z' where
        name='omar';    
        

    

    select * from user_1.employee;
    