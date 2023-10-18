/* 아이템 변경 기안 */
DROP TABLE CASE_ITEM_CHANGE 
	CASCADE CONSTRAINTS;

/* 아이템 삭제 기안 */
DROP TABLE CASE_ITEM_DELETE 
	CASCADE CONSTRAINTS;

/* 아이템 환불 기안 */
DROP TABLE CASE_ITEM_REFUND 
	CASCADE CONSTRAINTS;

/* 게시글 */
DROP TABLE COMMUNITY 
	CASCADE CONSTRAINTS;

/* 부서 */
DROP TABLE DEPARTMENT 
	CASCADE CONSTRAINTS;

/* 사원 */
DROP TABLE EMPLOYEE 
	CASCADE CONSTRAINTS;

/* 아이템 */
DROP TABLE ITEM 
	CASCADE CONSTRAINTS;

/* 공지사항 */
DROP TABLE NOTICE 
	CASCADE CONSTRAINTS;

/* 유저 결제 내역 */
DROP TABLE PAYMENT 
	CASCADE CONSTRAINTS;

/* 직급 */
DROP TABLE RANK 
	CASCADE CONSTRAINTS;

/* 일정 */
DROP TABLE SCHEDULE 
	CASCADE CONSTRAINTS;

/* 팀 */
DROP TABLE TEAM 
	CASCADE CONSTRAINTS;

/* 아이템 변경 기안 */
CREATE TABLE CASE_ITEM_CHANGE (
	DOCUMENT_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 기안ID */
	USERID NUMBER NOT NULL, /* 유저 ID */
	ITEM_ID NUMBER, /* 아이템 ID */
	CHAR_ID NUMBER NOT NULL, /* 캐릭터 ID */
	EMPLOYEE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 사원 ID */
	REPLACE_ITEM_ID NUMBER NOT NULL, /* 변경된 아이템 ID */
	REPLACE_ITEM_NO NUMBER NOT NULL, /* 변경될 갯수 */
	DOCUMENET_TITLE VARCHAR2(1000) NOT NULL, /* 기안 제목 */
	DOCUMENET_CONTENT VARCHAR2(4000) NOT NULL, /* 기안 내용 */
	ATTACHEMENT_FILENAME VARCHAR2(1000), /* 첨부 파일 */
	EDIT_DATE DATE NOT NULL, /* 기안 작성일 */
	SIGN_DATE DATE, /* 기안 처리일(반려 또는 승인 날짜) */
	DOCUMENT_STATUS VARCHAR2(1) NOT NULL /* 기안 처리 상태(미승인,승인, 반려) */
);

COMMENT ON TABLE CASE_ITEM_CHANGE IS '아이템 변경 기안';

COMMENT ON COLUMN CASE_ITEM_CHANGE.DOCUMENT_ID IS '기안ID';

COMMENT ON COLUMN CASE_ITEM_CHANGE.USERID IS '유저 ID';

COMMENT ON COLUMN CASE_ITEM_CHANGE.ITEM_ID IS '아이템 ID';

COMMENT ON COLUMN CASE_ITEM_CHANGE.CHAR_ID IS '캐릭터 ID';

COMMENT ON COLUMN CASE_ITEM_CHANGE.EMPLOYEE_ID IS '사원 ID';

COMMENT ON COLUMN CASE_ITEM_CHANGE.REPLACE_ITEM_ID IS '변경된 아이템 ID';

COMMENT ON COLUMN CASE_ITEM_CHANGE.REPLACE_ITEM_NO IS '변경될 갯수';

COMMENT ON COLUMN CASE_ITEM_CHANGE.DOCUMENET_TITLE IS '기안 제목';

COMMENT ON COLUMN CASE_ITEM_CHANGE.DOCUMENET_CONTENT IS '기안 내용';

COMMENT ON COLUMN CASE_ITEM_CHANGE.ATTACHEMENT_FILENAME IS '첨부 파일';

COMMENT ON COLUMN CASE_ITEM_CHANGE.EDIT_DATE IS '기안 작성일';

