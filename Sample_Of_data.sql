-- all command to backup and recovery
create database sample;
use sample;
create table students( roll_no int, name varchar(34), email varchar(30));
insert into students values( 1 ,"shahroz", "shahrozali09@gmail.com");
insert into students values( 2 ,"Aniket", "aniketkumar09@gmail.com");
insert into students values( 3 ,"charu", "charujoshi09@gmail.com");
insert into students values( 4 ,"kapil", "kapilsharma09@gmail.com");
insert into students values( 5 ,"lovecesh", "lovekesh09@gmail.com");
insert into students values( 6 ,"aman", "amanrathore98@gmail.com");
select *from students;

-- backup commands (commmand prompt);
----> mysqldump -u root -p sample > sample_backup.sql
-- now you can drop the sample database 
Drop database sample;

---- now recovery process -----
create database sample;
-----> mysql -u root -p sample < sample_backup.sql
check to verify
USE sample;

SELECT * FROM students;



