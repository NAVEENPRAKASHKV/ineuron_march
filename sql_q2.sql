create database march_3;
use march_3;

create table test_a(id numeric);
create table test_b(id numeric);

INSERT into test_a (id) values (10),(20),(30),(40),(50);
INSERT into test_b (id) values (10),(30),(50);


SELECT a.id from test_a as a LEFT JOIN test_b as b on a.id = b.id where b.id is null ;