COMMENT ON COLUMN CASE_ITEM_CHANGE.SIGN_DATE IS '기안 처리일(반려 또는 승인 날짜)';

COMMENT ON COLUMN CASE_ITEM_CHANGE.DOCUMENT_STATUS IS '기안 처리 상태(미승인,승인, 반려)';

CREATE UNIQUE INDEX PK_CASE_ITEM_CHANGE
	ON CASE_ITEM_CHANGE (
		DOCUMENT_ID ASC
	);

ALTER TABLE CASE_ITEM_CHANGE
	ADD
		CONSTRAINT PK_CASE_ITEM_CHANGE
		PRIMARY KEY (
			DOCUMENT_ID
		);

/* 아이템 삭제 기안 */
CREATE TABLE CASE_ITEM_DELETE (
	DOCUMENT_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 기안ID */
	USERID NUMBER NOT NULL, /* 유저 ID */
	ITEM_ID NUMBER NOT NULL, /* 아이템 ID */
	CHAR_ID NUMBER NOT NULL, /* 캐릭터 ID */
	EMPLOYEE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 사원 ID */
	DELETE_ITEM_ID NUMBER NOT NULL, /* 삭제할 아이템 ID */
	DELETE_ITEM_NO NUMBER NOT NULL, /* 삭제할 갯수 */
	DOCUMENET_TITLE VARCHAR2(1000) NOT NULL, /* 기안 제목 */
	DOCUMENET_CONTENT VARCHAR2(4000) NOT NULL, /* 기안 내용 */
	ATTACHEMENT_FILENAME VARCHAR2(1000), /* 첨부 파일 */
	EDIT_DATE DATE NOT NULL, /* 기안 작성일 */
	SIGN_DATE DATE, /* 기안 처리일(반려 또는 승인 날짜) */
	DOCUMENT_STATUS VARCHAR2(1) NOT NULL /* 기안 처리 상태(미승인,승인, 반려) */
);

COMMENT ON TABLE CASE_ITEM_DELETE IS '아이템 삭제 기안';

COMMENT ON COLUMN CASE_ITEM_DELETE.DOCUMENT_ID IS '기안ID';

COMMENT ON COLUMN CASE_ITEM_DELETE.USERID IS '유저 ID';

COMMENT ON COLUMN CASE_ITEM_DELETE.ITEM_ID IS '아이템 ID';

COMMENT ON COLUMN CASE_ITEM_DELETE.CHAR_ID IS '캐릭터 ID';

COMMENT ON COLUMN CASE_ITEM_DELETE.EMPLOYEE_ID IS '사원 ID';

COMMENT ON COLUMN CASE_ITEM_DELETE.DELETE_ITEM_ID IS '삭제할 아이템 ID';

COMMENT ON COLUMN CASE_ITEM_DELETE.DELETE_ITEM_NO IS '삭제할 갯수';

COMMENT ON COLUMN CASE_ITEM_DELETE.DOCUMENET_TITLE IS '기안 제목';

COMMENT ON COLUMN CASE_ITEM_DELETE.DOCUMENET_CONTENT IS '기안 내용';

COMMENT ON COLUMN CASE_ITEM_DELETE.ATTACHEMENT_FILENAME IS '첨부 파일';

COMMENT ON COLUMN CASE_ITEM_DELETE.EDIT_DATE IS '기안 작성일';

COMMENT ON COLUMN CASE_ITEM_DELETE.SIGN_DATE IS '기안 처리일(반려 또는 승인 날짜)';

COMMENT ON COLUMN CASE_ITEM_DELETE.DOCUMENT_STATUS IS '기안 처리 상태(미승인,승인, 반려)';

CREATE UNIQUE INDEX PK_CASE_ITEM_DELETE
	ON CASE_ITEM_DELETE (
		DOCUMENT_ID ASC
	);

ALTER TABLE CASE_ITEM_DELETE
	ADD
		CONSTRAINT PK_CASE_ITEM_DELETE
		PRIMARY KEY (
			DOCUMENT_ID
		);

