

CREATE TABLE USERINFO(
	USERID		VARCHAR2(15) PRIMARY KEY,
	PASSWORD	VARCHAR2(15) NOT NULL,
	NAME		VARCHAR2(10) NOT NULL,
	AGE			NUMBER(5) NOT NULL,
	PHONE		VARCHAR2(20) NOT NULL,
	GENRENUM	VARCHAR2(20) NOT NULL,
	ADMIN		VARCHAR2(1) NOT NULL
);

INSERT INTO USERINFO
VALUES('user01', '010101', '김다솜', 23, '010-9924-2245', '01-3|02-1|05-1', 0);
INSERT INTO USERINFO
VALUES('user03', '010101', '노창환', 58, '010-6695-5091', '02-1|02-2|07-3', 0);
INSERT INTO USERINFO
VALUES('user11', '010101', '서동성', 29, '010-7392-8550', '02-1|07-2|10-3', 0);	--2조
INSERT INTO USERINFO
VALUES('user14', '010101', '김준수', 47, '010-3681-9601', '02-1|03-3|08-3', 0);
INSERT INTO USERINFO
VALUES('user20', '010101', '조영재', 51, '010-3102-7589', '01-3|06-1|10-2', 0);
INSERT INTO USERINFO
VALUES('user30', '010101', '이주영', 59, '010-2907-4924', '01-3|02-1|05-1', 0);

INSERT INTO USERINFO
VALUES('admin', 'admin', 'admin', 1, 'none', '01-1|01-1|01-1', 1);

UPDATE USERINFO
SET GENRENUM =  '02-2|06-3|07-1'  WHERE USERID = 'user02';
UPDATE USERINFO
SET GENRENUM =  '01-1|08-3|10-2'  WHERE USERID = 'user04';
UPDATE USERINFO
SET GENRENUM =  '04-3|07-1|09-2'  WHERE USERID = 'user05';
UPDATE USERINFO
SET GENRENUM =  '03-1|06-1|10-2'  WHERE USERID = 'user06';
UPDATE USERINFO
SET GENRENUM =  '01-2|02-2|07-1'  WHERE USERID = 'user07';
UPDATE USERINFO
SET GENRENUM ='05-1|08-2|09-2'  WHERE USERID = 'user08';
UPDATE USERINFO
SET GENRENUM =  '02-1|02-3|07-1'  WHERE USERID = 'user09';
UPDATE USERINFO
SET GENRENUM = '03-3|05-2|09-2'  WHERE USERID = 'user10';
UPDATE USERINFO
SET GENRENUM = '02-1|07-2|10-3'  WHERE USERID = 'user12';
UPDATE USERINFO
SET GENRENUM = '01-1|07-2|10-2'  WHERE USERID = 'user13';
UPDATE USERINFO
SET GENRENUM = '03-3|06-1|10-2'  WHERE USERID = 'user15';
UPDATE USERINFO
SET GENRENUM =  '02-1|03-1|04-1'  WHERE USERID = 'user16';
UPDATE USERINFO
SET GENRENUM =  '01-1|03-3|06-2'  WHERE USERID = 'user17';
UPDATE USERINFO
SET GENRENUM ='07-3|08-3|10-1'  WHERE USERID = 'user18';
UPDATE USERINFO
SET GENRENUM =  '01-3|05-2|07-1'  WHERE USERID = 'user19';
UPDATE USERINFO
SET GENRENUM = '01-2|02-2|07-1'  WHERE USERID = 'user21';
UPDATE USERINFO
SET GENRENUM = '03-3|06-2|08-3'  WHERE USERID = 'user22';
UPDATE USERINFO
SET GENRENUM =  '01-2|07-3|09-3'  WHERE USERID = 'user23';
UPDATE USERINFO
SET GENRENUM =  '07-1|08-2|10-3'  WHERE USERID = 'user24';
UPDATE USERINFO
SET GENRENUM =  '02-1|06-2|09-3'  WHERE USERID = 'user25';
UPDATE USERINFO
SET GENRENUM = '01-2|03-2|08-3'  WHERE USERID = 'user26';
UPDATE USERINFO
SET GENRENUM =  '04-1|07-3|10-3'  WHERE USERID = 'user27';
UPDATE USERINFO
SET GENRENUM = '01-1|03-3|06-1'  WHERE USERID = 'user28';
UPDATE USERINFO
SET GENRENUM = '02-1|02-3|07-2'  WHERE USERID = 'user29';
UPDATE USERINFO
SET GENRENUM =  '07-3|08-2|10-1'  WHERE USERID = 'user31';
UPDATE USERINFO
SET GENRENUM = '03-3|05-2|09-2'  WHERE USERID = 'user32';

