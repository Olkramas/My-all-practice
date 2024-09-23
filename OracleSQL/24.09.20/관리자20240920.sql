CREATE USER skj
IDENTIFIED BY test;


--������ �� �ִ� �����ֱ�
GRANT create session
TO    skj;

GRANT create session,
      create table,
      create view
To    skj;

REVOKE create table,
       create view
FROM   skj;

--��й�ȣ ����
ALTER USER skj
IDENTIFIED BY lion;

--�ٱ��� �����(��)
CREATE ROLE manager;

GRANT create session,
      create table,
      create view
TO    manager;

--�ٱ��� skj���� �ֱ�
GRANT manager
TO    skj;

DROP ROLE manager;

--conn skj/lion���� �����غ��� exit�� ����

GRANT select
ON    hr.employees --hr�� ������ �ִ� employees���̺� ������ �� �ִ� ������
TO    skj;
--command line ���� employees���̺� �����غ���

--���ѻ���
REVOKE select
ON     hr.employees
FROM   skj;

