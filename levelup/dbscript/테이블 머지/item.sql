--------------------------------------------------------
--  파일이 생성됨 - 금요일-10월-20-2023   
--------------------------------------------------------
DROP TABLE "ITEM" cascade constraints;
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
   ) 

   COMMENT ON COLUMN "ITEM"."ITEM_ID" IS '아이템 ID'
   COMMENT ON COLUMN "ITEM"."ITEM_TYPE" IS '아이템종류'
   COMMENT ON COLUMN "ITEM"."ITEM_DATA" IS '아이템데이터'
   COMMENT ON TABLE "ITEM"  IS '아이템'
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
   ) 

   COMMENT ON COLUMN "ITEM"."ITEM_ID" IS '아이템 ID'
   COMMENT ON COLUMN "ITEM"."ITEM_TYPE" IS '아이템종류'
   COMMENT ON COLUMN "ITEM"."ITEM_DATA" IS '아이템데이터'
   COMMENT ON TABLE "ITEM"  IS '아이템'
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

  CREATE UNIQUE INDEX "PK_ITEM" ON "ITEM" ("ITEM_ID")
--------------------------------------------------------
--  Constraints for Table ITEM
--------------------------------------------------------

  ALTER TABLE "ITEM" MODIFY ("ITEM_NAME" NOT NULL ENABLE)
  ALTER TABLE "ITEM" MODIFY ("ITEM_ID" NOT NULL ENABLE)
  ALTER TABLE "ITEM" ADD CONSTRAINT "PK_ITEM" PRIMARY KEY ("ITEM_ID")
  USING INDEX  ENABLE
  ALTER TABLE "ITEM" MODIFY ("PRICE" NOT NULL ENABLE)
  ALTER TABLE "ITEM" MODIFY ("GAMEPRICE" NOT NULL ENABLE)