/* 아이템 환불 기안 */
CREATE TABLE CASE_ITEM_REFUND (
	DOCUMENT_ID RAW(16) NOT NULL, /* 기안ID */
	USERID NUMBER NOT NULL, /* 유저 ID */
	ITEM_ID NUMBER NOT NULL, /* 아이템 ID */
	CHAR_ID NUMBER NOT NULL, /* 캐릭터 ID */
	EMPLOYEE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 사원 ID */
	REFUND_AMOUNT NUMBER NOT NULL, /* 환불 금액 */
	DOCUMENET_TITLE VARCHAR2(1000) NOT NULL, /* 기안 제목 */
	DOCUMENET_CONTENT VARCHAR2(4000) NOT NULL, /* 기안 내용 */
	ATTACHEMENT_FILENAME VARCHAR2(1000), /* 첨부 파일 */
	EDIT_DATE DATE NOT NULL, /* 기안 작성일 */
	SIGN_DATE DATE, /* 기안 처리일(반려 또는 승인 날짜) */
	DOCUMENT_STATUS VARCHAR2(1) NOT NULL /* 기안 처리 상태(미승인,승인, 반려) */
);

COMMENT ON TABLE CASE_ITEM_REFUND IS '아이템 환불 기안';

COMMENT ON COLUMN CASE_ITEM_REFUND.DOCUMENT_ID IS '기안ID';

COMMENT ON COLUMN CASE_ITEM_REFUND.USERID IS '유저 ID';

COMMENT ON COLUMN CASE_ITEM_REFUND.ITEM_ID IS '아이템 ID';

COMMENT ON COLUMN CASE_ITEM_REFUND.CHAR_ID IS '캐릭터 ID';

COMMENT ON COLUMN CASE_ITEM_REFUND.EMPLOYEE_ID IS '사원 ID';

COMMENT ON COLUMN CASE_ITEM_REFUND.REFUND_AMOUNT IS '환불 금액';

COMMENT ON COLUMN CASE_ITEM_REFUND.DOCUMENET_TITLE IS '기안 제목';

COMMENT ON COLUMN CASE_ITEM_REFUND.DOCUMENET_CONTENT IS '기안 내용';

COMMENT ON COLUMN CASE_ITEM_REFUND.ATTACHEMENT_FILENAME IS '첨부 파일';

COMMENT ON COLUMN CASE_ITEM_REFUND.EDIT_DATE IS '기안 작성일';

COMMENT ON COLUMN CASE_ITEM_REFUND.SIGN_DATE IS '기안 처리일(반려 또는 승인 날짜)';

COMMENT ON COLUMN CASE_ITEM_REFUND.DOCUMENT_STATUS IS '기안 처리 상태(미승인,승인, 반려)';

CREATE UNIQUE INDEX PK_CASE_ITEM_REFUND
	ON CASE_ITEM_REFUND (
		DOCUMENT_ID ASC
	);

ALTER TABLE CASE_ITEM_REFUND
	ADD
		CONSTRAINT PK_CASE_ITEM_REFUND
		PRIMARY KEY (
			DOCUMENT_ID
		);

/* 게시글 */
CREATE TABLE COMMUNITY (
	BOARD_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 게시글 ID */
	DEPARTMENT_ID VARCHAR2(32) NOT NULL, /* 부서 ID */
	EMPLOYEE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 작성자 ID */
	BOARD_TITLE VARCHAR2(1000) NOT NULL, /* 제목 */
	BOARD_CONTENT VARCHAR2(4000) NOT NULL, /* 본문 */
	BOARD_DATE DATE NOT NULL, /* 날짜 */
	ATTACHEMENT_FILENAME VARCHAR2(1000), /* 첨부파일 */
	BOARD_TYPE VARCHAR2(1) NOT NULL, /* 게시판 분류 */
	READ_COUNT NUMBER NOT NULL /* 조회수 */
);

COMMENT ON TABLE COMMUNITY IS '게시글';

COMMENT ON COLUMN COMMUNITY.BOARD_ID IS '게시글 ID';

COMMENT ON COLUMN COMMUNITY.DEPARTMENT_ID IS '부서 ID';

