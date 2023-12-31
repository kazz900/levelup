--------------------------------------------------------
--  파일이 생성됨 - 목요일-10월-26-2023   
--------------------------------------------------------
DROP TABLE "SCHEDULE" cascade constraints;
--------------------------------------------------------
--  DDL for Table SCHEDULE
--------------------------------------------------------

  CREATE TABLE "SCHEDULE" 
   (	"SCHEDULE_ID" RAW(16) DEFAULT sys_guid(), 
	"EMPLOYEE_ID" RAW(16) DEFAULT sys_guid(), 
	"DEPARTMENT_ID" VARCHAR2(32), 
	"TEAM_ID" VARCHAR2(32), 
	"RANK_ID" VARCHAR2(32), 
	"SCHEDULE_STARTDAY" DATE, 
	"SCHEDULE_ENDDAY" DATE, 
	"SCHEDULE_TYPE" VARCHAR2(32), 
	"SCHEDULE_ADDRESS" VARCHAR2(1000), 
	"SCHEDULE_THEME" VARCHAR2(1000), 
	"SCHEDULE_CONTENT" VARCHAR2(4000), 
	"READ" VARCHAR2(25)
   ) ;

   COMMENT ON COLUMN "SCHEDULE"."SCHEDULE_ID" IS '일정ID';
   COMMENT ON COLUMN "SCHEDULE"."EMPLOYEE_ID" IS '사원 ID';
   COMMENT ON COLUMN "SCHEDULE"."DEPARTMENT_ID" IS '부서 ID';
   COMMENT ON COLUMN "SCHEDULE"."TEAM_ID" IS '팀 ID';
   COMMENT ON COLUMN "SCHEDULE"."RANK_ID" IS '직급 ID';
   COMMENT ON COLUMN "SCHEDULE"."SCHEDULE_STARTDAY" IS '시작날짜';
   COMMENT ON COLUMN "SCHEDULE"."SCHEDULE_ENDDAY" IS '끝날짜';
   COMMENT ON COLUMN "SCHEDULE"."SCHEDULE_TYPE" IS '구분';
   COMMENT ON COLUMN "SCHEDULE"."SCHEDULE_THEME" IS '주제';
   COMMENT ON COLUMN "SCHEDULE"."SCHEDULE_CONTENT" IS '내용';
   COMMENT ON TABLE "SCHEDULE"  IS '일정';
