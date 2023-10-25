
--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-20-2023   
--------------------------------------------------------
DROP TABLE "RANK" cascade constraints;
--------------------------------------------------------
--  DDL for Table RANK
--------------------------------------------------------

  CREATE TABLE "RANK" 
   (	"RANK_ID" VARCHAR2(32), 
	"RANK_NAME" VARCHAR2(32)
   ) ;

   COMMENT ON COLUMN "RANK"."RANK_ID" IS '직급 ID';
   COMMENT ON COLUMN "RANK"."RANK_NAME" IS '직급명';
   COMMENT ON TABLE "RANK"  IS '직급';
REM INSERTING into RANK
SET DEFINE OFF;
Insert into RANK (RANK_ID,RANK_NAME) values ('emp','사원');
Insert into RANK (RANK_ID,RANK_NAME) values ('intern','인턴');
Insert into RANK (RANK_ID,RANK_NAME) values ('chief','주임');
Insert into RANK (RANK_ID,RANK_NAME) values ('senior','대리');
Insert into RANK (RANK_ID,RANK_NAME) values ('jman','과장');
Insert into RANK (RANK_ID,RANK_NAME) values ('sman','차장');
Insert into RANK (RANK_ID,RANK_NAME) values ('jdirec','전무');
Insert into RANK (RANK_ID,RANK_NAME) values ('direc','이사');
Insert into RANK (RANK_ID,RANK_NAME) values ('ceo','CEO');
--------------------------------------------------------
--  DDL for Index PK_RANK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_RANK" ON "RANK" ("RANK_ID");
--------------------------------------------------------
--  Constraints for Table RANK
--------------------------------------------------------

  ALTER TABLE "RANK" MODIFY ("RANK_ID" NOT NULL ENABLE);
  ALTER TABLE "RANK" MODIFY ("RANK_NAME" NOT NULL ENABLE);
  ALTER TABLE "RANK" ADD CONSTRAINT "PK_RANK" PRIMARY KEY ("RANK_ID")
  USING INDEX  ENABLE;

--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-20-2023   
--------------------------------------------------------
DROP TABLE "DEPARTMENT" cascade constraints;
--------------------------------------------------------
--  DDL for Table DEPARTMENT
--------------------------------------------------------

  CREATE TABLE "DEPARTMENT" 
   (	"DEPARTMENT_ID" VARCHAR2(32), 
	"DEPARTMENT_NAME" VARCHAR2(32)
   ) ;

   COMMENT ON COLUMN "DEPARTMENT"."DEPARTMENT_ID" IS '부서 ID';
   COMMENT ON COLUMN "DEPARTMENT"."DEPARTMENT_NAME" IS '부서명';
   COMMENT ON TABLE "DEPARTMENT"  IS '부서';
REM INSERTING into DEPARTMENT
SET DEFINE OFF;
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values ('dev','개발부');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values ('marketing','영업부');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values ('trade','무역부');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values ('accounting','경리부');
Insert into DEPARTMENT (DEPARTMENT_ID,DEPARTMENT_NAME) values ('none','미정');
--------------------------------------------------------
--  DDL for Index PK_DEPARTMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_DEPARTMENT" ON "DEPARTMENT" ("DEPARTMENT_ID");
--------------------------------------------------------
--  Constraints for Table DEPARTMENT
--------------------------------------------------------

  ALTER TABLE "DEPARTMENT" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "DEPARTMENT" MODIFY ("DEPARTMENT_NAME" NOT NULL ENABLE);
  ALTER TABLE "DEPARTMENT" ADD CONSTRAINT "PK_DEPARTMENT" PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX  ENABLE;


--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-20-2023   
--------------------------------------------------------
DROP TABLE "TEAM" cascade constraints;
--------------------------------------------------------
--  DDL for Table TEAM
--------------------------------------------------------

  CREATE TABLE "TEAM" 
   (	"TEAM_ID" VARCHAR2(32), 
	"TEAM_NAME" VARCHAR2(32)
   ) ;

   COMMENT ON COLUMN "TEAM"."TEAM_ID" IS '팀 ID';
   COMMENT ON COLUMN "TEAM"."TEAM_NAME" IS '팀명';
   COMMENT ON TABLE "TEAM"  IS '팀';