COMMENT ON COLUMN COMMUNITY.EMPLOYEE_ID IS '작성자 ID';

COMMENT ON COLUMN COMMUNITY.BOARD_TITLE IS '제목';

COMMENT ON COLUMN COMMUNITY.BOARD_CONTENT IS '본문';

COMMENT ON COLUMN COMMUNITY.BOARD_DATE IS '날짜';

COMMENT ON COLUMN COMMUNITY.ATTACHEMENT_FILENAME IS '첨부파일';

COMMENT ON COLUMN COMMUNITY.BOARD_TYPE IS '게시판 분류';

COMMENT ON COLUMN COMMUNITY.READ_COUNT IS '조회수';

CREATE UNIQUE INDEX PK_COMMUNITY
	ON COMMUNITY (
		BOARD_ID ASC
	);

ALTER TABLE COMMUNITY
	ADD
		CONSTRAINT PK_COMMUNITY
		PRIMARY KEY (
			BOARD_ID
		);

/* 부서 */
CREATE TABLE DEPARTMENT (
	DEPARTMENT_ID VARCHAR2(32) NOT NULL, /* 부서 ID */
	DEPARTMENT_NAME VARCHAR2(32) NOT NULL /* 부서명 */
);

COMMENT ON TABLE DEPARTMENT IS '부서';

COMMENT ON COLUMN DEPARTMENT.DEPARTMENT_ID IS '부서 ID';

COMMENT ON COLUMN DEPARTMENT.DEPARTMENT_NAME IS '부서명';

CREATE UNIQUE INDEX PK_DEPARTMENT
	ON DEPARTMENT (
		DEPARTMENT_ID ASC
	);

ALTER TABLE DEPARTMENT
	ADD
		CONSTRAINT PK_DEPARTMENT
		PRIMARY KEY (
			DEPARTMENT_ID
		);

/* 사원 */
CREATE TABLE EMPLOYEE (
	EMPLOYEE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 사원 ID */
	DEPARTMENT_ID VARCHAR2(32) NOT NULL, /* 부서 ID */
	TEAM_ID VARCHAR2(32) NOT NULL, /* 팀 ID */
	RANK_ID VARCHAR2(32) NOT NULL, /* 직급 ID */
	EMPLOYEE_NAME VARCHAR2(100) NOT NULL, /* 이름 */
	EMPLOYEE_EMAIL VARCHAR2(100) NOT NULL, /* 이메일 */
	EMPLOYEE_PWD VARCHAR2(32) NOT NULL, /* 비밀번호 */
	EMPLOYEE_ADDRESS VARCHAR2(1000) NOT NULL, /* 주소 */
	EMPLOYEE_PHONE VARCHAR2(20) NOT NULL, /* 전화번호 */
	EMPLOYEE_NO VARCHAR2(14) NOT NULL /* 주민등록번호 */
);

COMMENT ON TABLE EMPLOYEE IS '사원';

COMMENT ON COLUMN EMPLOYEE.EMPLOYEE_ID IS '사원 ID';

COMMENT ON COLUMN EMPLOYEE.DEPARTMENT_ID IS '부서 ID';

COMMENT ON COLUMN EMPLOYEE.TEAM_ID IS '팀 ID';

COMMENT ON COLUMN EMPLOYEE.RANK_ID IS '직급 ID';

COMMENT ON COLUMN EMPLOYEE.EMPLOYEE_NAME IS '이름';

COMMENT ON COLUMN EMPLOYEE.EMPLOYEE_EMAIL IS '이메일';

COMMENT ON COLUMN EMPLOYEE.EMPLOYEE_PWD IS '비밀번호';

COMMENT ON COLUMN EMPLOYEE.EMPLOYEE_ADDRESS IS '주소';

COMMENT ON COLUMN EMPLOYEE.EMPLOYEE_PHONE IS '전화번호';

COMMENT ON COLUMN EMPLOYEE.EMPLOYEE_NO IS '주민등록번호';

