DROP TABLE CASE_ITEM_CHANGE CASCADE CONSTRAINTS;
DROP TABLE CASE_ITEM_DELETE CASCADE CONSTRAINTS;
DROP TABLE CASE_ITEM_REFUND CASCADE CONSTRAINTS;

CREATE TABLE CASE (
  CASE_ID RAW(16) DEFAULT SYS_GUID() PRIMARY KEY,
  CASE_TITLE VARCHAR2(100) NOT NULL, 
  CASE_CONTENT VARCHAR2(4000) NOT NULL, 
  CASE_WRITER_ID RAW(16) NOT NULL,
  CASE_WRITER_NAME VARCHAR2(100) NOT NULL,
  CASE_TYPE VARCHAR2(1) NOT NULL,
  CASE_MANAGER_ID RAW(16) NOT NULL,
  CASE_MANAGER_NAME VARCHAR2(100) NOT NULL,
  CASE_STATUS VARCHAR2(1) DEFAULT '0' NOT NULL,
  EDIT_DATE DATE DEFAULT SYSDATE NOT NULL,
  SIGN_DATE DATE DEFAULT NULL,
  ATTACHMENT_FILENAME VARCHAR2(1000),
  CHAR_ID NUMBER NOT NULL,
  CHAR_NAME VARCHAR2(30) NOT NULL,
  ACCOUNT_ID NUMBER NOT NULL,
  ORIGINAL_ITEM_ID NUMBER NOT NULL,
  ORIGINAL_ITEM_NAME VARCHAR2(300) NOT NULL,
  ORIGINAL_ITEM_AMOUNT NUMBER,
  UNIQUE_ID NUMBER,
  NEW_ITEM_ID NUMBER,
  NEW_ITEM_NAME VARCHAR2(300),
  NEW_ITEM_AMOUNT NUMBER,
  PAYMENT_DATE DATE DEFAULT NULL,
  PAYMENT_STATUS VARCHAR2(1),
  PAYMENT_AMOUNT NUMBER,
  REFUND_DATE DATE DEFAULT NULL,
  REFUND_CAUSE VARCHAR2(1000),
  PAYMENT_KEY VARCHAR2(50),
  FOREIGN KEY (CASE_WRITER_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID),
  FOREIGN KEY (CASE_MANAGER_ID) REFERENCES EMPLOYEE(EMPLOYEE_ID));