REM INSERTING into TEAM
SET DEFINE OFF;
Insert into TEAM (TEAM_ID,TEAM_NAME) values ('backend','백엔드');
Insert into TEAM (TEAM_ID,TEAM_NAME) values ('webfront','프론트개발');
Insert into TEAM (TEAM_ID,TEAM_NAME) values ('anddev','안드로이드개발');
Insert into TEAM (TEAM_ID,TEAM_NAME) values ('iosdev','iOS개발');
Insert into TEAM (TEAM_ID,TEAM_NAME) values ('cs','고객서비스');
--------------------------------------------------------
--  DDL for Index PK_TEAM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_TEAM" ON "TEAM" ("TEAM_ID");
--------------------------------------------------------
--  Constraints for Table TEAM
--------------------------------------------------------

  ALTER TABLE "TEAM" MODIFY ("TEAM_ID" NOT NULL ENABLE);
  ALTER TABLE "TEAM" MODIFY ("TEAM_NAME" NOT NULL ENABLE);
  ALTER TABLE "TEAM" ADD CONSTRAINT "PK_TEAM" PRIMARY KEY ("TEAM_ID")
  USING INDEX  ENABLE;


--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-20-2023   
--------------------------------------------------------
DROP TABLE "ITEM" cascade constraints;
--------------------------------------------------------
--  DDL for Table ITEM
--------------------------------------------------------

  CREATE TABLE "ITEM" 
   (	"ITEM_ID" NUMBER, 
	"ITEM_TYPE" VARCHAR2(256), 
	"ITEM_DATA" VARCHAR2(4000), 
	"ITEM_NAME" VARCHAR2(256), 
	"PRICE" NUMBER, 
	"GAMEPRICE" NUMBER, 
	"DISCOUNT_RATE" NUMBER
   ) ;

   COMMENT ON COLUMN "ITEM"."ITEM_ID" IS '아이템 ID';
   COMMENT ON COLUMN "ITEM"."ITEM_TYPE" IS '아이템종류';
   COMMENT ON COLUMN "ITEM"."ITEM_DATA" IS '아이템데이터';
   COMMENT ON TABLE "ITEM"  IS '아이템';