CREATE UNIQUE INDEX PK_EMPLOYEE
	ON EMPLOYEE (
		EMPLOYEE_ID ASC
	);

CREATE UNIQUE INDEX UIX_EMPLOYEE
	ON EMPLOYEE (
		EMPLOYEE_EMAIL ASC,
		EMPLOYEE_PHONE ASC,
		EMPLOYEE_NO ASC
	);

ALTER TABLE EMPLOYEE
	ADD
		CONSTRAINT PK_EMPLOYEE
		PRIMARY KEY (
			EMPLOYEE_ID
		);

ALTER TABLE EMPLOYEE
	ADD
		CONSTRAINT UK_EMPLOYEE
		UNIQUE (
			EMPLOYEE_EMAIL,
			EMPLOYEE_PHONE,
			EMPLOYEE_NO
		);

/* 아이템 */
CREATE TABLE ITEM (
	ITEM_ID NUMBER NOT NULL, /* 아이템 ID */
	ITEM_TYPE VARCHAR2(256), /* 아이템종류 */
	ITEM_DATA VARCHAR2(4000) /* 아이템데이터 */
);

COMMENT ON TABLE ITEM IS '아이템';

COMMENT ON COLUMN ITEM.ITEM_ID IS '아이템 ID';

COMMENT ON COLUMN ITEM.ITEM_TYPE IS '아이템종류';

COMMENT ON COLUMN ITEM.ITEM_DATA IS '아이템데이터';

CREATE UNIQUE INDEX PK_ITEM
	ON ITEM (
		ITEM_ID ASC
	);

ALTER TABLE ITEM
	ADD
		CONSTRAINT PK_ITEM
		PRIMARY KEY (
			ITEM_ID
		);

/* 공지사항 */
CREATE TABLE NOTICE (
	NOTICE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 공지사항 ID */
	EMPLOYEE_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 작성자 ID */
	DEPARTMENT_ID VARCHAR2(32), /* 부서 ID */
	TEAM_ID VARCHAR2(32), /* 팀 ID */
	NOTICE_TITLE VARCHAR2(1000) NOT NULL, /* 제목 */
	NOTICE_CONTENT VARCHAR2(4000) NOT NULL, /* 본문 */
	EDIT_DATE DATE NOT NULL, /* 날짜 */
	ATTACHEMENT_FILENAME VARCHAR2(1000), /* 첨부파일 */
	READ_COUNT NUMBER DEFAULT 0  NOT NULL /* 조회수 */
);

COMMENT ON TABLE NOTICE IS '공지사항';

COMMENT ON COLUMN NOTICE.NOTICE_ID IS '공지사항 ID';

COMMENT ON COLUMN NOTICE.EMPLOYEE_ID IS '작성자 ID';

COMMENT ON COLUMN NOTICE.DEPARTMENT_ID IS '부서 ID';

COMMENT ON COLUMN NOTICE.TEAM_ID IS '팀 ID';

COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '제목';

COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '본문';

COMMENT ON COLUMN NOTICE.EDIT_DATE IS '날짜';

COMMENT ON COLUMN NOTICE.ATTACHEMENT_FILENAME IS '첨부파일';

COMMENT ON COLUMN NOTICE.READ_COUNT IS '조회수';

CREATE UNIQUE INDEX PK_NOTICE
	ON NOTICE (
		NOTICE_ID ASC
	);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT PK_NOTICE
		PRIMARY KEY (
			NOTICE_ID
		);

/* 유저 결제 내역 */
CREATE TABLE PAYMENT (
	PAYMENT_ID RAW(16) DEFAULT sys_guid()  NOT NULL, /* 결제 ID */
	ITEM_ID NUMBER, /* 아이템 ID */
	CHAR_ID NUMBER NOT NULL, /* 캐릭터 ID */
	ACCOUNT_ID NUMBER NOT NULL, /* 유저 ID */
	AMOUNT NUMBER NOT NULL, /* 가격 */
	PAYMENT_DATE DATE NOT NULL, /* 결제 시간 */
	PAYMENT_STATUS VARCHAR2(1) NOT NULL, /* 결제 상태 */
	REFUND_DATE DATE, /* 환불 날짜 */
	REFUND_CAUSE VARCHAR2(1000) /* 환불 사유 */
);

