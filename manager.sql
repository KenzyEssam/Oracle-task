


CREATE USER user_1 IDENTIFIED BY 123123;
CREATE USER user_2 IDENTIFIED BY 123123;

grant create session to user_1 , user_2 ;

ALTER user user_1 QUOTA 100M on system;

grant create table to user_1;

grant insert,select,update on user_1.employee to user_2;

grant insert,select,update on user_1.department to user_2;