REM INSERTING into ITEM
SET DEFINE OFF;
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (525,'HEALING',null,'Elixir Of Life',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (608,'HEALING',null,'Fertility Potion',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (613,'HEALING',null,'Purification Potion',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (614,'HEALING',null,'Sailor''s Stew',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (615,'HEALING',null,'Treasure Map',4500,45000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (625,'USABLE',null,'Seafood Plate',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (626,'USABLE',null,'Barbecue Plate',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (627,'USABLE',null,'Veggie Plate',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1000,'ARMOR',null,'Copper Necklace',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1001,'ARMOR',null,'Silver Necklace',2000,20000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1002,'ARMOR',null,'Gold Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1003,'ARMOR',null,'Platinum Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1004,'ARMOR',null,'Copper Four-Leaf Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1005,'ARMOR',null,'Silver Four-Leaf Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1006,'ARMOR',null,'Golden Four-Leaf Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1007,'ARMOR',null,'Platinum Four-Leaf Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1008,'ARMOR',null,'Tooth Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1009,'ARMOR',null,'Teeth Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1010,'ARMOR',null,'Barbarian Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1011,'ARMOR',null,'Heart Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1012,'ARMOR',null,'Mouboo Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1013,'ARMOR',null,'Skull Necklace',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1100,'ARMOR',null,'Simple Copper Ring',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1101,'ARMOR',null,'Simple Silver Ring',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1102,'ARMOR',null,'Simple Golden Ring',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1103,'ARMOR',null,'Simple Platinum Ring',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1104,'ARMOR',null,'Soul Ring',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1105,'ARMOR',null,'Copper Ring',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1106,'ARMOR',null,'Silver Ring',2000,20000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1107,'ARMOR',null,'Gold Ring',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1108,'ARMOR',null,'Platinum Ring',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1109,'ARMOR',null,'Copper Signet Ring',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1110,'ARMOR',null,'Silver Signet Ring',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1111,'ARMOR',null,'Gold Signet Ring',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1112,'ARMOR',null,'Platinum Signet Ring',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1200,'ARMOR',null,'Ancient Scroll',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1206,'ARMOR',null,'Flower Towel',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1307,'ARMOR',null,'Silk Robe',2900,35000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1309,'ARMOR',null,'Warlord Plate',7500,75000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1310,'ARMOR',null,'Legion''s Iron Armor',5500,55000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1311,'ARMOR',null,'Golden Warlord Plate',15000,150000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1322,'ARMOR',null,'Terranite Armor',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1802,'ARMOR',null,'Fur Boots',1200,12000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1803,'ARMOR',null,'Bandit Boots',1500,15000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1808,'ARMOR',null,'Warlord Boots',1200,12000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (1813,'ARMOR',null,'Golden Warlord Boots',11200,112000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2009,'ARMOR',null,'Silk Gloves',800,8000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2013,'ARMOR',null,'Mana Gloves',800,8000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2207,'ARMOR',null,'Assassin Pants',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2208,'ARMOR',null,'Chainmail Skirt',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2209,'ARMOR',null,'Pirate Shorts',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2210,'ARMOR',null,'Terranite Pants',1000,10000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2705,'ARMOR',null,'Blade Shield',500,5000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2706,'ARMOR',null,'Dragon Shield',500,5000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2908,'ARMOR',null,'Warlord Helmet',1350,13500,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2910,'ARMOR',null,'Pinkie Hat',1200,12600,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2911,'ARMOR',null,'Top Hat',5000,50000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2912,'ARMOR',null,'Bowler Hat',1700,17355,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2913,'ARMOR',null,'Fairy Hat',600,6300,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2914,'ARMOR',null,'Noh Mask',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2915,'ARMOR',null,'Rose Hat',1200,12000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2916,'ARMOR',null,'Bandit Hood',950,9560,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2918,'ARMOR',null,'Cat Ears',3500,37500,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2925,'ARMOR',null,'Bull Helmet',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2926,'ARMOR',null,'Bunny Ears',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2929,'ARMOR',null,'Silk Headband',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2933,'ARMOR',null,'Wizard Hat',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2934,'ARMOR',null,'Captain Hat',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2935,'ARMOR',null,'Ranger Hat',1500,15000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (2936,'ARMOR',null,'Knight Helmet',2500,25000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (3204,'ARMOR',null,'Heart Glasses',500,6500,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (3208,'ARMOR',null,'Beard',500,6500,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (3507,'WEAPON',null,'Scythe',10000,104800,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (3522,'WEAPON',null,'Long Sword',2000,20000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (3518,'WEAPON',null,'Cleaver',2000,20000,null);
Insert into ITEM (ITEM_ID,ITEM_TYPE,ITEM_DATA,ITEM_NAME,PRICE,GAMEPRICE,DISCOUNT_RATE) values (3509,'WEAPON',null,'Setzer',2000,20000,null);
--------------------------------------------------------
--  DDL for Index PK_ITEM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ITEM" ON "ITEM" ("ITEM_ID");
--------------------------------------------------------
--  Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "ITEM" MODIFY ("ITEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "ITEM" ADD CONSTRAINT "PK_ITEM" PRIMARY KEY ("ITEM_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "ITEM" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "ITEM" MODIFY ("GAMEPRICE" NOT NULL ENABLE);



--------------------------------------------------------
--  파일이 생성됨 - 월요일-10월-23-2023   
--------------------------------------------------------
DROP TABLE "EMPLOYEE" cascade constraints;
--------------------------------------------------------
--  DDL for Table EMPLOYEE
--------------------------------------------------------

  CREATE TABLE "EMPLOYEE" 
   (	"EMPLOYEE_ID" RAW(16) DEFAULT sys_guid(), 
	"DEPARTMENT_ID" VARCHAR2(32), 
	"TEAM_ID" VARCHAR2(32), 
	"RANK_ID" VARCHAR2(32), 
	"EMPLOYEE_NAME" VARCHAR2(100), 
	"EMPLOYEE_EMAIL" VARCHAR2(100), 
	"EMPLOYEE_PWD" VARCHAR2(100), 
	"EMPLOYEE_ADDRESS" VARCHAR2(1000), 
	"EMPLOYEE_PHONE" VARCHAR2(20), 
	"EMPLOYEE_BIRTHDATE" DATE, 
	"MANAGER_ID" RAW(16)
   ) ;

   COMMENT ON COLUMN "EMPLOYEE"."EMPLOYEE_ID" IS '사원 ID';
   COMMENT ON COLUMN "EMPLOYEE"."DEPARTMENT_ID" IS '부서 ID';
   COMMENT ON COLUMN "EMPLOYEE"."TEAM_ID" IS '팀 ID';
   COMMENT ON COLUMN "EMPLOYEE"."RANK_ID" IS '직급 ID';
   COMMENT ON COLUMN "EMPLOYEE"."EMPLOYEE_NAME" IS '이름';
   COMMENT ON COLUMN "EMPLOYEE"."EMPLOYEE_EMAIL" IS '이메일';
   COMMENT ON COLUMN "EMPLOYEE"."EMPLOYEE_PWD" IS '비밀번호';
   COMMENT ON COLUMN "EMPLOYEE"."EMPLOYEE_ADDRESS" IS '주소';
   COMMENT ON COLUMN "EMPLOYEE"."EMPLOYEE_PHONE" IS '전화번호';
   COMMENT ON COLUMN "EMPLOYEE"."EMPLOYEE_BIRTHDATE" IS '주민등록번호';
   COMMENT ON COLUMN "EMPLOYEE"."MANAGER_ID" IS '관리자 ID';
   COMMENT ON TABLE "EMPLOYEE"  IS '사원';
REM INSERTING into EMPLOYEE
SET DEFINE OFF;
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('E37B3B8A4FF54582A91A8DDBD0D64665','dev','backend','emp','안태환','tatha000@naver.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),null);
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('EFB0DB0DFACD4157AEA35C89493C8E00','dev','backend','emp','김지혁','kimjihyuk5935@gmail.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),null);
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('36689920139B4D40AE29A7D273A7B2AE','dev','backend','emp','오상민','osm1525@naver.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),null);
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('62D1E4B981A54F48BB21643C9D18F00B','dev','backend','emp','김화범','kazz9000@gmail.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),null);
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('60306CD091E142B08E1FAEC717AE435F','dev','backend','emp','최유미','rarayo44@gmail.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),null);
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('6B67DD76E5264FF6875E1F4C3D6100A8','dev','backend','sman','호랑이','admin1@admin.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),null);
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('368B441925894A31BE87654AE90A1949','dev','backend','emp','한창현','zxcqwgks@kakao.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),null);
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('7D633633196C4E95A43A9E0AE2390E8B','dev','backend','jman','피카츄','admin3@admin.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),'6B67DD76E5264FF6875E1F4C3D6100A8');
Insert into EMPLOYEE (EMPLOYEE_ID,DEPARTMENT_ID,TEAM_ID,RANK_ID,EMPLOYEE_NAME,EMPLOYEE_EMAIL,EMPLOYEE_PWD,EMPLOYEE_ADDRESS,EMPLOYEE_PHONE,EMPLOYEE_BIRTHDATE,MANAGER_ID) values ('4607A3F718DC4090B20177DC270676A1','dev','backend','senior','김대리','admin2@admin.com','1111','서울','010-1234-5678',to_date('23/10/20','RR/MM/DD'),'7D633633196C4E95A43A9E0AE2390E8B');
--------------------------------------------------------
--  DDL for Index PK_EMPLOYEE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_EMPLOYEE" ON "EMPLOYEE" ("EMPLOYEE_ID");
--------------------------------------------------------
--  DDL for Index UIX_EMPLOYEE
--------------------------------------------------------

  CREATE UNIQUE INDEX "UIX_EMPLOYEE" ON "EMPLOYEE" ("EMPLOYEE_EMAIL", "EMPLOYEE_PHONE");
--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("TEAM_ID" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("RANK_ID" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_NAME" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_PWD" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_PHONE" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" MODIFY ("EMPLOYEE_BIRTHDATE" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "PK_EMPLOYEE" PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "UK_EMPLOYEE" UNIQUE ("EMPLOYEE_EMAIL", "EMPLOYEE_PHONE")
  USING INDEX (CREATE UNIQUE INDEX "UIX_EMPLOYEE" ON "EMPLOYEE" ("EMPLOYEE_EMAIL", "EMPLOYEE_PHONE") 
  )  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "FK_TEAM_TO_EMPLOYEE" FOREIGN KEY ("TEAM_ID")
	  REFERENCES "TEAM" ("TEAM_ID") ENABLE;
  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "FK_DEPARTMENT_TO_EMPLOYEE" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "FK_RANK_TO_EMPLOYEE" FOREIGN KEY ("RANK_ID")
	  REFERENCES "RANK" ("RANK_ID") ENABLE;



--------------------------------------------------------
--  파일이 생성됨 - 월요일-10월-23-2023   
--------------------------------------------------------
DROP TABLE "NOTICE" cascade constraints;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"NOTICE_ID" RAW(16) DEFAULT sys_guid(), 
	"EMPLOYEE_ID" RAW(16) DEFAULT sys_guid(), 
	"DEPARTMENT_ID" VARCHAR2(32), 
	"TEAM_ID" VARCHAR2(32), 
	"NOTICE_TITLE" VARCHAR2(1000), 
	"NOTICE_CONTENT" VARCHAR2(4000), 
	"EDIT_DATE" DATE, 
	"ATTACHEMENT_FILENAME" VARCHAR2(1000), 
	"READ_COUNT" NUMBER DEFAULT 0, 
	"RENAME_FILENAME" VARCHAR2(1000)
   ) ;

   COMMENT ON COLUMN "NOTICE"."NOTICE_ID" IS '공지사항 ID';
   COMMENT ON COLUMN "NOTICE"."EMPLOYEE_ID" IS '작성자 ID';
   COMMENT ON COLUMN "NOTICE"."DEPARTMENT_ID" IS '부서 ID';
   COMMENT ON COLUMN "NOTICE"."TEAM_ID" IS '팀 ID';
   COMMENT ON COLUMN "NOTICE"."NOTICE_TITLE" IS '제목';
   COMMENT ON COLUMN "NOTICE"."NOTICE_CONTENT" IS '본문';
   COMMENT ON COLUMN "NOTICE"."EDIT_DATE" IS '날짜';
   COMMENT ON COLUMN "NOTICE"."ATTACHEMENT_FILENAME" IS '첨부파일';
   COMMENT ON COLUMN "NOTICE"."READ_COUNT" IS '조회수';
   COMMENT ON COLUMN "NOTICE"."RENAME_FILENAME" IS '변경첨부파일명';
   COMMENT ON TABLE "NOTICE"  IS '공지사항';

--------------------------------------------------------
--  DDL for Index PK_NOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_NOTICE" ON "NOTICE" ("NOTICE_ID");
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" MODIFY ("NOTICE_ID" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("EDIT_DATE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("READ_COUNT" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY ("NOTICE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------;
--  Ref Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_EMPLOYEE_TO_NOTICE" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_DEPARTMENT_TO_NOTICE" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "NOTICE" ADD CONSTRAINT "FK_TEAM_TO_NOTICE" FOREIGN KEY ("TEAM_ID")
	  REFERENCES "TEAM" ("TEAM_ID") ENABLE;




--------------------------------------------------------
--  파일이 생성됨 - 월요일-10월-23-2023   
--------------------------------------------------------
DROP TABLE "COMMUNITY" cascade constraints;
--------------------------------------------------------
--  DDL for Table COMMUNITY
--------------------------------------------------------

  CREATE TABLE "COMMUNITY" 
   (	"BOARD_ID" RAW(16) DEFAULT sys_guid(), 
	"DEPARTMENT_ID" VARCHAR2(32), 
	"EMPLOYEE_ID" RAW(16) DEFAULT sys_guid(), 
	"BOARD_TITLE" VARCHAR2(4000), 
	"BOARD_DATE" DATE DEFAULT sysdate, 
	"ATTACHEMENT_FILENAME" VARCHAR2(1000), 
	"BOARD_TYPE" VARCHAR2(1) DEFAULT 'b', 
	"READ_COUNT" NUMBER, 
	"REF_ID" RAW(16), 
	"BOARD_BODY" CLOB, 
	"TEAM_ID" VARCHAR2(32), 
	"REFYN" VARCHAR2(1) DEFAULT 'n', 
	"DELYN" VARCHAR2(1) DEFAULT 'n'
   ) ;

   COMMENT ON COLUMN "COMMUNITY"."BOARD_ID" IS '게시글 ID';
   COMMENT ON COLUMN "COMMUNITY"."DEPARTMENT_ID" IS '부서 ID';
   COMMENT ON COLUMN "COMMUNITY"."EMPLOYEE_ID" IS '작성자 ID';
   COMMENT ON COLUMN "COMMUNITY"."BOARD_TITLE" IS '제목';
   COMMENT ON COLUMN "COMMUNITY"."BOARD_DATE" IS '날짜';
   COMMENT ON COLUMN "COMMUNITY"."ATTACHEMENT_FILENAME" IS '첨부파일';
   COMMENT ON COLUMN "COMMUNITY"."BOARD_TYPE" IS '게시판 분류';
   COMMENT ON COLUMN "COMMUNITY"."READ_COUNT" IS '조회수';
   COMMENT ON COLUMN "COMMUNITY"."REF_ID" IS '원글 레퍼런스';
   COMMENT ON COLUMN "COMMUNITY"."BOARD_BODY" IS '본문(clob)';
   COMMENT ON TABLE "COMMUNITY"  IS '게시글';
--------------------------------------------------------
--  DDL for Index PK_COMMUNITY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COMMUNITY" ON "COMMUNITY" ("BOARD_ID");
--------------------------------------------------------
--  Constraints for Table COMMUNITY
--------------------------------------------------------

  ALTER TABLE "COMMUNITY" MODIFY ("BOARD_ID" NOT NULL ENABLE);
  ALTER TABLE "COMMUNITY" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "COMMUNITY" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
  ALTER TABLE "COMMUNITY" MODIFY ("BOARD_TITLE" NOT NULL ENABLE);
  ALTER TABLE "COMMUNITY" MODIFY ("BOARD_DATE" NOT NULL ENABLE);
  ALTER TABLE "COMMUNITY" MODIFY ("BOARD_TYPE" NOT NULL ENABLE);
  ALTER TABLE "COMMUNITY" MODIFY ("READ_COUNT" NOT NULL ENABLE);
  ALTER TABLE "COMMUNITY" ADD CONSTRAINT "PK_COMMUNITY" PRIMARY KEY ("BOARD_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "COMMUNITY" MODIFY ("REFYN" NOT NULL ENABLE);
  ALTER TABLE "COMMUNITY" MODIFY ("DELYN" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table COMMUNITY
--------------------------------------------------------

  ALTER TABLE "COMMUNITY" ADD CONSTRAINT "FK_EMPLOYEE_TO_COMMUNITY" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "COMMUNITY" ADD CONSTRAINT "FK_DEPARTMENT_TO_COMMUNITY" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "DEPARTMENT" ("DEPARTMENT_ID") ENABLE;
  ALTER TABLE "COMMUNITY" ADD FOREIGN KEY ("REF_ID")
	  REFERENCES "COMMUNITY" ("BOARD_ID") ENABLE;
  ALTER TABLE "COMMUNITY" ADD FOREIGN KEY ("TEAM_ID")
	  REFERENCES "TEAM" ("TEAM_ID") ENABLE;



--------------------------------------------------------
--  파일이 생성됨 - 월요일-10월-23-2023   
--------------------------------------------------------
DROP TABLE "PAYMENT" cascade constraints;
--------------------------------------------------------
--  DDL for Table PAYMENT
--------------------------------------------------------

  CREATE TABLE "PAYMENT" 
   (	"PAYMENT_ID" RAW(16) DEFAULT sys_guid(), 
	"ITEM_ID" NUMBER, 
	"CHAR_ID" NUMBER, 
	"ACCOUNT_ID" NUMBER, 
	"AMOUNT" NUMBER, 
	"PAYMENT_DATE" DATE DEFAULT SYSDATE, 
	"PAYMENT_STATUS" VARCHAR2(50) DEFAULT NULL, 
	"REFUND_DATE" DATE, 
	"REFUND_CAUSE" VARCHAR2(1000), 
	"CHAR_NAME" VARCHAR2(30), 
	"PAYMENT_KEY" VARCHAR2(50), 
	"UNIQUE_ID" NUMBER, 
	"EMAIL_STATUS" VARCHAR2(1) DEFAULT 'N'
   ) ;

   COMMENT ON COLUMN "PAYMENT"."PAYMENT_ID" IS '결제 ID';
   COMMENT ON COLUMN "PAYMENT"."ITEM_ID" IS '아이템 ID';
   COMMENT ON COLUMN "PAYMENT"."CHAR_ID" IS '캐릭터 ID';
   COMMENT ON COLUMN "PAYMENT"."ACCOUNT_ID" IS '유저 ID';
   COMMENT ON COLUMN "PAYMENT"."AMOUNT" IS '가격';
   COMMENT ON COLUMN "PAYMENT"."PAYMENT_DATE" IS '결제 시간';
   COMMENT ON COLUMN "PAYMENT"."PAYMENT_STATUS" IS '결제 상태';
   COMMENT ON COLUMN "PAYMENT"."REFUND_DATE" IS '환불 날짜';
   COMMENT ON COLUMN "PAYMENT"."REFUND_CAUSE" IS '환불 사유';
   COMMENT ON COLUMN "PAYMENT"."CHAR_NAME" IS '캐릭터이름';
   COMMENT ON COLUMN "PAYMENT"."PAYMENT_KEY" IS '페이먼트키';
   COMMENT ON COLUMN "PAYMENT"."UNIQUE_ID" IS '아이템고유번호';
   COMMENT ON COLUMN "PAYMENT"."EMAIL_STATUS" IS '이메일확인상태(Y or N)';
   COMMENT ON TABLE "PAYMENT"  IS '유저 결제 내역';
--------------------------------------------------------
--  DDL for Index PK_PAYMENT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PAYMENT" ON "PAYMENT" ("PAYMENT_ID");
--------------------------------------------------------
--  Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "PAYMENT" MODIFY ("CHAR_ID" NOT NULL ENABLE);
  ALTER TABLE "PAYMENT" MODIFY ("ACCOUNT_ID" NOT NULL ENABLE);
  ALTER TABLE "PAYMENT" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "PAYMENT" MODIFY ("PAYMENT_DATE" NOT NULL ENABLE);
  ALTER TABLE "PAYMENT" MODIFY ("UNIQUE_ID" NOT NULL ENABLE);
  ALTER TABLE "PAYMENT" ADD CONSTRAINT "PK_PAYMENT" PRIMARY KEY ("PAYMENT_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "PAYMENT" MODIFY ("EMAIL_STATUS" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table PAYMENT
--------------------------------------------------------

  ALTER TABLE "PAYMENT" ADD CONSTRAINT "FK_ITEM_TO_PAYMENT" FOREIGN KEY ("ITEM_ID")
	  REFERENCES "ITEM" ("ITEM_ID") ENABLE;



--------------------------------------------------------
--  파일이 생성됨 - 월요일-10월-23-2023   
--------------------------------------------------------
DROP TABLE "CASE" cascade constraints;
--------------------------------------------------------
--  DDL for Table CASE
--------------------------------------------------------

  CREATE TABLE "CASE" 
   (	"CASE_ID" RAW(16) DEFAULT SYS_GUID(), 
	"CASE_TITLE" VARCHAR2(100), 
	"CASE_CONTENT" VARCHAR2(4000), 
	"CASE_WRITER_ID" RAW(16), 
	"CASE_WRITER_NAME" VARCHAR2(100), 
	"CASE_TYPE" VARCHAR2(1), 
	"CASE_MANAGER_ID" RAW(16), 
	"CASE_MANAGER_NAME" VARCHAR2(100), 
	"CASE_STATUS" VARCHAR2(1) DEFAULT '0', 
	"EDIT_DATE" DATE DEFAULT SYSDATE, 
	"SIGN_DATE" DATE DEFAULT NULL, 
	"ATTACHMENT_FILENAME" VARCHAR2(1000), 
	"CHAR_ID" NUMBER, 
	"CHAR_NAME" VARCHAR2(30), 
	"ACCOUNT_ID" NUMBER, 
	"ORIGINAL_ITEM_ID" NUMBER, 
	"ORIGINAL_ITEM_NAME" VARCHAR2(300), 
	"ORIGINAL_ITEM_AMOUNT" NUMBER, 
	"UNIQUE_ID" NUMBER, 
	"NEW_ITEM_ID" NUMBER, 
	"NEW_ITEM_NAME" VARCHAR2(300), 
	"NEW_ITEM_AMOUNT" NUMBER, 
	"PAYMENT_DATE" DATE DEFAULT NULL, 
	"PAYMENT_STATUS" VARCHAR2(1), 
	"PAYMENT_AMOUNT" NUMBER, 
	"REFUND_DATE" DATE DEFAULT NULL, 
	"REFUND_CAUSE" VARCHAR2(1000), 
	"PAYMENT_KEY" VARCHAR2(50)
   );
REM INSERTING into CASE
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C009833
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C009833" ON "CASE" ("CASE_ID");
--------------------------------------------------------
--  Constraints for Table CASE
--------------------------------------------------------

  ALTER TABLE "CASE" MODIFY ("CASE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CASE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CASE_WRITER_ID" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CASE_WRITER_NAME" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CASE_TYPE" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CASE_MANAGER_ID" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CASE_MANAGER_NAME" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CASE_STATUS" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("EDIT_DATE" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CHAR_ID" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("CHAR_NAME" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("ACCOUNT_ID" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("ORIGINAL_ITEM_ID" NOT NULL ENABLE);
  ALTER TABLE "CASE" MODIFY ("ORIGINAL_ITEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "CASE" ADD PRIMARY KEY ("CASE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CASE
--------------------------------------------------------

  ALTER TABLE CASE ADD FOREIGN KEY (CASE_WRITER_ID)
	  REFERENCES EMPLOYEE (EMPLOYEE_ID) ENABLE;
  ALTER TABLE "CASE" ADD FOREIGN KEY ("CASE_MANAGER_ID")
	  REFERENCES "EMPLOYEE" ("EMPLOYEE_ID") ENABLE;



--------------------------------------------------------
--  파일이 생성됨 - 월요일-10월-23-2023   
--------------------------------------------------------
DROP TABLE "INQUIRY" cascade constraints;
--------------------------------------------------------
--  DDL for Table INQUIRY
--------------------------------------------------------

  CREATE TABLE "INQUIRY" 
   (	"INQUIRY_ID" RAW(16) DEFAULT sys_guid(), 
	"USERID" VARCHAR2(23), 
	"EMPLOYEE_ID" RAW(16), 
	"INQUIRY_TITLE" VARCHAR2(50), 
	"INQUIRY_CONTENT" VARCHAR2(1000), 
	"ANSWER_STATUS" VARCHAR2(1) DEFAULT 'N', 
	"EDIT_DATE" DATE, 
	"ANSWER_DATE" DATE, 
	"ANSWER_CONTENT" VARCHAR2(1000), 
	"ATTACHEMENT_FILENAME" VARCHAR2(50), 
	"INQUIRY_TYPE" VARCHAR2(1), 
	"EMP_NAME" VARCHAR2(30) DEFAULT NULL, 
	"MODIFY_DATE" DATE DEFAULT NULL
   ) ;

   COMMENT ON COLUMN "INQUIRY"."INQUIRY_ID" IS '문의 ID';
   COMMENT ON COLUMN "INQUIRY"."USERID" IS '유저 ID';
   COMMENT ON COLUMN "INQUIRY"."EMPLOYEE_ID" IS '사원 ID';
   COMMENT ON COLUMN "INQUIRY"."INQUIRY_TITLE" IS '문의 제목';
   COMMENT ON COLUMN "INQUIRY"."INQUIRY_CONTENT" IS '문의 내용';
   COMMENT ON COLUMN "INQUIRY"."ANSWER_STATUS" IS '답변여부(Y or N)';
   COMMENT ON COLUMN "INQUIRY"."EDIT_DATE" IS '문의작성날짜';
   COMMENT ON COLUMN "INQUIRY"."ANSWER_DATE" IS '문의답변날짜';
   COMMENT ON COLUMN "INQUIRY"."ANSWER_CONTENT" IS '문의답변내용';
   COMMENT ON COLUMN "INQUIRY"."ATTACHEMENT_FILENAME" IS '첨부파일';
   COMMENT ON COLUMN "INQUIRY"."INQUIRY_TYPE" IS '문의종류';
   COMMENT ON COLUMN "INQUIRY"."EMP_NAME" IS '문의 답변 사원 이름';
   COMMENT ON TABLE "INQUIRY"  IS '유저 문의';
--------------------------------------------------------
--  DDL for Index PK_INQUIRY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_INQUIRY" ON "INQUIRY" ("INQUIRY_ID");
--------------------------------------------------------
--  Constraints for Table INQUIRY
--------------------------------------------------------

  ALTER TABLE "INQUIRY" MODIFY ("INQUIRY_TITLE" NOT NULL ENABLE);
  ALTER TABLE "INQUIRY" MODIFY ("INQUIRY_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "INQUIRY" MODIFY ("ANSWER_STATUS" NOT NULL ENABLE);
  ALTER TABLE "INQUIRY" MODIFY ("EDIT_DATE" NOT NULL ENABLE);
  ALTER TABLE "INQUIRY" MODIFY ("INQUIRY_TYPE" NOT NULL ENABLE);
  ALTER TABLE "INQUIRY" ADD CONSTRAINT "PK_INQUIRY" PRIMARY KEY ("INQUIRY_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "INQUIRY" MODIFY ("INQUIRY_ID" NOT NULL ENABLE);
  ALTER TABLE "INQUIRY" MODIFY ("USERID" NOT NULL ENABLE);


/* 일정 */
DROP TABLE SCHEDULE 
	CASCADE CONSTRAINTS;


/* 일정 */
CREATE TABLE SCHEDULE (
	SCHEDULE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 일정ID */
	EMPLOYEE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 사원 ID */
	DEPARTMENT_ID VARCHAR2(32), /* 부서 ID */
	TEAM_ID VARCHAR2(32), /* 팀 ID */
	RANK_ID VARCHAR2(32) NOT NULL, /* 직급 ID */
	SCHEDULE_STARTDAY DATE NOT NULL, /* 시작날짜 */
	SCHEDULE_ENDDAY DATE NOT NULL, /* 끝날짜 */
	SCHEDULE_TYPE VARCHAR2(32) NOT NULL, /* 구분 */
	SCHEDULE_ADDRESS VARCHAR2(1000), /* 장소 */
	SCHEDULE_THEME VARCHAR2(1000) NOT NULL, /* 주제 */
	SCHEDULE_CONTENT VARCHAR2(4000) NOT NULL /* 내용 */
);

COMMENT ON TABLE SCHEDULE IS '일정';

COMMENT ON COLUMN SCHEDULE.SCHEDULE_ID IS '일정ID';

COMMENT ON COLUMN SCHEDULE.EMPLOYEE_ID IS '사원 ID';

COMMENT ON COLUMN SCHEDULE.DEPARTMENT_ID IS '부서 ID';

COMMENT ON COLUMN SCHEDULE.TEAM_ID IS '팀 ID';

COMMENT ON COLUMN SCHEDULE.RANK_ID IS '직급 ID';

COMMENT ON COLUMN SCHEDULE.SCHEDULE_STARTDAY IS '시작날짜';

COMMENT ON COLUMN SCHEDULE.SCHEDULE_ENDDAY IS '끝날짜';

COMMENT ON COLUMN SCHEDULE.SCHEDULE_TYPE IS '구분';

COMMENT ON COLUMN SCHEDULE.SCHEDULE_ADDRESS IS '장소';

COMMENT ON COLUMN SCHEDULE.SCHEDULE_THEME IS '주제';

COMMENT ON COLUMN SCHEDULE.SCHEDULE_CONTENT IS '내용';

CREATE UNIQUE INDEX PK_SCHEDULE
	ON SCHEDULE (
		SCHEDULE_ID ASC
	);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT PK_SCHEDULE
		PRIMARY KEY (
			SCHEDULE_ID
		);


ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_EMPLOYEE_TO_SCHEDULE
		FOREIGN KEY (
			EMPLOYEE_ID
		)
		REFERENCES EMPLOYEE (
			EMPLOYEE_ID
		);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_DEPARTMENT_TO_SCHEDULE
		FOREIGN KEY (
			DEPARTMENT_ID
		)
		REFERENCES DEPARTMENT (
			DEPARTMENT_ID
		);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_TEAM_TO_SCHEDULE
		FOREIGN KEY (
			TEAM_ID
		)
		REFERENCES TEAM (
			TEAM_ID
		);

ALTER TABLE SCHEDULE
	ADD
		CONSTRAINT FK_RANK_TO_SCHEDULE
		FOREIGN KEY (
			RANK_ID
		)
		REFERENCES RANK (
			RANK_ID
		);


