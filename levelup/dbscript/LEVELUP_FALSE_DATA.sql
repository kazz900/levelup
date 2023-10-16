INSERT INTO RANK
VALUES(SYS_GUID(), '사원');

INSERT INTO TEAM
VALUES(SYS_GUID(), '백엔드팀');

INSERT INTO DEPARTMENT
VALUES(SYS_GUID(), '개발부');

insert into employee 
values(SYS_GUID(), 
(SELECT DEPARTMENT_ID FROM DEPARTMENT WHERE DEPARTMENT_NAME = '개발부'), 
(SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME = '백엔드팀'),  
(SELECT RANK_ID FROM RANK WHERE RANK_NAME = '사원'), 
'한창현', 
'test1@test.com', 
'1111', 
'서울', 
'010-1234-5678', 
SYSDATE);

insert into employee 
values(SYS_GUID(), 
(SELECT DEPARTMENT_ID FROM DEPARTMENT WHERE DEPARTMENT_NAME = '개발부'), 
(SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME = '백엔드팀'),  
(SELECT RANK_ID FROM RANK WHERE RANK_NAME = '사원'),  
'안태환', 
'test2@test.com', 
'1111', 
'서울', 
'010-1234-5678', 
SYSDATE);

insert into employee 
values(SYS_GUID(), 
(SELECT DEPARTMENT_ID FROM DEPARTMENT WHERE DEPARTMENT_NAME = '개발부'), 
(SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME = '백엔드팀'),  
(SELECT RANK_ID FROM RANK WHERE RANK_NAME = '사원'), 
'김지혁', 
'test3@test.com', 
'1111', 
'서울', 
'010-1234-5678', 
SYSDATE);

insert into employee 
values(SYS_GUID(), 
(SELECT DEPARTMENT_ID FROM DEPARTMENT WHERE DEPARTMENT_NAME = '개발부'), 
(SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME = '백엔드팀'),  
(SELECT RANK_ID FROM RANK WHERE RANK_NAME = '사원'),  
'오상민', 
'test@test.com', 
'1111', 
'서울', 
'010-1234-5678', 
SYSDATE);

insert into employee 
values(SYS_GUID(), 
(SELECT DEPARTMENT_ID FROM DEPARTMENT WHERE DEPARTMENT_NAME = '개발부'), 
(SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME = '백엔드팀'),  
(SELECT RANK_ID FROM RANK WHERE RANK_NAME = '사원'), 
'김화범', 
'kazz9000@gmail.com', 
'1111', 
'서울', 
'010-1234-5678', 
SYSDATE);

insert into employee 
values(SYS_GUID(), 
(SELECT DEPARTMENT_ID FROM DEPARTMENT WHERE DEPARTMENT_NAME = '개발부'), 
(SELECT TEAM_ID FROM TEAM WHERE TEAM_NAME = '백엔드팀'),  
(SELECT RANK_ID FROM RANK WHERE RANK_NAME = '사원'), 
'최유미', 
'test5@test.com', 
'1111', 
'서울', 
'010-1234-5678', 
SYSDATE);

UPDATE EMPLOYEE
SET employee_email = 'tatha000@naver.com'
WHERE EMPLOYEE_NAME = '안태환';

UPDATE EMPLOYEE
SET employee_email = 'kimjihyuk5935@gmail.com'
WHERE EMPLOYEE_NAME = '김지혁';

UPDATE EMPLOYEE
SET employee_email = 'osm1525@naver.com'
WHERE EMPLOYEE_NAME = '오상민';

UPDATE EMPLOYEE
SET employee_email = 'rarayo44@gmail.com'
WHERE EMPLOYEE_NAME = '최유미';

UPDATE EMPLOYEE
SET employee_email = 'zxcqwgks@kakao.com'
WHERE EMPLOYEE_NAME = '한창현';


COMMIT;