COMMENT ON TABLE PAYMENT IS '유저 결제 내역';

COMMENT ON COLUMN PAYMENT.PAYMENT_ID IS '결제 ID';

COMMENT ON COLUMN PAYMENT.ITEM_ID IS '아이템 ID';

COMMENT ON COLUMN PAYMENT.CHAR_ID IS '캐릭터 ID';

COMMENT ON COLUMN PAYMENT.ACCOUNT_ID IS '유저 ID';

COMMENT ON COLUMN PAYMENT.AMOUNT IS '가격';

COMMENT ON COLUMN PAYMENT.PAYMENT_DATE IS '결제 시간';

COMMENT ON COLUMN PAYMENT.PAYMENT_STATUS IS '결제 상태';

COMMENT ON COLUMN PAYMENT.REFUND_DATE IS '환불 날짜';

COMMENT ON COLUMN PAYMENT.REFUND_CAUSE IS '환불 사유';

CREATE UNIQUE INDEX PK_PAYMENT
	ON PAYMENT (
		PAYMENT_ID ASC
	);

ALTER TABLE PAYMENT
	ADD
		CONSTRAINT PK_PAYMENT
		PRIMARY KEY (
			PAYMENT_ID
		);

/* 직급 */
CREATE TABLE RANK (
	RANK_ID VARCHAR2(32) NOT NULL, /* 직급 ID */
	RANK_NAME VARCHAR2(32) NOT NULL /* 직급명 */
);

COMMENT ON TABLE RANK IS '직급';

COMMENT ON COLUMN RANK.RANK_ID IS '직급 ID';

COMMENT ON COLUMN RANK.RANK_NAME IS '직급명';

CREATE UNIQUE INDEX PK_RANK
	ON RANK (
		RANK_ID ASC
	);

ALTER TABLE RANK
	ADD
		CONSTRAINT PK_RANK
		PRIMARY KEY (
			RANK_ID
		);

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

/* 팀 */
CREATE TABLE TEAM (
	TEAM_ID VARCHAR2(32) NOT NULL, /* 팀 ID */
	TEAM_NAME VARCHAR2(32) NOT NULL /* 팀명 */
);

COMMENT ON TABLE TEAM IS '팀';

COMMENT ON COLUMN TEAM.TEAM_ID IS '팀 ID';

COMMENT ON COLUMN TEAM.TEAM_NAME IS '팀명';

CREATE UNIQUE INDEX PK_TEAM
	ON TEAM (
		TEAM_ID ASC
	);

ALTER TABLE TEAM
	ADD
		CONSTRAINT PK_TEAM
		PRIMARY KEY (
			TEAM_ID
		);

ALTER TABLE CASE_ITEM_CHANGE
	ADD
		CONSTRAINT FK_EMPLOYEE_TO_CS_ITM_CHNG
		FOREIGN KEY (
			EMPLOYEE_ID
		)
		REFERENCES EMPLOYEE (
			EMPLOYEE_ID
		);

ALTER TABLE CASE_ITEM_CHANGE
	ADD
		CONSTRAINT FK_ITEM_TO_CASE_ITEM_CHANGE
		FOREIGN KEY (
			ITEM_ID
		)
		REFERENCES ITEM (
			ITEM_ID
		);

ALTER TABLE CASE_ITEM_DELETE
	ADD
		CONSTRAINT FK_EMPLOYEE_TO_CASE_ITM_DLT
		FOREIGN KEY (
			EMPLOYEE_ID
		)
		REFERENCES EMPLOYEE (
			EMPLOYEE_ID
		);

ALTER TABLE CASE_ITEM_DELETE
	ADD
		CONSTRAINT FK_ITEM_TO_CASE_ITEM_DELETE
		FOREIGN KEY (
			ITEM_ID
		)
		REFERENCES ITEM (
			ITEM_ID
		);