INSERT INTO USERINFO
VALUES('111', '111', '차차차', 53, '010-4783-0627', '03-3|05-2|09', 0);

INSERT INTO RECODE
VALUES('111',2,TO_DATE('170724','YYMMDD'));
INSERT INTO RECODE
VALUES('111',56,TO_DATE('170715','YYMMDD'));
INSERT INTO RECODE
VALUES('111',31,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('111',96,TO_DATE('170718','YYMMDD'));
INSERT INTO RECODE
VALUES('111',75,TO_DATE('170714','YYMMDD'));

INSERT INTO USERBOOK
VALUES('111',68,TO_DATE('170711','YYMMDD'));
INSERT INTO USERBOOK
VALUES('111',1,TO_DATE('170711','YYMMDD'));
INSERT INTO USERBOOK
VALUES('111',25,TO_DATE('170712','YYMMDD'));
INSERT INTO USERBOOK
VALUES('111',59,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('111',65,TO_DATE('170724','YYMMDD'));

DELETE
FROM	USERINFO
WHERE	USERID = '111';

SELECT	*
FROM	USERINFO
WHERE	USERID = '111';

SELECT	*
FROM	RECODE
WHERE	USERID = '111';

SELECT	*
FROM	USERBOOK
WHERE	USERID = '111';

alter table USERINFO
references USERBOOK(USERID) on delete cascade;


SELECT *
FROM USERINFO;			--test
<<<<<<< HEAD
=======

DROP TABLE USERINFO;	--test
DROP TABLE USERBOOK;	--test
DROP TABLE RECODE;		--test

>>>>>>> 2ad3934423799888ff0d323b6f111e38c086e4c5

CREATE TABLE USERBOOK(
	USERID	VARCHAR2(15)	REFERENCES USERINFO(USERID),
	BOOKNUM	NUMBER(5)		REFERENCES BOOKINFO(BOOKNUM),
	PUTDATE	DATE			NOT NULL,
	PRIMARY KEY (USERID, BOOKNUM)
);

CREATE TABLE RECODE(
	USERID		VARCHAR2(15)	REFERENCES USERINFO(USERID),
	BOOKNUM		NUMBER(5)		REFERENCES BOOKINFO(BOOKNUM),
	READDATE	DATE			NOT NULL,
	PRIMARY KEY (USERID, BOOKNUM)
);

INSERT INTO RECODE
VALUES('user01',2,TO_DATE('170724','YYMMDD'));
INSERT INTO RECODE
VALUES('user01',56,TO_DATE('170715','YYMMDD'));
INSERT INTO RECODE
VALUES('user01',31,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user01',96,TO_DATE('170718','YYMMDD'));
INSERT INTO RECODE
VALUES('user01',75,TO_DATE('170714','YYMMDD'));
INSERT INTO RECODE
VALUES('user02',12,TO_DATE('170712','YYMMDD'));
INSERT INTO RECODE
VALUES('user02',58,TO_DATE('170709','YYMMDD'));
INSERT INTO RECODE
VALUES('user02',53,TO_DATE('170706','YYMMDD'));
INSERT INTO RECODE
VALUES('user02',96,TO_DATE('170711','YYMMDD'));
INSERT INTO RECODE
VALUES('user02',26,TO_DATE('170718','YYMMDD'));
INSERT INTO RECODE
VALUES('user03',24,TO_DATE('170712','YYMMDD'));
INSERT INTO RECODE
VALUES('user03',60,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user03',43,TO_DATE('170730','YYMMDD'));
INSERT INTO RECODE
VALUES('user03',30,TO_DATE('170718','YYMMDD'));
INSERT INTO RECODE
VALUES('user03',80,TO_DATE('170727','YYMMDD'));
INSERT INTO RECODE
VALUES('user04',17,TO_DATE('170721','YYMMDD'));
INSERT INTO RECODE
VALUES('user04',38,TO_DATE('170722','YYMMDD'));
INSERT INTO RECODE
VALUES('user04',55,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user04',94,TO_DATE('170714','YYMMDD'));
INSERT INTO RECODE
VALUES('user04',78,TO_DATE('170710','YYMMDD'));
INSERT INTO RECODE
VALUES('user05',63,TO_DATE('170716','YYMMDD'));
INSERT INTO RECODE
VALUES('user05',60,TO_DATE('170711','YYMMDD'));
INSERT INTO RECODE
VALUES('user05',8,TO_DATE('170709','YYMMDD'));
INSERT INTO RECODE
VALUES('user05',44,TO_DATE('17076','YYMMDD'));
INSERT INTO RECODE
VALUES('user05',81,TO_DATE('170714','YYMMDD'));
INSERT INTO RECODE
VALUES('user06',3,TO_DATE('170707','YYMMDD'));
INSERT INTO RECODE
VALUES('user06',92,TO_DATE('170724','YYMMDD'));
INSERT INTO RECODE
VALUES('user06',48,TO_DATE('170725','YYMMDD'));
INSERT INTO RECODE
VALUES('user06',13,TO_DATE('170716','YYMMDD'));
INSERT INTO RECODE
VALUES('user06',65,TO_DATE('170715','YYMMDD'));
INSERT INTO RECODE
VALUES('user07',63,TO_DATE('170708','YYMMDD'));
INSERT INTO RECODE
VALUES('user07',44,TO_DATE('170706','YYMMDD'));
INSERT INTO RECODE
VALUES('user07',46,TO_DATE('170720','YYMMDD'));
INSERT INTO RECODE
VALUES('user07',80,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user07',74,TO_DATE('170705','YYMMDD'));
INSERT INTO RECODE
VALUES('user08',47,TO_DATE('170726','YYMMDD'));
INSERT INTO RECODE
VALUES('user08',5,TO_DATE('170722','YYMMDD'));
INSERT INTO RECODE
VALUES('user08',75,TO_DATE('170720','YYMMDD'));
INSERT INTO RECODE
VALUES('user08',76,TO_DATE('170730','YYMMDD'));
INSERT INTO RECODE
VALUES('user08',20,TO_DATE('170716','YYMMDD'));
INSERT INTO RECODE
VALUES('user09',17,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user09',6,TO_DATE('170729','YYMMDD'));
INSERT INTO RECODE
VALUES('user09',37,TO_DATE('170718','YYMMDD'));
INSERT INTO RECODE
VALUES('user09',100,TO_DATE('170722','YYMMDD'));
INSERT INTO RECODE
VALUES('user09',12,TO_DATE('170723','YYMMDD'));
INSERT INTO RECODE
VALUES('user10',80,TO_DATE('170726','YYMMDD'));
INSERT INTO RECODE
VALUES('user10',5,TO_DATE('170721','YYMMDD'));
INSERT INTO RECODE
VALUES('user10',39,TO_DATE('170721','YYMMDD'));
INSERT INTO RECODE
VALUES('user10',40,TO_DATE('170710','YYMMDD'));
INSERT INTO RECODE
VALUES('user10',11,TO_DATE('170710','YYMMDD'));
INSERT INTO RECODE
VALUES('user11',78,TO_DATE('170701','YYMMDD'));
INSERT INTO RECODE
VALUES('user11',99,TO_DATE('170729','YYMMDD'));
INSERT INTO RECODE
VALUES('user11',68,TO_DATE('170727','YYMMDD'));
INSERT INTO RECODE
VALUES('user11',19,TO_DATE('170707','YYMMDD'));
INSERT INTO RECODE
VALUES('user11',18,TO_DATE('170712','YYMMDD'));
INSERT INTO RECODE
VALUES('user12',49,TO_DATE('170724','YYMMDD'));
INSERT INTO RECODE
VALUES('user12',17,TO_DATE('170703','YYMMDD'));
INSERT INTO RECODE
VALUES('user12',27,TO_DATE('170705','YYMMDD'));
INSERT INTO RECODE
VALUES('user12',90,TO_DATE('170730','YYMMDD'));
INSERT INTO RECODE
VALUES('user12',10,TO_DATE('170727','YYMMDD'));
INSERT INTO RECODE
VALUES('user13',57,TO_DATE('170716','YYMMDD'));
INSERT INTO RECODE
VALUES('user13',22,TO_DATE('170724','YYMMDD'));
INSERT INTO RECODE
VALUES('user13',2,TO_DATE('170715','YYMMDD'));
INSERT INTO RECODE
VALUES('user13',19,TO_DATE('170701','YYMMDD'));
INSERT INTO RECODE
VALUES('user13',99,TO_DATE('170713','YYMMDD'));
INSERT INTO RECODE
VALUES('user14',84,TO_DATE('170729','YYMMDD'));
INSERT INTO RECODE
VALUES('user14',26,TO_DATE('170731','YYMMDD'));
INSERT INTO RECODE
VALUES('user14',30,TO_DATE('170707','YYMMDD'));
INSERT INTO RECODE
VALUES('user14',48,TO_DATE('170728','YYMMDD'));
INSERT INTO RECODE
VALUES('user14',31,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user15',38,TO_DATE('170707','YYMMDD'));
INSERT INTO RECODE
VALUES('user15',99,TO_DATE('170713','YYMMDD'));
INSERT INTO RECODE
VALUES('user15',87,TO_DATE('170706','YYMMDD'));
INSERT INTO RECODE
VALUES('user15',42,TO_DATE('170722','YYMMDD'));
INSERT INTO RECODE
VALUES('user15',27,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user16',47,TO_DATE('170726','YYMMDD'));
INSERT INTO RECODE
VALUES('user16',55,TO_DATE('170722','YYMMDD'));
INSERT INTO RECODE
VALUES('user16',29,TO_DATE('170724','YYMMDD'));
INSERT INTO RECODE
VALUES('user16',92,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user16',40,TO_DATE('170706','YYMMDD'));
INSERT INTO RECODE
VALUES('user17',92,TO_DATE('170722','YYMMDD'));
INSERT INTO RECODE
VALUES('user17',51,TO_DATE('170727','YYMMDD'));
INSERT INTO RECODE
VALUES('user17',50,TO_DATE('170715','YYMMDD'));
INSERT INTO RECODE
VALUES('user17',7,TO_DATE('170703','YYMMDD'));
INSERT INTO RECODE
VALUES('user17',2,TO_DATE('170721','YYMMDD'));
INSERT INTO RECODE
VALUES('user18',74,TO_DATE('170706','YYMMDD'));
INSERT INTO RECODE
VALUES('user18',49,TO_DATE('170722','YYMMDD'));
INSERT INTO RECODE
VALUES('user18',41,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user18',62,TO_DATE('170704','YYMMDD'));
INSERT INTO RECODE
VALUES('user18',14,TO_DATE('170721','YYMMDD'));
INSERT INTO RECODE
VALUES('user19',69,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user19',11,TO_DATE('170725','YYMMDD'));
INSERT INTO RECODE
VALUES('user19',46,TO_DATE('170708','YYMMDD'));
INSERT INTO RECODE
VALUES('user19',23,TO_DATE('170721','YYMMDD'));
INSERT INTO RECODE
VALUES('user19',65,TO_DATE('170716','YYMMDD'));
INSERT INTO RECODE
VALUES('user20',26,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user20',17,TO_DATE('170701','YYMMDD'));
INSERT INTO RECODE
VALUES('user20',51,TO_DATE('170727','YYMMDD'));
INSERT INTO RECODE
VALUES('user20',95,TO_DATE('170714','YYMMDD'));
INSERT INTO RECODE
VALUES('user20',3,TO_DATE('170721','YYMMDD'));
INSERT INTO RECODE
VALUES('user21',81,TO_DATE('170705','YYMMDD'));
INSERT INTO RECODE
VALUES('user21',97,TO_DATE('170701','YYMMDD'));
INSERT INTO RECODE
VALUES('user21',10,TO_DATE('170715','YYMMDD'));
INSERT INTO RECODE
VALUES('user21',52,TO_DATE('170711','YYMMDD'));
INSERT INTO RECODE
VALUES('user21',71,TO_DATE('170708','YYMMDD'));
INSERT INTO RECODE
VALUES('user22',61,TO_DATE('170712','YYMMDD'));
INSERT INTO RECODE
VALUES('user22',47,TO_DATE('170725','YYMMDD'));
INSERT INTO RECODE
VALUES('user22',41,TO_DATE('170729','YYMMDD'));
INSERT INTO RECODE
VALUES('user22',95,TO_DATE('170703','YYMMDD'));
INSERT INTO RECODE
VALUES('user22',45,TO_DATE('170715','YYMMDD'));
INSERT INTO RECODE
VALUES('user23',17,TO_DATE('170705','YYMMDD'));
INSERT INTO RECODE
VALUES('user23',68,TO_DATE('170725','YYMMDD'));
INSERT INTO RECODE
VALUES('user23',69,TO_DATE('170707','YYMMDD'));
INSERT INTO RECODE
VALUES('user23',13,TO_DATE('170728','YYMMDD'));
INSERT INTO RECODE
VALUES('user23',12,TO_DATE('170711','YYMMDD'));
INSERT INTO RECODE
VALUES('user24',22,TO_DATE('170730','YYMMDD'));
INSERT INTO RECODE
VALUES('user24',65,TO_DATE('170709','YYMMDD'));
INSERT INTO RECODE
VALUES('user24',4,TO_DATE('170710','YYMMDD'));
INSERT INTO RECODE
VALUES('user24',90,TO_DATE('170727','YYMMDD'));
INSERT INTO RECODE
VALUES('user24',44,TO_DATE('170713','YYMMDD'));
INSERT INTO RECODE
VALUES('user25',40,TO_DATE('170727','YYMMDD'));
INSERT INTO RECODE
VALUES('user25',17,TO_DATE('170716','YYMMDD'));
INSERT INTO RECODE
VALUES('user25',5,TO_DATE('170713','YYMMDD'));
INSERT INTO RECODE
VALUES('user25',79,TO_DATE('170730','YYMMDD'));
INSERT INTO RECODE
VALUES('user25',60,TO_DATE('170706','YYMMDD'));
INSERT INTO RECODE
VALUES('user26',59,TO_DATE('170718','YYMMDD'));
INSERT INTO RECODE
VALUES('user26',90,TO_DATE('170704','YYMMDD'));
INSERT INTO RECODE
VALUES('user26',100,TO_DATE('170726','YYMMDD'));
INSERT INTO RECODE
VALUES('user26',69,TO_DATE('170703','YYMMDD'));
INSERT INTO RECODE
VALUES('user26',81,TO_DATE('170709','YYMMDD'));
INSERT INTO RECODE
VALUES('user27',70,TO_DATE('170709','YYMMDD'));
INSERT INTO RECODE
VALUES('user27',76,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user27',30,TO_DATE('17072','YYMMDD'));
INSERT INTO RECODE
VALUES('user27',15,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user27',3,TO_DATE('170718','YYMMDD'));
INSERT INTO RECODE
VALUES('user28',33,TO_DATE('170710','YYMMDD'));
INSERT INTO RECODE
VALUES('user28',20,TO_DATE('170713','YYMMDD'));
INSERT INTO RECODE
VALUES('user28',7,TO_DATE('170729','YYMMDD'));
INSERT INTO RECODE
VALUES('user28',99,TO_DATE('170707','YYMMDD'));
INSERT INTO RECODE
VALUES('user28',71,TO_DATE('170718','YYMMDD'));
INSERT INTO RECODE
VALUES('user29',68,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user29',81,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user29',70,TO_DATE('170713','YYMMDD'));
INSERT INTO RECODE
VALUES('user29',52,TO_DATE('170720','YYMMDD'));
INSERT INTO RECODE
VALUES('user29',67,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user30',55,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user30',43,TO_DATE('170723','YYMMDD'));
INSERT INTO RECODE
VALUES('user30',45,TO_DATE('170706','YYMMDD'));
INSERT INTO RECODE
VALUES('user30',77,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user30',5,TO_DATE('170713','YYMMDD'));
INSERT INTO RECODE
VALUES('user31',43,TO_DATE('170731','YYMMDD'));
INSERT INTO RECODE
VALUES('user31',34,TO_DATE('170714','YYMMDD'));
INSERT INTO RECODE
VALUES('user31',91,TO_DATE('170709','YYMMDD'));
INSERT INTO RECODE
VALUES('user31',39,TO_DATE('170729','YYMMDD'));
INSERT INTO RECODE
VALUES('user31',94,TO_DATE('170717','YYMMDD'));
INSERT INTO RECODE
VALUES('user32',98,TO_DATE('170703','YYMMDD'));
INSERT INTO RECODE
VALUES('user32',32,TO_DATE('170710','YYMMDD'));
INSERT INTO RECODE
VALUES('user32',42,TO_DATE('170709','YYMMDD'));
INSERT INTO RECODE
VALUES('user32',24,TO_DATE('170719','YYMMDD'));
INSERT INTO RECODE
VALUES('user32',61,TO_DATE('170730','YYMMDD'));


INSERT INTO USERBOOK
VALUES('user01',68,TO_DATE('170711','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user01',1,TO_DATE('170711','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user01',25,TO_DATE('170712','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user01',59,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user01',65,TO_DATE('170724','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user02',46,TO_DATE('170702','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user02',28,TO_DATE('170701','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user02',92,TO_DATE('170711','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user02',43,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user02',37,TO_DATE('170723','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user03',5,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user03',54,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user03',83,TO_DATE('170714','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user03',17,TO_DATE('170731','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user03',96,TO_DATE('170703','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user04',27,TO_DATE('170723','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user04',39,TO_DATE('170716','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user04',13,TO_DATE('170710','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user04',100,TO_DATE('170731','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user04',95,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user05',12,TO_DATE('170729','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user05',34,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user05',65,TO_DATE('170704','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user05',14,TO_DATE('170714','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user05',69,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user06',45,TO_DATE('170704','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user06',58,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user06',60,TO_DATE('170712','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user06',42,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user06',79,TO_DATE('170702','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user07',36,TO_DATE('170710','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user07',43,TO_DATE('170726','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user07',7,TO_DATE('170710','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user07',44,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user07',49,TO_DATE('170714','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user08',6,TO_DATE('170712','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user08',30,TO_DATE('170719','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user08',51,TO_DATE('170705','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user08',2,TO_DATE('170703','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user08',49,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user09',24,TO_DATE('170707','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user09',55,TO_DATE('170729','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user09',41,TO_DATE('170702','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user09',77,TO_DATE('170707','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user09',9,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user10',40,TO_DATE('170719','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user10',24,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user10',39,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user10',83,TO_DATE('170730','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user10',42,TO_DATE('170721','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user11',16,TO_DATE('170729','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user11',59,TO_DATE('170721','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user11',31,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user11',7,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user11',87,TO_DATE('170723','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user12',46,TO_DATE('170731','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user12',73,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user12',30,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user12',74,TO_DATE('170725','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user12',13,TO_DATE('170714','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user13',91,TO_DATE('170724','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user13',37,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user13',68,TO_DATE('170705','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user13',75,TO_DATE('170703','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user13',53,TO_DATE('170702','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user14',51,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user14',25,TO_DATE('170716','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user14',31,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user14',92,TO_DATE('170715','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user14',38,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user15',88,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user15',84,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user15',10,TO_DATE('170704','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user15',59,TO_DATE('170701','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user15',89,TO_DATE('170711','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user16',47,TO_DATE('170706','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user16',31,TO_DATE('170710','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user16',69,TO_DATE('170715','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user16',92,TO_DATE('170702','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user16',56,TO_DATE('170708','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user17',60,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user17',38,TO_DATE('170704','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user17',84,TO_DATE('170704','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user17',42,TO_DATE('170706','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user17',51,TO_DATE('170707','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user18',37,TO_DATE('170731','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user18',21,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user18',22,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user18',100,TO_DATE('170707','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user18',85,TO_DATE('170715','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user19',35,TO_DATE('170705','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user19',100,TO_DATE('170723','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user19',39,TO_DATE('170707','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user19',89,TO_DATE('170719','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user19',68,TO_DATE('170724','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user20',94,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user20',84,TO_DATE('170704','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user20',22,TO_DATE('170714','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user20',18,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user20',15,TO_DATE('170729','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user21',17,TO_DATE('170719','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user21',52,TO_DATE('170726','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user21',50,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user21',57,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user21',4,TO_DATE('170714','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user22',9,TO_DATE('170725','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user22',10,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user22',3,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user22',86,TO_DATE('170703','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user22',44,TO_DATE('170725','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user23',88,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user23',4,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user23',1,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user23',19,TO_DATE('170705','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user23',97,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user24',82,TO_DATE('170712','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user24',99,TO_DATE('170729','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user24',58,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user24',23,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user24',93,TO_DATE('170701','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user25',80,TO_DATE('170725','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user25',58,TO_DATE('170725','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user25',92,TO_DATE('170723','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user25',89,TO_DATE('170707','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user25',12,TO_DATE('170730','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user26',35,TO_DATE('170721','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user26',56,TO_DATE('170731','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user26',47,TO_DATE('170724','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user26',87,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user26',34,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user27',43,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user27',17,TO_DATE('170706','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user27',99,TO_DATE('170727','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user27',52,TO_DATE('170731','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user27',100,TO_DATE('170709','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user28',77,TO_DATE('170724','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user28',90,TO_DATE('170724','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user28',13,TO_DATE('170723','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user28',11,TO_DATE('170728','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user28',70,TO_DATE('170717','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user29',89,TO_DATE('170706','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user29',90,TO_DATE('170710','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user29',24,TO_DATE('170704','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user29',86,TO_DATE('170712','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user29',88,TO_DATE('170703','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user30',27,TO_DATE('170726','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user30',58,TO_DATE('170705','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user30',33,TO_DATE('170706','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user30',55,TO_DATE('170716','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user30',90,TO_DATE('170723','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user31',30,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user31',93,TO_DATE('170713','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user31',56,TO_DATE('170705','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user31',50,TO_DATE('170725','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user31',13,TO_DATE('170702','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user32',61,TO_DATE('170714','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user32',54,TO_DATE('170719','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user32',24,TO_DATE('170720','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user32',97,TO_DATE('170705','YYMMDD'));
INSERT INTO USERBOOK
VALUES('user32',30,TO_DATE('170710','YYMMDD'));
