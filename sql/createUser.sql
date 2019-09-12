create user spring identified by java;
grant connect, resource, create view to spring;

conn spring/java;
select * from tab;