ALTER TABLE CASE_ITEM_REFUND
	ADD
		CONSTRAINT FK_EMPLOYEE_TO_CS_ITM_RFND
		FOREIGN KEY (
			EMPLOYEE_ID
		)
		REFERENCES EMPLOYEE (
			EMPLOYEE_ID
		);

ALTER TABLE CASE_ITEM_REFUND
	ADD
		CONSTRAINT FK_ITEM_TO_CASE_ITEM_REFUND
		FOREIGN KEY (
			ITEM_ID
		)
		REFERENCES ITEM (
			ITEM_ID
		);

ALTER TABLE COMMUNITY
	ADD
		CONSTRAINT FK_EMPLOYEE_TO_COMMUNITY
		FOREIGN KEY (
			EMPLOYEE_ID
		)
		REFERENCES EMPLOYEE (
			EMPLOYEE_ID
		);

ALTER TABLE COMMUNITY
	ADD
		CONSTRAINT FK_DEPARTMENT_TO_COMMUNITY
		FOREIGN KEY (
			DEPARTMENT_ID
		)
		REFERENCES DEPARTMENT (
			DEPARTMENT_ID
		);

ALTER TABLE EMPLOYEE
	ADD
		CONSTRAINT FK_TEAM_TO_EMPLOYEE
		FOREIGN KEY (
			TEAM_ID
		)
		REFERENCES TEAM (
			TEAM_ID
		);

ALTER TABLE EMPLOYEE
	ADD
		CONSTRAINT FK_DEPARTMENT_TO_EMPLOYEE
		FOREIGN KEY (
			DEPARTMENT_ID
		)
		REFERENCES DEPARTMENT (
			DEPARTMENT_ID
		);

ALTER TABLE EMPLOYEE
	ADD
		CONSTRAINT FK_RANK_TO_EMPLOYEE
		FOREIGN KEY (
			RANK_ID
		)
		REFERENCES RANK (
			RANK_ID
		);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT FK_EMPLOYEE_TO_NOTICE
		FOREIGN KEY (
			EMPLOYEE_ID
		)
		REFERENCES EMPLOYEE (
			EMPLOYEE_ID
		);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT FK_DEPARTMENT_TO_NOTICE
		FOREIGN KEY (
			DEPARTMENT_ID
		)
		REFERENCES DEPARTMENT (
			DEPARTMENT_ID
		);

ALTER TABLE NOTICE
	ADD
		CONSTRAINT FK_TEAM_TO_NOTICE
		FOREIGN KEY (
			TEAM_ID
		)
		REFERENCES TEAM (
			TEAM_ID
		);

ALTER TABLE PAYMENT
	ADD
		CONSTRAINT FK_ITEM_TO_PAYMENT
		FOREIGN KEY (
			ITEM_ID
		)
		REFERENCES ITEM (
			ITEM_ID
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

----------------- INQUIRY 테이블에 컬럼 추가 및 속성 변경 -----------------

----------------- ANSWER_STATUS 컬럼은 'Y' 혹은 'N' 으로 답변 여부 체크함

----------------- INQUIRY_TYPE 문의구분 : 
----------------- '1' == 환불문의
----------------- '2' == 게임문의
----------------- '3' == 기타문의

ALTER TABLE INQUIRY
MODIFY  (EMPLOYEE_ID NULL);

ALTER TABLE INQUIRY
MODIFY ANSWER_STATUS DEFAULT 'N';

ALTER TABLE INQUIRY
DROP COLUMN INQUIRY_REF;

ALTER TABLE INQUIRY
DROP COLUMN ASNWER_REF;

ALTER TABLE INQUIRY
ADD EMP_NAME VARCHAR2(30) DEFAULT NULL;

COMMENT ON COLUMN INQUIRY.EMP_NAME IS '문의 작성 사원 이름';

----------------- EMPLOYEE 테이블에 관리자ID 컬럼 추가 -----------------
ALTER TABLE EMPLOYEE
ADD MANAGER_ID RAW(16);

COMMENT ON COLUMN EMPLOYEE.MANAGER_ID IS '관리자 ID';

COMMIT;