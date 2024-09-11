create user hr
identified by hr
default tablespace users
temporary tablespace temp;

grant connect, resource to hr;

alter user hr
identified by hr
account unlock;