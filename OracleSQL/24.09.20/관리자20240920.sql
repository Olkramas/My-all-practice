CREATE USER skj
IDENTIFIED BY test;


--접속할 수 있는 권한주기
GRANT create session
TO    skj;

GRANT create session,
      create table,
      create view
To    skj;

REVOKE create table,
       create view
FROM   skj;

--비밀번호 변경
ALTER USER skj
IDENTIFIED BY lion;

--바구니 만들기(롤)
CREATE ROLE manager;

GRANT create session,
      create table,
      create view
TO    manager;

--바구니 skj에게 주기
GRANT manager
TO    skj;

DROP ROLE manager;

--conn skj/lion으로 접속해보기 exit로 나감

GRANT select
ON    hr.employees --hr이 가지고 있는 employees테이블에 접근할 수 있는 권한을
TO    skj;
--command line 에서 employees테이블 접근해보기

--권한뺏기
REVOKE select
ON     hr.employees
FROM   skj;

