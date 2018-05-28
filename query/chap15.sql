create database guestbook default character set utf8;

CREATE USER 'jspexam'@'localhost' IDENTIFIED BY 'jsppw';
GRANT ALL PRIVILEGES ON guestbook.* TO 'jspexam'@'localhost';

CREATE USER 'jspexam'@'%' IDENTIFIED BY 'jsppw';
GRANT ALL PRIVILEGES ON guestbook.* TO 'jspexam'@'%';

use mysql;
select user, host from user;


create table guestbook_message (
	message_id int not null auto_increment primary key,
    guetst_name varchar(50) not null,
    password varchar(10) not null,
    message text not null
) engine=InnoDB default character set = utf8;