REM INSERTING into SCHEDULE
SET DEFINE OFF;
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('A907AFC25B5943E380FB21563A0066B8',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/16','RR/MM/DD'),to_date('23/10/17','RR/MM/DD'),'1',null,'25','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('CE565FA81C0F41538A6DE5A568D00E40',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/11','RR/MM/DD'),to_date('23/10/14','RR/MM/DD'),'1',null,'31234','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('211E06F5C9CB4A1AB451FA7E4B729044',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/16','RR/MM/DD'),to_date('23/10/19','RR/MM/DD'),'1',null,'1325','true',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('47BA95F061C749358A9FD866D7B0B3D8',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/17','RR/MM/DD'),to_date('23/10/20','RR/MM/DD'),'3',null,'팀 일정32323','true',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('BD9FE264BA9B4A40A627D5649E1718FD',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/25','RR/MM/DD'),to_date('23/10/25','RR/MM/DD'),'1','time','224','false','1');
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('3E96686B0F9B4C7C803A4E0F0E904A01',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/25','RR/MM/DD'),to_date('23/10/25','RR/MM/DD'),'1','time','3124','false','1');
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('2E57DB52541F4EF8AD079907BFFA79D6',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/26','RR/MM/DD'),to_date('23/10/26','RR/MM/DD'),'1',null,'21342424','false','1');
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('6CD85F3A432F48F184767E4E1B607281',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/11/07','RR/MM/DD'),to_date('23/11/07','RR/MM/DD'),'1',null,'11월 수정전','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('82391153E7B14A7F8737C04C0A8F0209',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/11/13','RR/MM/DD'),to_date('23/11/13','RR/MM/DD'),'1',null,'1234','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('C14559FCB1C34EBC8A5D4225FD4BB0F2',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','sman',to_date('23/10/25','RR/MM/DD'),to_date('23/10/25','RR/MM/DD'),'1','time','123','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('E2DFFC04A0A346AEA02E92877E84116C',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/26','RR/MM/DD'),to_date('23/10/26','RR/MM/DD'),'1',null,'1234','false','1');
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('D462902C78FD4C788DA9BD55B34105C8',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/31','RR/MM/DD'),to_date('23/10/31','RR/MM/DD'),'4',null,'수정 전','true',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('72F2B8C29000478993C5D3DE5D1318AD',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/02','RR/MM/DD'),to_date('23/10/05','RR/MM/DD'),'1',null,'25623','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('088660BBDA6E4D848FC2A30085726CFB',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/03','RR/MM/DD'),to_date('23/10/03','RR/MM/DD'),'1',null,'일정 추가','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('87D03FA5F2C14586B7E1B6ED54BBB3F0',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/01','RR/MM/DD'),to_date('23/10/01','RR/MM/DD'),'1',null,'32125','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('D9DD6A1908CC4FA1A324258F793CB584',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/09','RR/MM/DD'),to_date('23/10/09','RR/MM/DD'),'1','time','가장 최근에 추가한 일정 올데이','true',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('D172D390E08249EF9D30B039E91F0204',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/10','RR/MM/DD'),to_date('23/10/10','RR/MM/DD'),'1','time','가장 최근에 추가한 일정','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('FF616288EC8245089CB26CAB3D7FEC2B',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/08','RR/MM/DD'),to_date('23/10/08','RR/MM/DD'),'1','time','가장 최근','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('F6EA7184ED5F40FEA2FB44C4379F614D',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/15','RR/MM/DD'),to_date('23/10/15','RR/MM/DD'),'1','time','ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('DE25E77166C5462CBE4BE816C6637673',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','sman',to_date('23/10/03','RR/MM/DD'),to_date('23/10/03','RR/MM/DD'),'1',null,'312','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('645C2775C9A8451780A3B8B3F0FA3D02',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','sman',to_date('23/10/04','RR/MM/DD'),to_date('23/10/04','RR/MM/DD'),'2',null,'호랑이 일정(부서)','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('3D37BBC4080B4A70A7D96369E3241E9C',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','sman',to_date('23/10/05','RR/MM/DD'),to_date('23/10/05','RR/MM/DD'),'3',null,'호랑이 일정(팀)','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('D573E37BD4A6423BAC1F6180A28327B3',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/10/27','RR/MM/DD'),to_date('23/10/27','RR/MM/DD'),'2',null,'부서회식(오상민)','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('9124520A65C74713AEDD0223CD6CA23C',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','emp',to_date('23/11/03','RR/MM/DD'),to_date('23/11/03','RR/MM/DD'),'3',null,'팀 회식(오상민)','false',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('662F95E63808436F84E728829E279F68',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','sman',to_date('23/10/10','RR/MM/DD'),to_date('23/10/12','RR/MM/DD'),'1',null,'23','true',null);
Insert into SCHEDULE (SCHEDULE_ID,EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,SCHEDULE_STARTDAY,SCHEDULE_ENDDAY,SCHEDULE_TYPE,SCHEDULE_ADDRESS,SCHEDULE_THEME,SCHEDULE_CONTENT,READ) values ('1F920DF0C8234297A1C1D1E01D314C67',(SELECT Employee_Id from employee ORDER BY dbms_random.value) where rownum=1),'dev','backend','sman',to_date('23/10/05','RR/MM/DD'),to_date('23/10/07','RR/MM/DD'),'3',null,'12','true',null);
--------------------------------------------------------
--  DDL for Index PK_SCHEDULE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SCHEDULE" ON "SCHEDULE" ("SCHEDULE_ID") 
  ;
--------------------------------------------------------
--  Constraints for Table SCHEDULE
--------------------------------------------------------

  ALTER TABLE "SCHEDULE" MODIFY ("SCHEDULE_ID" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("RANK_ID" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("SCHEDULE_STARTDAY" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("SCHEDULE_ENDDAY" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("SCHEDULE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("SCHEDULE_THEME" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" MODIFY ("SCHEDULE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "SCHEDULE" ADD CONSTRAINT "PK_SCHEDULE" PRIMARY KEY ("SCHEDULE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SCHEDULE
--------------------------------------------------------

  ALTER TABLE "SCHEDULE" ADD CONSTRAINT "FK_EMPLOYEE_TO_SCHEDULE" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "SCHEDULE" ADD CONSTRAINT "FK_DEPARTMENT_TO_SCHEDULE" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "SCHEDULE" ADD CONSTRAINT "FK_TEAM_TO_SCHEDULE" FOREIGN KEY ("TEAM_ID")
	  REFERENCES "TEAM" ("TEAM_ID") ENABLE;
  ALTER TABLE "SCHEDULE" ADD CONSTRAINT "FK_RANK_TO_SCHEDULE" FOREIGN KEY ("RANK_ID")
	  REFERENCES "RANK" ("RANK_ID") ENABLE;
