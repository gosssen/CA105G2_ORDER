--------------------------------------------------------
--       _________________   ___      _____           --
--       | ____|_   _|_ _|___| | ____|_   _|__        --
--       |  _|   | |  | |/ __| |/ / _ \| |/ __|       --
--       | |___  | |  | | (__|   <  __/| |\__ \       -- 
--       |_____| |_| |___\___|_|\_\___||_||___/       --
--                                                    --
--------------------------------------------------------
--            _    _ _ _____     _     _              --
--           / \  | | |_   _|_ _| |__ | | ___         --
--          / _ \ | | | | |/ _` | '_ \| |/ _ \        --
--         / ___ \| | | | | (_| | |_) | |  __/        --
--        /_/   \_\_|_| |_|\__,_|_.__/|_|\___|        --
--                                                    --
--------------------------------------------------------
 
--------------------------------------------------------
-------------------------備忘錄--------------------------
-- • MEMBER表格大頭貼未新增
-- • TRANSACTION_HISTORY表格上線時可使用DEFAULT CURRENT_TIMESTAMP,新增資料時會自動填入日期時間(但不包含修改資料時)
--------------------------------------------------------



--------------------------------------------------------
--  丟掉表格
--------------------------------------------------------
alter session set deferred_segment_creation=false;

-----DROP TABLE-----
DROP TABLE ORDER_DETAIL;
DROP TABLE ORDER_HISTORY;

DROP TABLE FORUM;
DROP TABLE GROUP_MEMBER;
DROP TABLE GROUP_OPEN;

DROP TABLE FAVORITE_GOODS;
DROP TABLE GOODS_QA;
DROP TABLE GOODS;

DROP TABLE RESALE_ORD;
DROP TABLE TICKET;
DROP TABLE TICKET_ORDER;

DROP TABLE ADVERTISEMENT;
DROP TABLE FAVORITE_EVENT;

DROP TABLE SEATING_AREA ;
DROP TABLE TICKET_TYPE ;
DROP TABLE EVENT; 
DROP TABLE EVENT_TITLE;

DROP TABLE VENUE;
DROP TABLE TICKET_REFUND_POLICY;
DROP TABLE EVENT_CLASSIFICATION;

DROP TABLE PERMISSION;
DROP TABLE PERMISSION_LIST;
DROP TABLE ADMINISTRATOR;
DROP TABLE NEWS;
DROP TABLE NEWS_CLASSIFICATION;
DROP TABLE TRANSACTION_HISTORY;
DROP TABLE FAQ;
DROP TABLE MEMBER;



-----DROP SEQUENCE-----

DROP SEQUENCE ORDER_HISTORY_seq;

DROP SEQUENCE GROUP_NO_SEQ;
DROP SEQUENCE FORUM_SEQ;

DROP SEQUENCE GOODS_QA_SEQ;
DROP SEQUENCE GOODS_SEQ;

DROP SEQUENCE TICKET_SEQ;
DROP SEQUENCE TICKET_ORDER_SEQ;
DROP SEQUENCE RESALE_ORD_SEQ;

DROP SEQUENCE AD_SEQ;
DROP SEQUENCE VENUE_SEQ;
DROP SEQUENCE EVETIT_SEQ;
DROP SEQUENCE EVE_SEQ;
DROP SEQUENCE TICTYPE_SEQ;
DROP SEQUENCE TICAREA_SEQ;

DROP SEQUENCE permission_list_no_seq;
DROP SEQUENCE administrator_no_seq;
DROP SEQUENCE news_N_seq;
DROP SEQUENCE news_S_seq;
DROP SEQUENCE news_E_seq;
DROP SEQUENCE transaction_history_no_seq;
DROP SEQUENCE faq_no_seq;
DROP SEQUENCE member_no_seq;



----------------------------------------------------------------------------------------------------------------
--  <其他開始>
----------------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  建立表格
--------------------------------------------------------
--------------------------------------------------------
--  for Table MEMBER
--------------------------------------------------------
CREATE TABLE MEMBER (
  MEMBER_NO  Varchar2(7) PRIMARY KEY NOT NULL, 
  MEMBER_FULLNAME  VARCHAR2(20), 
  EMAIL  VARCHAR2(50) NOT NULL, 
  PHONE  VARCHAR2(11), 
  IDCARD  VARCHAR2(10), 
  MEMBER_ACCOUNT  VARCHAR2(20), 
  MEMBER_PASSWORD  VARCHAR2(20), 
  EWALLET_BALANCE  NUMBER(6,0), 
  CREATION_DATE  TIMESTAMP, 
  PROFILE_PICTURE  BLOB, 
  MEMBER_STATUS  VARCHAR2(20) NOT NULL,
  THIRDUID VARCHAR2(50)
  );
    
CREATE SEQUENCE member_no_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '吳冠宏', 'vladylo98@gmail.com', '0911-484363', 'H179034814' , 'vladylo98' , '123456' , '98376' , to_timestamp('1991/9/1  18:27:31','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '路依珊', 'LuoYiShan@rhyta.com', '0933-169030', 'Y274969950' , 'Thos1958' , 'eoGh4ohy' , '2245' , to_timestamp('1991/11/13  00:42:24','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '姚儒玉', 'YaoRuYu@jourrapide.com', '0902-277481' , 'V265219642' , 'Toopece40' , 'ooy0Eec0zoo' , '4586' , to_timestamp('1992/10/22  09:08:55','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '潘怡帆', 'PanYiFan@dayrep.com', '0937-626715' , 'T270735473' , 'Hunned' , 'rieZoow2' , '6543' , to_timestamp('1993/7/30  14:08:07','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '莊睿倩', 'ZhuangRuiQing@dayrep.com', '0937-521590' , 'H200290577' , 'Etwithe61' , 'Cie6feow' , '82015' , to_timestamp('1996/6/10  09:16:52','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '戴佳芳', 'DaiJiaFang@dayrep.com', '0994-464268' , 'V271833158' , 'Anducalliew' , 'ieGhae7yai' , '7071' , to_timestamp('1998/9/4  22:18:10','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '尹丞恩', 'YinChengEn@teleworm.us', '0917-059007' , 'E127239706' , 'Lorm1979' , 'petadohTh9' , '2925' , to_timestamp('1998/12/15  21:15:07','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '郭志廷', 'GuoZhiTing@jourrapide.com', '0907-434925', 'L165236446' , 'Foody1996' , 'aeHoo6shi' , '5365' , to_timestamp('1999/5/31  04:54:17','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '葉佳芳', 'SheJiaFang@armyspy.com', '0958-557370' , 'L209596367' , 'Puntore' , 'rahMee4ee' , '7865' , to_timestamp('2002/5/19  00:54:14','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '羅伯諺', 'LuoBaYan@jourrapide.com', '0902-456073' , 'R118671723' , 'Andelibubled' , 'VimiNg1eom' , '2807' , to_timestamp('2003/7/2  04:22:27','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '傅維宇', 'FuYiYu@rhyta.com', '0985-692227' , 'I169183305' , 'Warvervaind' , 'Juang2xifo' , '1388' , to_timestamp('2004/2/5  17:32:37','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '方怡萱', 'WangYiXuan@dayrep.com', '0977-966322' , 'O285639654' , 'Salletch' , 'pah7Aej7' , '1415' , to_timestamp('2004/11/25  11:51:22','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '牛雅琪', 'NiuYaQi@jourrapide.com', '0962-409820' , 'P296829261' , 'Ingend1956' , 'die4shohShae' , '7819' , to_timestamp('2006/5/27  09:14:25','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '蘇靜宜', 'SuJingYi@rhyta.com', '0927-178732' , 'Y264467921' , 'Eatexturink' , 'woaZ5pooG6oa' , '47902' , to_timestamp('2008/3/18  12:09:40','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '史琬婷', 'ShiWanTing@teleworm.us', '0947-324070' , 'C276106794' , 'Thentry' , 'Feix9teu8hi' , '1683' , to_timestamp('2011/4/2  00:12:20','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '吳隆衣', 'WuLongYi@jourrapide.com', '0989-092989' , 'C141647806' , 'Tintles' , 'aiDee0zeeTh' , '3880' , to_timestamp('2012/3/23  19:49:48','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '郭貿昌', 'GuoMaoChang@rhyta.com', '0916-441993' , 'N110910088' , 'Howeenton' , 'ew7Uo0ai' , '6602' , to_timestamp('2013/9/30  11:00:06','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '白承峰', 'BoZhengFeng@dayrep.com', '0964-194913' , 'A160072505' , 'Thadince' , 'acheiY1kaef' , '1932' , to_timestamp('2016/10/10  06:46:39','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '洪淑惠', 'HongChuHui@teleworm.us', '0987-653650' , 'E249007273' , 'Thaide1992' , 'nai0eiR6ifu' , '3423' , to_timestamp('2018/7/25  20:38:16','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );
Insert into MEMBER (MEMBER_NO,MEMBER_FULLNAME,EMAIL,PHONE,IDCARD,MEMBER_ACCOUNT,MEMBER_PASSWORD,EWALLET_BALANCE,CREATION_DATE,PROFILE_PICTURE,MEMBER_STATUS) values ('M'||LPAD(to_char(member_no_seq.NEXTVAL), 6, '0'), '段嘉瑩', 'DuanJiaYing@teleworm.us', '0972-258975' , 'A289803497' , 'Betre1933' , 'UMah2ohx' , '65693' , to_timestamp('2018/12/10  03:00:30','YYYY/MM/DD   HH24:MI:SS') , null , 'normal' );



--------------------------------------------------------
--  for Table FAQ
--------------------------------------------------------
CREATE TABLE FAQ (
  FAQ_NO    VARCHAR2(6)  PRIMARY KEY  NOT NULL, 
  QUESTION  VARCHAR2(1000), 
  ANSWER VARCHAR2(4000), 
  FAQ_CLASSIFICATION VARCHAR2(20));
    
CREATE SEQUENCE faq_no_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'如何加入會員？','每人限制僅可申請一個會員帳號，此會員帳號需綁定電子郵件進行驗證，通過驗證後，才可開始於網站購票。','購票');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'如何加入會員？','每人限制僅可申請一個會員帳號，此會員帳號需綁定電子郵件進行驗證，通過驗證後，才可開始於網站購票。','購物');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'為什麼我收不到系統通知信？','請先檢查垃圾郵件。','其他');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'可以在超商購票嗎？','本系統目前僅供網站與APP購票。','購票');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'一筆訂單最多可買幾張票？','購票張數依活動有不同的規定，購票前請於活動資訊查詢每個活動的購票需知。','購票');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'退票相關流程為何？','依文化部於中華民國107年5月16日文藝字第10710128232號公告','退票');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'可以換票嗎？','換票等同於退票，請將原先購買的票券辦理退票，再另行購買，或可至票券轉讓平台進行轉讓','退票');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'購票可以開立發票嗎？','票券內含代徵娛樂稅，免開立發票。','其他');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'購物流程為何？','STEP 1：請先加入會員。STEP 2：將您欲購買的商品，放入購物車，並開始進入結帳程序。STEP 3：選擇付款方式以及填寫您的收貨地址。STEP 4：完成結帳程序。','購物');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'團購是什麼？','就是大家一起購買，透過團體訂購爭取折扣。','團購');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'為什麼沒人加入我發起的團購？','主動尋找團員才是合購的成功之道哦！如果您剛開始使用合購，建議您先運用自己的人脈快速成團，並慢慢吸納一些固定的團員，如此您的合購才會越來越成功哦。','團購');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'可以轉讓票嗎？','請至票券轉讓平台進行轉讓。','轉讓票');
Insert into FAQ (FAQ_NO,QUESTION,ANSWER,FAQ_CLASSIFICATION) values ('FAQ'||LPAD(to_char(faq_no_seq.NEXTVAL), 3, '0'),'為什麼我下載不了APP？','因為我們並沒有將APP上架。','其他');



--------------------------------------------------------
--  for Table TRANSACTION_HISTORY
--------------------------------------------------------
CREATE TABLE TRANSACTION_HISTORY (
  TRANSACTION_HISTORY_NO  VARCHAR2(11) PRIMARY KEY NOT NULL,
  MEMBER_NO  VARCHAR2(7),
  TRANSACTION_DATETIME  TIMESTAMP,
  TRANSACTION_CATEGORY  VARCHAR2(20),
  EXPENDITURES  NUMBER(6,0) CHECK (EXPENDITURES >= 0),
  RECEIPT  NUMBER(6,0) CHECK (RECEIPT >= 0),
  EWALLET_BALANCE  NUMBER(6,0) CHECK (EWALLET_BALANCE >= 0),
  DESCRIPTION  VARCHAR2(50),
  CONSTRAINT FK_MEMBER_NO FOREIGN KEY(MEMBER_NO) REFERENCES MEMBER(MEMBER_NO));
    
CREATE SEQUENCE transaction_history_no_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into TRANSACTION_HISTORY values 
('20180225'||'-'||LPAD(to_char(transaction_history_no_seq.NEXTVAL), 2, '0')
,'M000001'
, to_timestamp('2018/2/5  17:32:37','YYYY/MM/DD  HH24:MI:SS') 
,'購票'
,'2500'
,'0'
,'1000'
,'TO_20181225_000001');
Insert into TRANSACTION_HISTORY values 
('20180828'||'-'||LPAD(to_char(transaction_history_no_seq.NEXTVAL), 2, '0')
,'M000005'
, to_timestamp('2018/8/28  10:12:12','YYYY/MM/DD  HH24:MI:SS') 
,'購票'
,'5800'
,'0'
,'9500'
,'TO_20181225_000002');
Insert into TRANSACTION_HISTORY values 
('20181205'||'-'||LPAD(to_char(transaction_history_no_seq.NEXTVAL), 2, '0')
,'M000014'
, to_timestamp('2018/12/5  19:55:39','YYYY/MM/DD  HH24:MI:SS') 
,'購票'
,'1000'
,'0'
,'200'
,'TO_20181225_000003');



--------------------------------------------------------
--  for Table NEWS_CLASSIFICATION
--------------------------------------------------------
CREATE TABLE NEWS_CLASSIFICATION (
  NEWS_CLASSIFICATION_NO  VARCHAR2(1) PRIMARY KEY  NOT NULL,
  NEWS_CLASSIFICATION  VARCHAR2(20));


Insert into NEWS_CLASSIFICATION (NEWS_CLASSIFICATION_NO,NEWS_CLASSIFICATION) values ('N','最新消息');
Insert into NEWS_CLASSIFICATION (NEWS_CLASSIFICATION_NO,NEWS_CLASSIFICATION) values ('S','網站公告');
Insert into NEWS_CLASSIFICATION (NEWS_CLASSIFICATION_NO,NEWS_CLASSIFICATION) values ('E','節目異動');



--------------------------------------------------------
--  for Table NEWS
--------------------------------------------------------
CREATE TABLE NEWS (
  NEWS_NO  VARCHAR2(3)  PRIMARY KEY  NOT NULL,
  NEWS_CLASSIFICATION_NO  VARCHAR2(1),
  NEWS_TITLE  VARCHAR2(300),
  NEWS_CONTENT  VARCHAR2(4000),
  ANNOUNCE_DATE  DATE,
  ADMINISTRATOR_NO  VARCHAR2(4),
  CONSTRAINT NEWS_CLASSIFICATION_NO_FK FOREIGN KEY(NEWS_CLASSIFICATION_NO) REFERENCES NEWS_CLASSIFICATION(NEWS_CLASSIFICATION_NO));

CREATE SEQUENCE news_N_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE SEQUENCE news_S_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

CREATE SEQUENCE news_E_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into NEWS (NEWS_NO,NEWS_CLASSIFICATION_NO,NEWS_TITLE,NEWS_CONTENT,ANNOUNCE_DATE,ADMINISTRATOR_NO) 
values (
  'S'||LPAD(to_char(news_S_seq.NEXTVAL), 2, '0')
  ,'S'
  ,'ETIckeTs娛樂會員加入辦法'
  ,'會員加入辦法如下：
    •每人限制僅可申請一個會員帳號，此會員帳號需綁定電子郵件。
    •電子郵件需進行驗證，通過驗證後，才可開始於ETIckeTs娛樂網站購票購物。
    •選定之會員帳號，經電子郵件驗證完成後，恕無法要求更換，請務必謹慎選定常用帳號。
    •請務必詳關會員服務條款及隱私權條款，確認同意後再進行驗證作業。'
  , TO_DATE('1970/1/1','YYYY/MM/DD') 
  ,'A001'
  );

Insert into NEWS (NEWS_NO,NEWS_CLASSIFICATION_NO,NEWS_TITLE,NEWS_CONTENT,ANNOUNCE_DATE,ADMINISTRATOR_NO) 
values (
  'S'||LPAD(to_char(news_S_seq.NEXTVAL), 2, '0')
  ,'S'
  ,'來信客服信箱查詢方式之說明'
  ,'為能清楚明確地協助處理信件問題，煩請於上班時間來信ETIckeTs娛樂客服信箱ca105.java.002@gmail.com（適逢國定假日暫停服務）。
    來信的信件內容，請儘量包含下列項目：
　 ◆信件主旨：問題簡述
　 ◆信件內容：（請務必用key in方式附上）
　　  (1)購票會員帳號(Email)：
　　  (2)問題詳述：（請避免只提供不完整敘述及資訊）
    在此先感謝各位的配合，ETIckeTs娛樂客服將依來信之問題描述，儘快協助處理及回覆，謝謝！'
  , TO_DATE('1970/1/1','YYYY/MM/DD') 
  ,'A001'
  );
  
Insert into NEWS (NEWS_NO,NEWS_CLASSIFICATION_NO,NEWS_TITLE,NEWS_CONTENT,ANNOUNCE_DATE,ADMINISTRATOR_NO) 
values (
  'N'||LPAD(to_char(news_N_seq.NEXTVAL), 2, '0')
  ,'N'
  ,'電子錢包儲值方法'
  ,'電子錢包儲值方法如下：
    •本網站僅限信用卡繳款。'
  , TO_DATE('1970/1/1','YYYY/MM/DD') 
  ,'A001'
  );



--------------------------------------------------------
--  for Table ADMINISTRATOR
--------------------------------------------------------
CREATE TABLE ADMINISTRATOR (
  ADMINISTRATOR_NO  VARCHAR2(4)  PRIMARY KEY  NOT NULL,
  ADMINISTRATOR_NAME  VARCHAR2(20),
  ADMINISTRATOR_ACCOUNT  VARCHAR2(20),
  ADMINISTRATOR_PASSWORD  VARCHAR2(20),
  CREATION_DATE  TIMESTAMP,
  ADMINISTRATOR_PICTURE  BLOB,
  ADMINISTRATOR_STATUS  VARCHAR2(20)  NOT NULL);
    
CREATE SEQUENCE administrator_no_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into ADMINISTRATOR (ADMINISTRATOR_NO,ADMINISTRATOR_NAME,ADMINISTRATOR_ACCOUNT,ADMINISTRATOR_PASSWORD,CREATION_DATE,ADMINISTRATOR_PICTURE,ADMINISTRATOR_STATUS)
values ('A'||LPAD(to_char(administrator_no_seq.NEXTVAL), 3, '0'),'吳永志','peter','123456',to_timestamp('1970/1/1  00:00:00','YYYY/MM/DD HH24:MI:SS'),null,'normal');
Insert into ADMINISTRATOR (ADMINISTRATOR_NO,ADMINISTRATOR_NAME,ADMINISTRATOR_ACCOUNT,ADMINISTRATOR_PASSWORD,CREATION_DATE,ADMINISTRATOR_PICTURE,ADMINISTRATOR_STATUS)
values ('A'||LPAD(to_char(administrator_no_seq.NEXTVAL), 3, '0'),'郭小明','kmj','kmj',to_timestamp('1970/1/1  00:00:00','YYYY/MM/DD HH24:MI:SS'),null,'normal');
Insert into ADMINISTRATOR (ADMINISTRATOR_NO,ADMINISTRATOR_NAME,ADMINISTRATOR_ACCOUNT,ADMINISTRATOR_PASSWORD,CREATION_DATE,ADMINISTRATOR_PICTURE,ADMINISTRATOR_STATUS)
values ('A'||LPAD(to_char(administrator_no_seq.NEXTVAL), 3, '0'),'吳口隹石頁','wilson27561','wilson27561',to_timestamp('1970/1/1  00:00:00','YYYY/MM/DD HH24:MI:SS'),null,'normal');
Insert into ADMINISTRATOR (ADMINISTRATOR_NO,ADMINISTRATOR_NAME,ADMINISTRATOR_ACCOUNT,ADMINISTRATOR_PASSWORD,CREATION_DATE,ADMINISTRATOR_PICTURE,ADMINISTRATOR_STATUS)
values ('A'||LPAD(to_char(administrator_no_seq.NEXTVAL), 3, '0'),'戴佩佩','blue1166nina','blue1166nina',to_timestamp('1970/1/1  00:00:00','YYYY/MM/DD HH24:MI:SS'),null,'normal');
Insert into ADMINISTRATOR (ADMINISTRATOR_NO,ADMINISTRATOR_NAME,ADMINISTRATOR_ACCOUNT,ADMINISTRATOR_PASSWORD,CREATION_DATE,ADMINISTRATOR_PICTURE,ADMINISTRATOR_STATUS)
values ('A'||LPAD(to_char(administrator_no_seq.NEXTVAL), 3, '0'),'李小賢','shane08302002','shane08302002',to_timestamp('1970/1/1  00:00:00','YYYY/MM/DD HH24:MI:SS'),null,'normal');
Insert into ADMINISTRATOR (ADMINISTRATOR_NO,ADMINISTRATOR_NAME,ADMINISTRATOR_ACCOUNT,ADMINISTRATOR_PASSWORD,CREATION_DATE,ADMINISTRATOR_PICTURE,ADMINISTRATOR_STATUS)
values ('A'||LPAD(to_char(administrator_no_seq.NEXTVAL), 3, '0'),'黃bear','gn59077474','gn59077474',to_timestamp('1970/1/1  00:00:00','YYYY/MM/DD HH24:MI:SS'),null,'normal');
Insert into ADMINISTRATOR (ADMINISTRATOR_NO,ADMINISTRATOR_NAME,ADMINISTRATOR_ACCOUNT,ADMINISTRATOR_PASSWORD,CREATION_DATE,ADMINISTRATOR_PICTURE,ADMINISTRATOR_STATUS)
values ('A'||LPAD(to_char(administrator_no_seq.NEXTVAL), 3, '0'),'吳老森','inoplattw','inoplattw',to_timestamp('1970/1/1  00:00:00','YYYY/MM/DD HH24:MI:SS'),null,'normal');
Insert into ADMINISTRATOR (ADMINISTRATOR_NO,ADMINISTRATOR_NAME,ADMINISTRATOR_ACCOUNT,ADMINISTRATOR_PASSWORD,CREATION_DATE,ADMINISTRATOR_PICTURE,ADMINISTRATOR_STATUS)
values ('A'||LPAD(to_char(administrator_no_seq.NEXTVAL), 3, '0'),'李晨','lichi750626','lichi750626',to_timestamp('1970/1/1  00:00:00','YYYY/MM/DD HH24:MI:SS'),null,'normal');



--------------------------------------------------------
--  for Table PERMISSION_LIST
--------------------------------------------------------
CREATE TABLE PERMISSION_LIST (
  PERMISSION_LIST_NO  VARCHAR2(4)  PRIMARY KEY  NOT NULL,
  PERMISSION  VARCHAR2(50));
    
CREATE SEQUENCE permission_list_no_seq
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'公告管理');
Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'商品管理');
Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'團購管理');
Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'會員');
Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'活動管理');
Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'購票狀況查詢');
Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'常見問題管理');
Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'管理員管理');
Insert into PERMISSION_LIST (PERMISSION_LIST_NO,PERMISSION) values ('PL'||LPAD(to_char(permission_list_no_seq.NEXTVAL), 2, '0'),'場地管理');



--------------------------------------------------------
--  for Table PERMISSION
--------------------------------------------------------
CREATE TABLE PERMISSION (
  PERMISSION_LIST_NO  VARCHAR2(4), 
  ADMINISTRATOR_NO  VARCHAR2(4), 
  CONSTRAINT FK_PERMISSION_LIST_NO FOREIGN KEY(PERMISSION_LIST_NO) REFERENCES PERMISSION_LIST(PERMISSION_LIST_NO),
  CONSTRAINT FK_ADMINISTRATOR_NO FOREIGN KEY(ADMINISTRATOR_NO) REFERENCES ADMINISTRATOR(ADMINISTRATOR_NO));
    
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL01','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL02','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL03','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL04','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL05','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL06','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL07','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL08','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL09','A001');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL01','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL02','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL03','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL04','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL05','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL06','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL07','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL08','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL09','A002');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL01','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL02','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL03','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL04','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL05','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL06','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL07','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL08','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL09','A003');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL01','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL02','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL03','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL04','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL05','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL06','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL07','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL08','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL09','A004');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL01','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL02','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL03','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL04','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL05','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL06','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL07','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL08','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL09','A005');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL01','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL02','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL03','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL04','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL05','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL06','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL07','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL08','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL09','A006');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL01','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL02','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL03','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL04','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL05','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL06','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL07','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL08','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL09','A007');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL01','A008');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL02','A008');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL03','A008');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL04','A008');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL05','A008');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL06','A008');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL07','A008');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL08','A008');
Insert into PERMISSION (PERMISSION_LIST_NO,ADMINISTRATOR_NO) values ('PL09','A008');
----------------------------------------------------------------------------------------------------------------
--  </其他結束>
----------------------------------------------------------------------------------------------------------------










----------------------------------------------------------------------------------------------------------------
--  <活動開始>
----------------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  建立表格
--------------------------------------------------------
--------------------------------------------------------
--  for Table EVENT_CLASSIFICATION 
--------------------------------------------------------
CREATE TABLE EVENT_CLASSIFICATION(
    EVECLASS_NO VARCHAR2(1) NOT NULL,
    EVECLASS_NAME VARCHAR2(15) NOT NULL,
    
    CONSTRAINT EVECLASS_PK PRIMARY KEY (EVECLASS_NO)
);

INSERT INTO EVENT_CLASSIFICATION VALUES ('A', '演唱會');
INSERT INTO EVENT_CLASSIFICATION VALUES ('B', '音樂會');
INSERT INTO EVENT_CLASSIFICATION VALUES ('C', '音樂劇');
INSERT INTO EVENT_CLASSIFICATION VALUES ('D', '戲劇');
INSERT INTO EVENT_CLASSIFICATION VALUES ('E', '舞蹈');
INSERT INTO EVENT_CLASSIFICATION VALUES ('F', '展覽');
INSERT INTO EVENT_CLASSIFICATION VALUES ('G', '親子');
INSERT INTO EVENT_CLASSIFICATION VALUES ('H', '講座');
INSERT INTO EVENT_CLASSIFICATION VALUES ('I', '運動');
INSERT INTO EVENT_CLASSIFICATION VALUES ('J', '其他');

--------------------------------------------------------
--  for Table TICKET_REFUND_POLICY 
--------------------------------------------------------
CREATE TABLE TICKET_REFUND_POLICY(
    TICREFPOLICY_NO VARCHAR2(4) NOT NULL,
    TICREFPOLICY_NAME VARCHAR2(9) NOT NULL,
    TICREFPOLICY_CONTENT VARCHAR2(500) NOT NULL,
    
    CONSTRAINT TICREFPOLICY_PK PRIMARY KEY (TICREFPOLICY_NO)
);

INSERT INTO TICKET_REFUND_POLICY VALUES ('TRP1','方案一','演出前10天內不可退票，退換票手續費上限為票面價格的10%。');
INSERT INTO TICKET_REFUND_POLICY VALUES ('TRP2','方案二','購票後3天內可退票，退換票手續費上限為票面價格的5%。');
INSERT INTO TICKET_REFUND_POLICY VALUES ('TRP3','方案三','演出前20天內不可退票，退換票手續費上限為票面價格的10%。');
INSERT INTO TICKET_REFUND_POLICY VALUES ('TRP4','方案四','演出日前31天以前退票手續費上限為票面價格的10%。演出日前11~30天退票手續費上限為票面價格的30%。演出日前3~10天退票手續費上限為票面價格的50%。演出日前2天不可退票。');

--------------------------------------------------------
--  for Table VENUE 
--------------------------------------------------------
CREATE TABLE VENUE(
    VENUE_NO VARCHAR2(4) NOT NULL,
    VENUE_NAME VARCHAR2(45) NOT NULL,
    ADDRESS VARCHAR2(150),
    LATITUDE NUMBER(10,8),
    LONGITUDE NUMBER(11,8),
    VENUE_INFO CLOB,
    VENUE_LOCATIONPIC BLOB,
    
    CONSTRAINT VENUE_PK PRIMARY KEY (VENUE_NO)
);

CREATE SEQUENCE VENUE_SEQ 
INCREMENT BY 1 
START WITH 1 
MAXVALUE 9999 
MINVALUE 1 
CYCLE 
NOCACHE;

--------------------------------------------------------
--  for Table EVENT_TITLE (EVETIT)
--------------------------------------------------------
CREATE TABLE EVENT_TITLE(
    EVETIT_NO VARCHAR2(5) NOT NULL,
    EVECLASS_NO VARCHAR2(1) NOT NULL ,
    TICREFPOLICY_NO Varchar2(4) NOT NULL,
    EVETIT_NAME Varchar2(200) NOT NULL ,
    EVETIT_STARTDATE Date,
    EVETIT_ENDDATE Date,
    EVETIT_POSTER BLOB,
    INFO CLOB,
    NOTICES CLOB,
    ETICPURCHASERULES CLOB,
    ETICRULES CLOB,
    REFUNDRULES CLOB,
    EVETIT_SESSIONS Number DEFAULT 0,
    EVETIT_STATUS Varchar2(9) DEFAULT 'temporary',
    LAUNCHDATE Date,
    OFFDATE Date,
    PROMOTIONRANKING Number DEFAULT 1,
    
    CONSTRAINT EVETIT_PK PRIMARY KEY (EVETIT_NO),
    CONSTRAINT EVETIT_FK_EVECLASS FOREIGN KEY (EVECLASS_NO) REFERENCES EVENT_CLASSIFICATION (EVECLASS_NO),
    CONSTRAINT EVETIT_FK_TICREFPOLICY FOREIGN KEY (TICREFPOLICY_NO) REFERENCES TICKET_REFUND_POLICY (TICREFPOLICY_NO)
);

CREATE SEQUENCE EVETIT_SEQ 
INCREMENT BY 1 
START WITH 1 
MAXVALUE 9999 
MINVALUE 1 
CYCLE 
NOCACHE;

--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
CREATE TABLE EVENT(
    EVE_NO VARCHAR2(7) NOT NULL,
    EVETIT_NO VARCHAR2(5) NOT NULL,
    VENUE_NO VARCHAR2(4) NOT NULL,
    EVE_SESSIONNAME VARCHAR2(100),
    EVE_SEATMAP BLOB,
    EVE_STARTDATE Timestamp,
    EVE_ENDDATE Timestamp,
    EVE_ONSALEDATE Timestamp,
    EVE_OFFSALEDATE Timestamp,
    TICLIMIT Number,
    FULLREFUNDENDDATE Timestamp,
    EVE_STATUS Varchar2(6),
    
    CONSTRAINT EVE_PK PRIMARY KEY (EVE_NO),
    CONSTRAINT EVE_FK_EVETIT FOREIGN KEY (EVETIT_NO) REFERENCES EVENT_TITLE (EVETIT_NO),
    CONSTRAINT EVE_FK_VENUE FOREIGN KEY (VENUE_NO) REFERENCES VENUE (VENUE_NO)
); 


CREATE SEQUENCE EVE_SEQ 
INCREMENT BY 1 
START WITH 1 
MAXVALUE 9999 
MINVALUE 1 
CYCLE 
NOCACHE;

--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE)
--------------------------------------------------------
CREATE TABLE TICKET_TYPE(
    TICTYPE_NO VARCHAR2(8) NOT NULL,
    EVE_NO VARCHAR2(7) NOT NULL,
    TICTYPE_COLOR Varchar2(7),
    TICTYPE_NAME Varchar2(30),
    TICTYPE_PRICE Number,
    
    CONSTRAINT TICTYPE_PK PRIMARY KEY (TICTYPE_NO),
    CONSTRAINT TICTYPE_FK_EVE FOREIGN KEY (EVE_NO) REFERENCES EVENT (EVE_NO)
);

CREATE SEQUENCE TICTYPE_SEQ 
INCREMENT BY 1 
START WITH 1 
MAXVALUE 9999 
MINVALUE 1 
CYCLE 
NOCACHE;

--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA)
--------------------------------------------------------
CREATE TABLE SEATING_AREA(
    TICAREA_NO VARCHAR(10) NOT NULL,
    EVE_NO VARCHAR(7) NOT NULL,
    TICTYPE_NO VARCHAR(8) NOT NULL,
    TICAREA_COLOR  VARCHAR2(7),
    TICAREA_NAME Varchar2(20),
    TICTOTALNUMBER Number,
    TICBOOKEDNUMBER Number DEFAULT 0,
    
    CONSTRAINT TICAREA_PK PRIMARY KEY (TICAREA_NO),
    CONSTRAINT TICAREA_FK_EVE FOREIGN KEY (EVE_NO) REFERENCES EVENT (EVE_NO),
    CONSTRAINT TICAREA_FK_TICTYPE FOREIGN KEY (TICTYPE_NO) REFERENCES TICKET_TYPE (TICTYPE_NO)
);

CREATE SEQUENCE TICAREA_SEQ 
INCREMENT BY 1 
START WITH 1 
MAXVALUE 9999 
MINVALUE 1 
CYCLE 
NOCACHE;

--------------------------------------------------------
--  for Table ADVERTISEMENT
--------------------------------------------------------
CREATE TABLE ADVERTISEMENT(
  AD_NO VARCHAR2(6) NOT NULL, 
  EVETIT_NO VARCHAR2(5) NOT NULL, 
  AD_STARTDATE DATE,
  AD_ENDDATE DATE,
  
  CONSTRAINT AD_PK PRIMARY KEY (AD_NO),
  CONSTRAINT AD_FK_EVETIT FOREIGN KEY (EVETIT_NO) REFERENCES EVENT_TITLE(EVETIT_NO)
);

CREATE SEQUENCE AD_SEQ 
INCREMENT BY 1 
START WITH 1 
MAXVALUE 9999 
MINVALUE 1 
CYCLE 
NOCACHE;

--------------------------------------------------------
--  for Table FAVORITE_EVENT
--------------------------------------------------------
CREATE TABLE FAVORITE_EVENT(
    MEMBER_NO VARCHAR2(7) NOT NULL,
    EVETIT_NO VARCHAR2(5) NOT NULL,
    
    CONSTRAINT FAVEVE_FK_EVE FOREIGN KEY (EVETIT_NO) REFERENCES EVENT_TITLE(EVETIT_NO),
    CONSTRAINT FAVEVE_FK_MEM FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER(MEMBER_NO),   
    CONSTRAINT FAVEVE_PK PRIMARY KEY (MEMBER_NO, EVETIT_NO)
);

--------------------------------------------------------
--  for Table TICKET_ORDER
--------------------------------------------------------
CREATE TABLE TICKET_ORDER(
    TICKET_ORDER_NO VARCHAR2(30) NOT NULL,
    MEMBER_NO VARCHAR2(7) NOT NULL,
    TICAREA_NO VARCHAR2(10) NOT NULL,
    TOTAL_PRICE NUMBER(10),
    TOTAL_AMOUNT NUMBER(10),
    TICKET_ORDER_TIME TIMESTAMP,
    PAYMENT_METHOD VARCHAR2(12),
    TICKET_ORDER_STATUS VARCHAR2(12) NOT NULL,
    
    CONSTRAINT TICKET_ORDER_FK_TICAREA FOREIGN KEY (TICAREA_NO) REFERENCES SEATING_AREA (TICAREA_NO),
    CONSTRAINT TICKET_ORDER_FK_MEMBER FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER (MEMBER_NO),
    CONSTRAINT TICKET_ORDER_PK PRIMARY KEY (TICKET_ORDER_NO)
);

CREATE SEQUENCE TICKET_ORDER_SEQ
INCREMENT BY 1 START WITH 1 NOMAXVALUE NOCYCLE NOCACHE;

--------------------------------------------------------
--  for Table TICKET
--------------------------------------------------------
CREATE TABLE TICKET(
    TICKET_NO VARCHAR2(30) NOT NULL,
    TICAREA_NO VARCHAR2(10) NOT NULL,
    TICKET_ORDER_NO VARCHAR2(30) NOT NULL,
    MEMBER_NO VARCHAR2(7) NOT NULL,
    TICKET_STATUS VARCHAR2(9) NOT NULL,
    TICKET_CREATE_TIME TIMESTAMP,
    TICKET_RESALE_STATUS VARCHAR2(12) NOT NULL,
    TICKET_RESALE_PRICE NUMBER(10),
    IS_FROM_RESALE VARCHAR2(3),
    
    CONSTRAINT TICKET_FK_TICAREA FOREIGN KEY (TICAREA_NO) REFERENCES SEATING_AREA (TICAREA_NO),
    CONSTRAINT TICKET_FK_TICKET_ORDER FOREIGN KEY (TICKET_ORDER_NO) REFERENCES TICKET_ORDER (TICKET_ORDER_NO),
    CONSTRAINT TICKET_FK FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER (MEMBER_NO),
    CONSTRAINT TICKET_PK PRIMARY KEY (TICKET_NO)
);

CREATE SEQUENCE TICKET_SEQ
INCREMENT BY 1 START WITH 1 NOMAXVALUE NOCYCLE NOCACHE;

--------------------------------------------------------
--  for Table RESALE_ORD
--------------------------------------------------------
CREATE TABLE RESALE_ORD(
    RESALE_ORDNO VARCHAR2(30) NOT NULL,
    TICKET_NO VARCHAR2(30) NOT NULL,
    MEMBER_SELLER_NO VARCHAR2(7) NOT NULL,
    MEMBER_BUYER_NO VARCHAR2(7),
    RESALE_ORDPRICE NUMBER,
    RESALE_ORDSTATUS VARCHAR2(12) NOT NULL,
    RESALE_ORD_CREATETIME TIMESTAMP NOT NULL,
    RESALE_ORD_COMPLETETIME TIMESTAMP,
    PAYMENT_METHOD VARCHAR2(12),
    CONSTRAINT RESALE_ORD_FK_TICKET FOREIGN KEY (TICKET_NO) REFERENCES TICKET (TICKET_NO),
    CONSTRAINT RESALE_ORD_FK_SELLER FOREIGN KEY (MEMBER_SELLER_NO) REFERENCES MEMBER (MEMBER_NO),
    CONSTRAINT RESALE_ORD_FK_BUYER FOREIGN KEY (MEMBER_BUYER_NO) REFERENCES MEMBER (MEMBER_NO),
    CONSTRAINT RESALE_ORD_PK PRIMARY KEY (RESALE_ORDNO)
);

CREATE SEQUENCE RESALE_ORD_SEQ
INCREMENT BY 1 START WITH 1 NOMAXVALUE NOCYCLE NOCACHE;





----------------------------------------------------------------------------------------------------------------
--  資料輸入 
----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--  THE WEEKND ASIA – LIVE IN TAIPEI　威肯2019台北演唱會 ***E0001***  ****************************************************************************************************E0001***
-----------------------------------------------------------------------------------
--------------------------------------------------------
--  for Table EVENT_TITLE (EVETIT)
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', 'THE WEEKND ASIA – LIVE IN TAIPEI　威肯2019台北演唱會', 
TO_DATE('2019-03-01','YYYY-MM-DD'), TO_DATE('2019-03-02','YYYY-MM-DD'), 2, 'confirmed', 
TO_DATE('2018-10-01','YYYY-MM-DD'), TO_DATE('2019-03-03','YYYY-MM-DD'), '5');
--------------------------------------------------------
-- FOR TABLE VENUE 
--------------------------------------------------------
INSERT INTO VENUE (VENUE_NO, VENUE_NAME, ADDRESS, LATITUDE, LONGITUDE)
VALUES
('V'||LPAD(to_char(VENUE_SEQ.NEXTVAL), 3, '0'), '台北南港C3廣場', '115台灣台北市南港區經貿二路168-188號', 25.0590202, 121.6153664);
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0001', 'V001', '2019/03/01 第一場', 
TO_TIMESTAMP('2019-03-01 19:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-01 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-10-06 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-01 18:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');

INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0001', 'V001', '2019/03/02 第二場', 
TO_TIMESTAMP('2019-03-02 19:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-02 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-10-06 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-02 18:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
--------------------------------------------------------
--  EV00001 2019/3/1第一場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE)
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00001', '#EE7700', '搖滾A區', 6500);
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00001', '#BB5500', '搖滾B區', 5800);
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00001', '#A0522D', '搖滾C區', 3800);
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00001', '#8B4513', '搖滾D區', 2500);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA)
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00001', 'ET000001', '#EE7700', '搖滾A區', 800, 800);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00001', 'ET000002', '#BB5500', '搖滾B區', 800, 500);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00001', 'ET000003', '#A0522D', '搖滾C區', 800, 100);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00001', 'ET000004', '#8B4513', '搖滾D區', 500, 500);
--------------------------------------------------------
--  EV00002 2019/3/2第二場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE)
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00002', '#EE7700', '搖滾A區', 6500);
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00002', '#BB5500', '搖滾B區', 5800);
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00002', '#A0522D', '搖滾C區', 3800);
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00002', '#8B4513', '搖滾D區', 2500);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA)
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00002', 'ET000005', '#EE7700', '搖滾A區', 800, 800);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00002', 'ET000006', '#BB5500', '搖滾B區', 800, 500);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00002', 'ET000007', '#A0522D', '搖滾C區', 800, 50);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00002', 'ET000008', '#8B4513', '搖滾D區', 500, 500);

--------------------------------------------------------
--  for Table TICKET_ORDER
--------------------------------------------------------
INSERT INTO TICKET_ORDER(TICKET_ORDER_NO,MEMBER_NO,TICAREA_NO,TOTAL_PRICE,TOTAL_AMOUNT,TICKET_ORDER_TIME,PAYMENT_METHOD,TICKET_ORDER_STATUS)
VALUES ('TO_20181225_'||LPAD(to_char(TICKET_ORDER_SEQ.NEXTVAL), 6, '0'),'M000001','ES00000001',5000,3,TO_TIMESTAMP('2018-12-25 18:30', 'YYYY-MM-DD HH24:MI'),'CREDIT','COMPLETE2');
INSERT INTO TICKET_ORDER(TICKET_ORDER_NO,MEMBER_NO,TICAREA_NO,TOTAL_PRICE,TOTAL_AMOUNT,TICKET_ORDER_TIME,PAYMENT_METHOD,TICKET_ORDER_STATUS)
VALUES ('TO_20181225_'||LPAD(to_char(TICKET_ORDER_SEQ.NEXTVAL), 6, '0'),'M000001','ES00000001',5500,4,TO_TIMESTAMP('2018-12-25 19:30', 'YYYY-MM-DD HH24:MI'),'','CANCEL3');
INSERT INTO TICKET_ORDER(TICKET_ORDER_NO,MEMBER_NO,TICAREA_NO,TOTAL_PRICE,TOTAL_AMOUNT,TICKET_ORDER_TIME,PAYMENT_METHOD,TICKET_ORDER_STATUS)
VALUES ('TO_20181225_'||LPAD(to_char(TICKET_ORDER_SEQ.NEXTVAL), 6, '0'),'M000001','ES00000001',6000,5,TO_TIMESTAMP('2018-12-25 20:30', 'YYYY-MM-DD HH24:MI'),'','CANCEL3');

--------------------------------------------------------
--  for Table TICKET
--------------------------------------------------------
INSERT INTO TICKET (TICKET_NO,TICAREA_NO,TICKET_ORDER_NO,MEMBER_NO,TICKET_STATUS,TICKET_CREATE_TIME,TICKET_RESALE_STATUS,TICKET_RESALE_PRICE,IS_FROM_RESALE) 
VALUES('T_20181225_'||LPAD(to_char(TICKET_seq.NEXTVAL), 6, '0'),'ES00000001','TO_20181225_000001','M000001','ACTIVE1',TO_TIMESTAMP('2018-12-25 18:40', 'YYYY-MM-DD HH24:MI'),'NONE',0,'NO');
INSERT INTO TICKET (TICKET_NO,TICAREA_NO,TICKET_ORDER_NO,MEMBER_NO,TICKET_STATUS,TICKET_CREATE_TIME,TICKET_RESALE_STATUS,TICKET_RESALE_PRICE,IS_FROM_RESALE) 
VALUES('T_20181225_'||LPAD(to_char(TICKET_seq.NEXTVAL), 6, '0'),'ES00000001','TO_20181225_000001','M000001','ACTIVE1',TO_TIMESTAMP('2018-12-25 18:40', 'YYYY-MM-DD HH24:MI'),'NONE',0,'NO');
INSERT INTO TICKET (TICKET_NO,TICAREA_NO,TICKET_ORDER_NO,MEMBER_NO,TICKET_STATUS,TICKET_CREATE_TIME,TICKET_RESALE_STATUS,TICKET_RESALE_PRICE,IS_FROM_RESALE) 
VALUES('T_20181225_'||LPAD(to_char(TICKET_seq.NEXTVAL), 6, '0'),'ES00000001','TO_20181225_000001','M000002','ACTIVE1',TO_TIMESTAMP('2018-12-25 18:40', 'YYYY-MM-DD HH24:MI'),'NONE',0,'YES');

--------------------------------------------------------
--  for Table RESALE_ORD
--------------------------------------------------------
INSERT INTO RESALE_ORD(RESALE_ORDNO,TICKET_NO,MEMBER_SELLER_NO,MEMBER_BUYER_NO,RESALE_ORDPRICE,RESALE_ORDSTATUS,RESALE_ORD_CREATETIME,RESALE_ORD_COMPLETETIME,PAYMENT_METHOD)
VALUES ('R_20181226_'||LPAD(to_char(RESALE_ORD_SEQ.NEXTVAL), 6, '0'),'T_20181225_000003','M000001','M000002',2999,'CANCEL3',TO_TIMESTAMP('2018-12-26 07:30', 'YYYY-MM-DD HH24:MI'),'','');
INSERT INTO RESALE_ORD(RESALE_ORDNO,TICKET_NO,MEMBER_SELLER_NO,MEMBER_BUYER_NO,RESALE_ORDPRICE,RESALE_ORDSTATUS,RESALE_ORD_CREATETIME,RESALE_ORD_COMPLETETIME,PAYMENT_METHOD)
VALUES ('R_20181226_'||LPAD(to_char(RESALE_ORD_SEQ.NEXTVAL), 6, '0'),'T_20181225_000003','M000001','M000002',1999,'CANCEL3',TO_TIMESTAMP('2018-12-26 09:30', 'YYYY-MM-DD HH24:MI'),'','');
INSERT INTO RESALE_ORD(RESALE_ORDNO,TICKET_NO,MEMBER_SELLER_NO,MEMBER_BUYER_NO,RESALE_ORDPRICE,RESALE_ORDSTATUS,RESALE_ORD_CREATETIME,RESALE_ORD_COMPLETETIME,PAYMENT_METHOD)
VALUES ('R_20181226_'||LPAD(to_char(RESALE_ORD_SEQ.NEXTVAL), 6, '0'),'T_20181225_000003','M000001','M000002',999,'COMPLETE2',TO_TIMESTAMP('2018-12-26 10:30', 'YYYY-MM-DD HH24:MI'),TO_TIMESTAMP('2018-12-26 10:40', 'YYYY-MM-DD HH24:MI'),'EWALLET');





-----------------------------------------------------------------------------------
--  【其他的活動主題】
-----------------------------------------------------------------------------------
--------------------------------------------------------
--  蕭敬騰娛樂先生世界巡迴演唱會-雅聞倍優高雄站 ***E0002***  ****************************************************************************************************E0002***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', '蕭敬騰娛樂先生世界巡迴演唱會-雅聞倍優高雄站', 
TO_DATE('2019-01-19','YYYY-MM-DD'), TO_DATE('2019-01-20','YYYY-MM-DD'), 2, 'confirmed', 
TO_DATE('2018-08-01','YYYY-MM-DD'), TO_DATE('2019-01-21','YYYY-MM-DD'), '5');
--------------------------------------------------------
-- FOR TABLE VENUE V002
--------------------------------------------------------
INSERT INTO VENUE (VENUE_NO, VENUE_NAME, ADDRESS, LATITUDE, LONGITUDE)
VALUES
('V'||LPAD(to_char(VENUE_SEQ.NEXTVAL), 3, '0'), '高雄巨蛋', '813台灣高雄市左營區博愛二路757號', 22.6687508, 120.3022621);
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0002', 'V002', '2019/01/19 第一場', 
TO_TIMESTAMP('2019-01-19 20:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-19 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-08-11 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-19 19:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');

INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0002', 'V002', '2019/01/20 第二場', 
TO_TIMESTAMP('2019-01-20 19:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-20 22:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-08-11 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-20 18:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');

----------------------------------------------------------------------------------------------------------------
--  EV00003 2019/01/19 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000009 3800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#7fb8ff', '3800區', 3800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000009', '#7fb8ff', '特A區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000009', '#7fb8ff', '特B區3800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000010 3300區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#4141fc', '3300區', 3300);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000010', '#4141fc', '特C區3300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000010', '#4141fc', '特D區3300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000010', '#aaff56', '綠213區3300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000010', '#aaff56', '綠214區3300', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000011 2800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#ffffa3', '2800區', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000011', '#ffffa3', '澄207區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000011', '#ffffa3', '澄208區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000011', '#ffffa3', '澄209區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000011', '#71d80a', '綠212區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000011', '#71d80a', '綠215區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000011', '#fcd9d9', '紅218區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000011', '#fcd9d9', '紅219區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000011', '#fcd9d9', '紅220區2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000012 2400區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#fff056', '2400區', 2400);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#fff056', '澄207區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#fff056', '澄208區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#fff056', '澄209區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#00bf5f', '綠212區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#00bf5f', '綠213區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#00bf5f', '綠214區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#00bf5f', '綠215區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#ffaaaa', '紅218區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#ffaaaa', '紅219區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000012', '#ffaaaa', '紅220區2400', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000013 2000區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#efef0e', '2000區', 2000);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000013', '#efef0e', '澄207區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000013', '#efef0e', '澄208區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000013', '#efef0e', '澄209區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000013', '#efef0e', '澄210區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000013', '#ff5656', '紅217區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000013', '#ff5656', '紅218區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000013', '#ff5656', '紅219區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000013', '#ff5656', '紅220區2000', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000014 1600區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#d36600', '1600區', 1600);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#d36600', '澄210區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#d36600', '澄211區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#ff0000', '紅216區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#ff0000', '紅217區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#ff0000', '紅218區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#ff0000', '紅219區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#ff0000', '紅220區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠406區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠407區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠408區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠409區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠410區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠513區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠514區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠515區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠516區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠517區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000014', '#007f00', '綠518區1600', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000015 1200區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#f4bf8d', '1200區', 1200);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000015', '#f4bf8d', '澄509區1200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000015', '#f4bf8d', '澄510區1200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000015', '#f4bf8d', '澄511區1200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000015', '#f4bf8d', '澄512區1200', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000016 800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#afaf00', '800區', 800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000016', '#afaf00', '澄509區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000016', '#afaf00', '澄510區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000016', '#afaf00', '澄511區800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000017 600區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00003', '#c99564', '600區', 600);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00003', 'ET000017', '#c99564', '澄508區600', 1000, 1000);

----------------------------------------------------------------------------------------------------------------
--  EV00004 2019/01/20 第二場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000018 3800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#7fb8ff', '3800區', 3800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000018', '#7fb8ff', '特A區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000018', '#7fb8ff', '特B區3800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000019 3300區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#4141fc', '3300區', 3300);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000019', '#4141fc', '特C區3300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000019', '#4141fc', '特D區3300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000019', '#aaff56', '綠213區3300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000019', '#aaff56', '綠214區3300', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000020 2800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#ffffa3', '2800區', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000020', '#ffffa3', '澄207區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000020', '#ffffa3', '澄208區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000020', '#ffffa3', '澄209區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000020', '#71d80a', '綠212區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000020', '#71d80a', '綠215區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000020', '#fcd9d9', '紅218區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000020', '#fcd9d9', '紅219區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000020', '#fcd9d9', '紅220區2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000021 2400區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#fff056', '2400區', 2400);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#fff056', '澄207區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#fff056', '澄208區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#fff056', '澄209區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#00bf5f', '綠212區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#00bf5f', '綠213區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#00bf5f', '綠214區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#00bf5f', '綠215區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#ffaaaa', '紅218區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#ffaaaa', '紅219區2400', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000021', '#ffaaaa', '紅220區2400', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000022 2000區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#efef0e', '2000區', 2000);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000022', '#efef0e', '澄207區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000022', '#efef0e', '澄208區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000022', '#efef0e', '澄209區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000022', '#efef0e', '澄210區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000022', '#ff5656', '紅217區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000022', '#ff5656', '紅218區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000022', '#ff5656', '紅219區2000', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000022', '#ff5656', '紅220區2000', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000023 1600區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#d36600', '1600區', 1600);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#d36600', '澄210區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#d36600', '澄211區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#ff0000', '紅216區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#ff0000', '紅217區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#ff0000', '紅218區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#ff0000', '紅219區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#ff0000', '紅220區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠406區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠407區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠408區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠409區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠410區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠513區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠514區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠515區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠516區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠517區1600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000023', '#007f00', '綠518區1600', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000024 1200區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#f4bf8d', '1200區', 1200);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000024', '#f4bf8d', '澄509區1200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000024', '#f4bf8d', '澄510區1200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000024', '#f4bf8d', '澄511區1200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000024', '#f4bf8d', '澄512區1200', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000025 800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#afaf00', '800區', 800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000025', '#afaf00', '澄509區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000025', '#afaf00', '澄510區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000025', '#afaf00', '澄511區800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000026 600區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00004', '#c99564', '600區', 600);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00004', 'ET000026', '#c99564', '澄508區600', 1000, 1000);

--------------------------------------------------------
--  五月天2019「人生無限公司」無限放大最終回到台中洲際棒球場 ***E0003***  ****************************************************************************************************E0003***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', '五月天2019「人生無限公司」無限放大最終回到台中洲際棒球場', 
TO_DATE('2018-12-22','YYYY-MM-DD'), TO_DATE('2019-01-06','YYYY-MM-DD'), 10, 'confirmed', 
TO_DATE('2018-07-01','YYYY-MM-DD'), TO_DATE('2019-01-07','YYYY-MM-DD'), '5');

--------------------------------------------------------
--  學友 經典世界巡迴演唱會–2019高雄站 ***E0004***  ****************************************************************************************************E0004***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', '學友 經典世界巡迴演唱會–2019高雄站', 
TO_DATE('2019-01-04','YYYY-MM-DD'), TO_DATE('2019-01-06','YYYY-MM-DD'), 3, 'confirmed', 
TO_DATE('2018-10-01','YYYY-MM-DD'), TO_DATE('2019-01-06','YYYY-MM-DD'), '5');

--------------------------------------------------------
--  Jim Gaffigan Quality Time Tour 2019 Live in Taipei ***E0005***  ****************************************************************************************************E0005***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'J',  'TRP2', 'Jim Gaffigan Quality Time Tour 2019 Live in Taipei', 
TO_DATE('2019-03-31','YYYY-MM-DD'), TO_DATE('2019-03-31','YYYY-MM-DD'), 1, 'confirmed', 
TO_DATE('2018-12-12','YYYY-MM-DD'), TO_DATE('2019-04-01','YYYY-MM-DD'), '4');
--------------------------------------------------------
-- FOR TABLE VENUE V003
--------------------------------------------------------
INSERT INTO VENUE (VENUE_NO, VENUE_NAME, ADDRESS, LATITUDE, LONGITUDE)
VALUES
('V'||LPAD(to_char(VENUE_SEQ.NEXTVAL), 3, '0'), '中油大樓國光會議廳', '110台灣台北市信義區松仁路3號', 25.0394715, 121.56917390000001);
--------------------------------------------------------
--  for Table EVENT (EVE) EV00005
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0005', 'V003', '2019/03/31 第一場', 
TO_TIMESTAMP('2019-03-31 19:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-31 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-12-16 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-31 18:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
----------------------------------------------------------------------------------------------------------------
--  EV00005 2019/03/31 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000027 一樓2800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00005', '#00bfbf', '一樓2800', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00005', 'ET000027', '#00bfbf', '一樓2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000028 二樓1800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00005', '#aad4ff', '二樓1800', 1800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00005', 'ET000028', '#aad4ff', '二樓1800', 1000, 1000);

--------------------------------------------------------
--  《Since 5566》台北小巨蛋演唱會 - 一段愛與我們的故事 ***E0006***  ****************************************************************************************************E0006***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', '《Since 5566》台北小巨蛋演唱會 - 一段愛與我們的故事', 
TO_DATE('2019-02-23','YYYY-MM-DD'), TO_DATE('2019-02-23','YYYY-MM-DD'), 1, 'confirmed', 
TO_DATE('2018-12-01','YYYY-MM-DD'), TO_DATE('2019-02-24','YYYY-MM-DD'), '5');
--------------------------------------------------------
-- FOR TABLE VENUE V004
--------------------------------------------------------
INSERT INTO VENUE (VENUE_NO, VENUE_NAME, ADDRESS, LATITUDE, LONGITUDE)
VALUES
('V'||LPAD(to_char(VENUE_SEQ.NEXTVAL), 3, '0'), '台北小巨蛋', '105台灣台北市松山區南京東路四段2號', 25.0513848, 121.54974140000002);
--------------------------------------------------------
--  for Table EVENT (EVE) EV00006
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0006', 'V004', '2019/02/23 第一場', 
TO_TIMESTAMP('2019-02-23 19:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-02-23 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-12-16 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-02-23 18:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
----------------------------------------------------------------------------------------------------------------
--  EV00006 2019/02/23 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000029 特區4256
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#0048b5', '特區4256', 4256);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000029', '#0048b5', '特區(特A1區4256)', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000029', '#0048b5', '特區(特A2區4256)', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000029', '#0048b5', '特區(特A3區4256)', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000029', '#0048b5', '特區(特A4區4256)', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000029', '#0048b5', '特區(特A5區4256)', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000029', '#0048b5', '特區(特A6區4256)', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000030 看台區4256
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#bf0000', '看台區4256', 4256);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#bf0000', '紅2B區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#bf0000', '紅2C區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#bf0000', '紅2D區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#bf0000', '紅2E區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#744d9e', '紫2B區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#744d9e', '紫2C區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#744d9e', '紫2D區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#744d9e', '紫2E區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#efc417', '黃2A區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#efc417', '黃2B區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#efc417', '黃2C區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#efc417', '黃2D區4256', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000030', '#efc417', '黃2E區4256', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000031 看台區3656
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#ff5656', '看台區3656', 3656);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#ff5656', '紅2B區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#ff5656', '紅2C區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#ff5656', '紅2D區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#ff5656', '紅2E區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#9c6dce', '紫2B區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#9c6dce', '紫2C區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#9c6dce', '紫2D區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#9c6dce', '紫2E區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#eab970', '黃2A區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#eab970', '黃2B區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#eab970', '黃2C區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#eab970', '黃2D區3656', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000031', '#eab970', '黃2E區3656', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000032 看台區3156
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#ffa3a3', '看台區3156', 3156);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#ffa3a3', '紅2B區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#ffa3a3', '紅2C區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#ffa3a3', '紅2D區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#ffa3a3', '紅2E區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#bb83f7', '紫2B區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#bb83f7', '紫2C區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#bb83f7', '紫2D區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#bb83f7', '紫2E區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#eaea4d', '黃2A區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#eaea4d', '黃2B區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#eaea4d', '黃2C區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#eaea4d', '黃2D區3156', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000032', '#eaea4d', '黃2E區3156', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000033 看台區2356
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#b2b200', '看台區2356', 2356);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000033', '#b2b200', '黃3C區2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000033', '#b2b200', '黃3D區2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000033', '#b2b200', '黃3E區2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000033', '#b2b200', '黃3F區2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000033', '#b2b200', '黃3G區2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000033', '#b2b200', '黃3H區2356', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000034 看台區1856
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#e5c629', '看台區1856', 1856);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000034', '#e5c629', '黃3C區1856', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000034', '#e5c629', '黃3D區1856', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000034', '#e5c629', '黃3E區1856', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000034', '#e5c629', '黃3F區1856', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000034', '#e5c629', '黃3G區1856', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000034', '#e5c629', '黃3H區1856', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000035 看台區1556
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#999940', '看台區1556', 1556);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000035', '#999940', '黃3A區1556', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000035', '#999940', '黃3B區1556', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000035', '#999940', '黃3I區1556', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000035', '#999940', '黃3J區1556', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000036  看台區756
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#ffd4aa', '看台區756', 756);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000036', '#ffd4aa', '黃3B區756', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000036', '#ffd4aa', '黃3C區756', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000036', '#ffd4aa', '黃3D區756', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000036', '#ffd4aa', '黃3E區756', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000036', '#ffd4aa', '黃3F區756', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000036', '#ffd4aa', '黃3G區756', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000036', '#ffd4aa', '黃3H區756', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000036', '#ffd4aa', '黃3I區756', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000037  包廂2356
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00006', '#4eeded', '包廂2356', 2356);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東401包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東402包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東403包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東404包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東405包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東406包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東407包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東408包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '東409包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西401包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西402包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西403包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西404包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西405包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西406包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西407包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西408包廂2356', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00006', 'ET000037', '#4eeded', '西409包廂2356', 1000, 1000);

--------------------------------------------------------
--  MAROON 5 RED PILL BLUES TOUR LIVE IN KAOHSIUNG ***E0007***  ****************************************************************************************************E0007*** 
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', 'MAROON 5 RED PILL BLUES TOUR LIVE IN KAOHSIUNG', 
TO_DATE('2019-03-01','YYYY-MM-DD'), TO_DATE('2019-03-01','YYYY-MM-DD'), 1, 'confirmed', 
TO_DATE('2018-12-01','YYYY-MM-DD'), TO_DATE('2019-03-01','YYYY-MM-DD'), '5');
--------------------------------------------------------
-- FOR TABLE VENUE V005
--------------------------------------------------------
INSERT INTO VENUE (VENUE_NO, VENUE_NAME, ADDRESS, LATITUDE, LONGITUDE)
VALUES
('V'||LPAD(to_char(VENUE_SEQ.NEXTVAL), 3, '0'), '高雄國家體育場(世運主場館)', '813台灣高雄市左營區世運大道100號', 22.7030861, 120.29448839999998);
--------------------------------------------------------
--  for Table EVENT (EVE) EV00007
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0007', 'V005', '2019/03/01 第一場', 
TO_TIMESTAMP('2019-03-01 19:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-01 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-10-06 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-01 18:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
----------------------------------------------------------------------------------------------------------------
--  EV00007 2019/03/01 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000038 特A區5800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#ff56aa', '特A區5800', 5800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A1區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A2區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A3區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A4區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A5區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A6區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A7區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A8區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A9區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A10區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A11區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A12區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A13區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A14區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A15區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A16區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A17區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A18區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A19區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A20區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A21區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000038', '#ff56aa', '特A22區5800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000039 特B區4800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#007fff', '特B區4800', 4800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B1區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B2區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B3區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B4區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B5區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B6區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B7區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B8區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B9區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B10區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B11區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000039', '#007fff', '特B12區4800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000040 特C區3800(站)
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#56aaff', '特C區3800(站)', 3800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000040', '#56aaff', '特C區3800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000041 看台區4800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#007fff', '看台區4800', 4800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西108區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西109區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西110區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西112區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西113區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西114區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '東150區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '東151區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '東152區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '東153區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '東154區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '東155區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西G10區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西G12區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西G13區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000041', '#007fff', '西G14區4800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000042 看台區4300
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#10e5e5', '看台區4300', 4300);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西115區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西116區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西120區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西121區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西122區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西123區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '東141區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '東142區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '東143區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '東146區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '東147區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '東148區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '東149區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西G15區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西G17區4300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000042', '#10e5e5', '西G18區4300', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000043 看台區3800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#56aaff', '看台區3800', 3800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '西124區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北125區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北126區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北129區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北130區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北134區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北135區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北138區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北139區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000043', '#56aaff', '北140區3800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000044 看台區2800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#bf005f', '看台區2800', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西210區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西211區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西212區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西213區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西214區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西215區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西216區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西217區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '西218區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東246區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東247區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東248區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東249區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東250區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東251區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東252區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東253區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000044', '#bf005f', '東254區2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000045 看台區1800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#ff56aa', '看台區1800', 1800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '西219區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '西222區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '西223區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '西224區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '北225區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '北226區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '北227區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '北237區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '北238區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '北239區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '北240區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '東241區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '東242區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000045', '#ff56aa', '東245區1800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000046 看台區800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#ffaad4', '看台區800', 800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000046', '#ffaad4', '北229區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000046', '#ffaad4', '北230區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000046', '#ffaad4', '北234區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000046', '#ffaad4', '北235區800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000047 視線瑕疵區2800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#aaffd4', '視線瑕疵區2800', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '西117區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '西119區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '北127區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '北128區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '北136區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '北137區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '東144區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '東145區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '西G19區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000047', '#aaffd4', '西G20區2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000048 視線瑕疵區1800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#ff7f00', '視線瑕疵區1800', 1800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000048', '#ff7f00', '西220區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000048', '#ff7f00', '西221區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000048', '#ff7f00', '東243區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000048', '#ff7f00', '東244區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000048', '#ff7f00', '西210區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000048', '#ff7f00', '東254區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000048', '#ff7f00', '西G9區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000048', '#ff7f00', '東156區1800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000049 視線瑕疵區800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00007', '#e5ceb9', '視線瑕疵區800', 800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000049', '#e5ceb9', '北228區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000049', '#e5ceb9', '北236區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000049', '#e5ceb9', '西209區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000049', '#e5ceb9', '西208區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000049', '#e5ceb9', '東255區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000049', '#e5ceb9', '東256區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000049', '#e5ceb9', '西107區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00007', 'ET000049', '#e5ceb9', '西157區800', 1000, 1000);

--------------------------------------------------------
--  Mr.Children Tour 2018-19 重力與呼吸 Live in Taiwan ***E0008***  ****************************************************************************************************E0008*** 
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', 'Mr.Children Tour 2018-19 重力與呼吸 Live in Taiwan', 
TO_DATE('2019-02-01','YYYY-MM-DD'), TO_DATE('2019-02-02','YYYY-MM-DD'), 1, 'confirmed', 
TO_DATE('2018-12-01','YYYY-MM-DD'), TO_DATE('2019-02-02','YYYY-MM-DD'), '5');
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0008', 'V004', '2019/02/01 第一場', 
TO_TIMESTAMP('2019-02-01 19:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-02-01 22:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-11-24 12:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-02-01 18:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0008', 'V004', '2019/02/02 第二場', 
TO_TIMESTAMP('2019-02-02 18:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-02-02 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-12-01 12:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-02-02 17:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');

----------------------------------------------------------------------------------------------------------------
--  EV00008 2019/02/01 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000050 5800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00008', '#3f7f00', '5800元', 5800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000050', '#3f7f00', '搖滾A站區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000050', '#3f7f00', '搖滾B站區5800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000051 5200元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00008', '#5fbf00', '5200元', 5200);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000051', '#5fbf00', '搖滾C站區5200', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000052 4800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00008', '#ff5656', '4800元', 4800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#ff5656', '紅2B區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#ff5656', '紅2C區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#ff5656', '紅2D區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#7f007f', '紫2B區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#7f007f', '紫2C區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#7f007f', '紫2D區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#ffff56', '黃2B區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#ffff56', '黃2C區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000052', '#ffff56', '黃2D區4800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000053 4500元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00008', '#ffaaaa', '4500元', 4500);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000053', '#ffaaaa', '紅2E區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000053', '#aa56ff', '紫2E區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000053', '#ffffaa', '黃2A區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000053', '#ffffaa', '黃2E區4500', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000054 3800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00008', '#ff7f00', '3800元', 3800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000054', '#ff7f00', '黃3C區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000054', '#ff7f00', '黃3D區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000054', '#ff7f00', '黃3E區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000054', '#ff7f00', '黃3F區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000054', '#ff7f00', '黃3G區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000054', '#ff7f00', '黃3H區3800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000055 2800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00008', '#ffaa56', '2800元', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3A區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3B區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3C區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3D區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3E區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3F區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3G區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3H區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3I區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000055', '#ffaa56', '黃3J區2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000056 1800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00008', '#f9a759', '1800元', 1800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000056', '#f9a759', '黃3B區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000056', '#f9a759', '黃3C區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000056', '#f9a759', '黃3D區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000056', '#f9a759', '黃3E區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000056', '#f9a759', '黃3F區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000056', '#f9a759', '黃3G區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000056', '#f9a759', '黃3H區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000056', '#f9a759', '黃3I區1800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000057 800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00008', '#ffd4aa', '800元', 800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000057', '#ffd4aa', '黃3C區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000057', '#ffd4aa', '黃3D區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000057', '#ffd4aa', '黃3E區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000057', '#ffd4aa', '黃3F區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000057', '#ffd4aa', '黃3G區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00008', 'ET000057', '#ffd4aa', '黃3H區800', 1000, 1000);

----------------------------------------------------------------------------------------------------------------
--  EV00009 2019/02/02 第二場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000058 5800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00009', '#3f7f00', '5800元', 5800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000058', '#3f7f00', '搖滾A站區5800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000058', '#3f7f00', '搖滾B站區5800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000059 5200元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00009', '#5fbf00', '5200元', 5200);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000059', '#5fbf00', '搖滾C站區5200', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000060 4800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00009', '#ff5656', '4800元', 4800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#ff5656', '紅2B區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#ff5656', '紅2C區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#ff5656', '紅2D區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#7f007f', '紫2B區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#7f007f', '紫2C區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#7f007f', '紫2D區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#ffff56', '黃2B區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#ffff56', '黃2C區4800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000060', '#ffff56', '黃2D區4800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000061 4500元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00009', '#ffaaaa', '4500元', 4500);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000061', '#ffaaaa', '紅2E區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000061', '#aa56ff', '紫2E區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000061', '#ffffaa', '黃2A區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000061', '#ffffaa', '黃2E區4500', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000062 3800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00009', '#ff7f00', '3800元', 3800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000062', '#ff7f00', '黃3C區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000062', '#ff7f00', '黃3D區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000062', '#ff7f00', '黃3E區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000062', '#ff7f00', '黃3F區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000062', '#ff7f00', '黃3G區3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000062', '#ff7f00', '黃3H區3800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000063 2800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00009', '#ffaa56', '2800元', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3A區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3B區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3C區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3D區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3E區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3F區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3G區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3H區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3I區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000063', '#ffaa56', '黃3J區2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000064 1800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00009', '#f9a759', '1800元', 1800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000064', '#f9a759', '黃3B區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000064', '#f9a759', '黃3C區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000064', '#f9a759', '黃3D區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000064', '#f9a759', '黃3E區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000064', '#f9a759', '黃3F區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000064', '#f9a759', '黃3G區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000064', '#f9a759', '黃3H區1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000064', '#f9a759', '黃3I區1800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000065 800元
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00009', '#ffd4aa', '800元', 800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000065', '#ffd4aa', '黃3C區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000065', '#ffd4aa', '黃3D區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000065', '#ffd4aa', '黃3E區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000065', '#ffd4aa', '黃3F區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000065', '#ffd4aa', '黃3G區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00009', 'ET000065', '#ffd4aa', '黃3H區800', 1000, 1000);

-------------------------------------------------------
--  五月天2019「人生無限公司」無限放大最終回到台中洲際棒球場 ***E0003***  ****************************************************************************************************E0003***
--------------------------------------------------------
--------------------------------------------------------
-- FOR TABLE VENUE V006
--------------------------------------------------------
INSERT INTO VENUE (VENUE_NO, VENUE_NAME, ADDRESS, LATITUDE, LONGITUDE)
VALUES
('V'||LPAD(to_char(VENUE_SEQ.NEXTVAL), 3, '0'), '台中洲際棒球場', '406台灣台中市北屯區崇德路三段835號', 24.1996448, 120.68402519999995);
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2018/12/22 第一場', 
TO_TIMESTAMP('2018-12-22 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-22 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-22 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2018/12/23 第二場', 
TO_TIMESTAMP('2018-12-23 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-23 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-23 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2018/12/24 第三場', 
TO_TIMESTAMP('2018-12-24 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-24 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-24 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2018/12/29 第四場', 
TO_TIMESTAMP('2018-12-29 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-29 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-29 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2018/12/30 第五場', 
TO_TIMESTAMP('2018-12-30 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-30 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-30 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2018/12/31 第六場', 
TO_TIMESTAMP('2018-12-31 21:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-01 02:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2018-12-31 20:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2019/01/01 第七場', 
TO_TIMESTAMP('2019-01-01 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-01 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-01 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2019/01/04 第八場', 
TO_TIMESTAMP('2019-01-04 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-04 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-04 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2019/01/05 第九場', 
TO_TIMESTAMP('2019-01-05 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-05 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-05 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0003', 'V006', '2019/01/06 第十場', 
TO_TIMESTAMP('2019-01-06 18:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-06 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-09-30 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-06 17:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
--------------------------------------------------------
--  EV00010 2018/12/22 第一場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000066 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00010', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000067 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00010', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000068 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00010', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000069 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00010', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000070 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00010', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000071 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00010', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000072 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00010', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000073 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00010', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00011 2018/12/23 第二場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000074 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00011', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000075 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00011', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000076 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00011', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000077 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00011', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000078 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00011', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000079 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00011', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000080 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00011', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000081 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00011', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00012 2018/12/24 第三場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000082 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00012', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000083 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00012', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000084 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00012', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000085 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00012', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000086 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00012', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000087 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00012', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000088 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00012', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000089 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00012', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00013 2018/12/29 第四場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000090 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00013', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000091 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00013', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000092 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00013', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000093 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00013', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000094 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00013', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000095 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00013', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000096 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00013', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000097 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00013', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00014 2018/12/30 第五場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000098 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00014', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000099 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00014', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000100 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00014', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000101 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00014', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000102 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00014', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000103 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00014', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000104 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00014', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000105 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00014', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00015 2018/12/31 第六場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000106 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00015', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000107 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00015', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000108 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00015', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000109 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00015', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000110 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00015', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000111 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00015', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000112 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00015', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000113 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00015', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00016 2019/01/01 第七場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000114 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00016', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000115 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00016', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000116 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00016', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000117 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00016', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000118 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00016', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000119 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00016', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000120 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00016', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000121 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00016', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00017 2019/01/04 第八場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000122 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00017', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000123 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00017', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000124 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00017', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000125 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00017', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000126 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00017', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000127 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00017', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000128 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00017', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000129 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00017', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00018 2019/01/05 第九場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000130 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00018', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000131 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00018', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000132 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00018', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000133 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00018', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000134 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00018', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000135 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00018', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000136 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00018', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000137 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00018', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  EV00019 2019/01/06 第十場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000138 無限搖滾區3880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00019', '#224471', '無限搖滾A區3880', 3880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000139 無限搖滾區3280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00019', '#2c62ab', '無限搖滾B區3280', 3280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000140 任意漫遊區2580
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00019', '#03a9d9', '任意漫遊區2580', 2580);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000141 綠區2880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00019', '#b0c917', '綠區2880', 2880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000142 橘區2280
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00019', '#ef801b', '橘區2280', 2280);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000143 黃區1880
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00019', '#ece93d', '黃區1880', 1880);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000144 粉紅區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00019', '#e9a3c6', '粉紅區800', 800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000145 視線瑕疵區800
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00019', '#d2ad84', '視線瑕疵區800', 800);

--------------------------------------------------------
--  學友 經典世界巡迴演唱會–2019高雄站 ***E0004***  ****************************************************************************************************E0004***
--------------------------------------------------------
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0004', 'V002', '2019/01/04 第一場', 
TO_TIMESTAMP('2019-01-04 20:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-04 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-10-14 13:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-04 19:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0004', 'V002', '2019/01/05 第二場', 
TO_TIMESTAMP('2019-01-05 19:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-05 22:30', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-10-14 13:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-05 18:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0004', 'V002', '2019/01/06 第三場', 
TO_TIMESTAMP('2019-01-06 18:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-06 21:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-10-14 13:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-01-06 17:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
--------------------------------------------------------
--  EV00020 2019/01/04 第一場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000146 5800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00020', '#0e6bb0', '5800區', 5800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000147 4800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00020', '#0e6bb0', '4800區', 4800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000148 4200區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00020', '#0096db', '4200區', 4200);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000149 3600區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00020', '#ee86a1', '3600區', 3600);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000150 2200區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00020', '#71bbea', '2200區', 2200);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000151 1800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00020', '#c4e9fb', '1800區', 1800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000152 800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00020', '#fff388', '800區', 800);
--------------------------------------------------------
--  EV00021 2019/01/05 第二場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000153 5800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00021', '#0e6bb0', '5800區', 5800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000154 4800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00021', '#0e6bb0', '4800區', 4800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000155 4200區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00021', '#0096db', '4200區', 4200);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000156 3600區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00021', '#ee86a1', '3600區', 3600);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000157 2200區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00021', '#71bbea', '2200區', 2200);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000158 1800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00021', '#c4e9fb', '1800區', 1800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000159 800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00021', '#fff388', '800區', 800);
--------------------------------------------------------
--  EV00022 2019/01/06 第三場
--------------------------------------------------------
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000160 5800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00022', '#0e6bb0', '5800區', 5800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000161 4800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00022', '#0e6bb0', '4800區', 4800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000162 4200區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00022', '#0096db', '4200區', 4200);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000163 3600區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00022', '#ee86a1', '3600區', 3600);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000164 2200區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00022', '#71bbea', '2200區', 2200);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000165 1800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00022', '#c4e9fb', '1800區', 1800);
--------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000166 800區
--------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00022', '#fff388', '800區', 800);

--------------------------------------------------------
--  SO JI SUB ASIA TOUR ‘HELLO’ TAIPEI ***E0009***  ****************************************************************************************************E0009***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', 'SO JI SUB ASIA TOUR ‘HELLO’ TAIPEI', 
TO_DATE('2019-02-10','YYYY-MM-DD'), TO_DATE('2019-02-10','YYYY-MM-DD'), 1, 'confirmed', 
TO_DATE('2018-12-10','YYYY-MM-DD'), TO_DATE('2019-02-11','YYYY-MM-DD'), '4');
--------------------------------------------------------
-- FOR TABLE VENUE V007
--------------------------------------------------------
INSERT INTO VENUE (VENUE_NO, VENUE_NAME, ADDRESS, LATITUDE, LONGITUDE)
VALUES
('V'||LPAD(to_char(VENUE_SEQ.NEXTVAL), 3, '0'), '台北國際會議中心(TICC)', '110台灣台北市信義區信義路五段1號',25.033263,121.56049200000007);
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0009', 'V007', '2019/02/10 第一場', 
TO_TIMESTAMP('2019-02-10 17:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-02-10 23:00', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2019-01-06 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-02-10 16:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
----------------------------------------------------------------------------------------------------------------
--  EV00023 2019/02/10 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000167 5200區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00023', '#56aaff', '5200區', 5200);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '2M樓A1區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '2M樓A2區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '2M樓A3區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '2M樓A4區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '2M樓A5區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '3樓B1區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '3樓B2區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '3樓B3區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '3樓B4區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000167', '#56aaff', '3樓B5區', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000168 4200區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00023', '#5fbf00', '4200區', 4200);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000168', '#5fbf00', '4樓C1區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000168', '#5fbf00', '4樓C2區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000168', '#5fbf00', '4樓C3區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000168', '#5fbf00', '4樓C4區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000168', '#5fbf00', '4樓C5區', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000169 3200區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00023', '#ffff56', '3200區', 3200);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000169', '#ffff56', '5樓D1區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000169', '#ffff56', '5樓D2區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000169', '#ffff56', '5樓D3區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000169', '#ffff56', '5樓D4區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000169', '#ffff56', '5樓D5區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000169', '#ffff56', '5樓包廂D6區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000169', '#ffff56', '5樓包廂D7區', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000170 2800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00023', '#ff5656', '2800區', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000170', '#ff5656', '6樓包廂E1區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000170', '#ff5656', '6樓包廂E2區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000170', '#ff5656', '6樓包廂E3區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000170', '#ff5656', '6樓包廂E4區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000170', '#ff5656', '6樓包廂E5區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000170', '#ff5656', '6樓包廂E6區', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00023', 'ET000170', '#ff5656', '6樓包廂E7區', 1000, 1000);

--------------------------------------------------------
--  TROYE SIVAN THE BLOOM TOUR 2019 LIVE IN TAIPEI ***E0010***  ****************************************************************************************************E0010***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', 'TROYE SIVAN THE BLOOM TOUR 2019 LIVE IN TAIPEI', 
TO_DATE('2019-04-29','YYYY-MM-DD'), TO_DATE('2019-04-29','YYYY-MM-DD'), 1, 'confirmed', 
TO_DATE('2019-01-05','YYYY-MM-DD'), TO_DATE('2019-04-30','YYYY-MM-DD'), '4');
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0010', 'V007', '2019/04/29 第一場', 
TO_TIMESTAMP('2019-04-29 20:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-04-29 23:30', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2019-01-05 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-04-29 19:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
----------------------------------------------------------------------------------------------------------------
--  EV00024 2019/04/29 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000171 5200區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00024', '#ff56aa', '4800區', 4800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000171', '#ff56aa', '2M樓4800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000172 3800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00024', '#ffaaaa', '3800區', 3800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000172', '#ffaaaa', '2M樓單號3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000172', '#ffaaaa', '2M樓雙號3800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000172', '#ffaaaa', '3樓3800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000173 2800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00024', '#ffffaa', '2800區', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000173', '#ffffaa', '4樓2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000174 2300區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00024', '#d4ffaa', '2300區', 2300);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000174', '#d4ffaa', '5樓2300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000174', '#d4ffaa', '5樓單號包廂2300', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000174', '#d4ffaa', '5樓雙號包廂2300', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000175 1800區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00024', '#aaffff', '1800區', 1800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000175', '#aaffff', '5樓單號包廂1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000175', '#aaffff', '5樓雙號包廂1800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00024', 'ET000175', '#aaffff', '6樓包廂1800', 1000, 1000);

--------------------------------------------------------
--  2019 吳宗憲Jacky Wu高雄巨蛋演唱會 ***E0011***  ****************************************************************************************************E0011***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', '2019 吳宗憲Jacky Wu高雄巨蛋演唱會', 
TO_DATE('2019-05-18','YYYY-MM-DD'), TO_DATE('2019-05-18','YYYY-MM-DD'), 1, 'confirmed', 
TO_DATE('2019-01-05','YYYY-MM-DD'), TO_DATE('2019-05-19','YYYY-MM-DD'), '5');
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0011', 'V002', '2019/05/18 第一場', 
TO_TIMESTAMP('2019-05-18 19:30', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-05-18 22:30', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2019-01-12 12:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-05-18 18:30', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
----------------------------------------------------------------------------------------------------------------
--  EV00025 2019/05/18 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000176 5200區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00025', '#56aaff', '特區4500', 4500);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000176', '#56aaff', '特A1區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000176', '#56aaff', '特A2區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000176', '#56aaff', '特A3區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000176', '#56aaff', '特A4區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000176', '#56aaff', '特A5區4500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000176', '#56aaff', '特A6區4500', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000177 3600區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00025', '#0072e5', '特區3600', 3600);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000177', '#0072e5', '特B1區3600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000177', '#0072e5', '特B2區3600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000177', '#0072e5', '特B3區3600', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000178 看台區3600
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00025', '#bf5f00', '看台區3600', 3600);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000178', '#bf5f00', '澄207區3600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000178', '#bf5f00', '澄208區3600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000178', '#007f00', '綠213區3600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000178', '#007f00', '綠214區3600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000178', '#af0a0a', '紅219區3600', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000178', '#af0a0a', '紅220區3600', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000179 看台區2800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00025', '#f9581d', '看台區2800', 2800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#f9581d', '澄208區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#f9581d', '澄209區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#f9581d', '澄210區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#56ff56', '綠212區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#56ff56', '綠213區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#56ff56', '綠214區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#56ff56', '綠215區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#ff5656', '紅217區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#ff5656', '紅218區2800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000179', '#ff5656', '紅219區2800', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000180 看台區2500
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00025', '#ffaa56', '看台區2500', 2500);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#ffaa56', '澄207區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#ffaa56', '澄208區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#ffaa56', '澄209區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#ffaa56', '澄210區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#4cbf8d', '綠212區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#4cbf8d', '綠215區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#fc8383', '紅217區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#fc8383', '紅218區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#fc8383', '紅219區2500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000180', '#fc8383', '紅220區2500', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000181 看台區2200
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00025', '#ffb600', '看台區2200', 2200);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffb600', '澄207區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffb600', '澄208區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffb600', '澄209區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffb600', '澄210區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffb600', '澄211區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffaaaa', '紅216區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffaaaa', '紅217區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffaaaa', '紅218區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffaaaa', '紅219區2200', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000181', '#ffaaaa', '紅220區2200', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000182 看台區1500
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00025', '#69f4ac', '看台區1500', 1500);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠406區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠407區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠408區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠409區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠410區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#ffff56', '澄512區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠513區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠514區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠515區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠516區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠517區1500', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000182', '#69f4ac', '綠518區1500', 1000, 1000);
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000183 看台區800
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00025', '#fcc694', '看台區800', 800);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000183', '#fcc694', '澄509區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000183', '#fcc694', '澄510區800', 1000, 1000);
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00025', 'ET000183', '#fcc694', '澄511區800', 1000, 1000);

--------------------------------------------------------
--  YEARS＆YEARS The Palo Santo Tour 2019 Live in Taipei ***E0012***  ****************************************************************************************************E0012***
--------------------------------------------------------
INSERT INTO EVENT_TITLE
(EVETIT_NO, EVECLASS_NO, TICREFPOLICY_NO, EVETIT_NAME, 
EVETIT_STARTDATE, EVETIT_ENDDATE, EVETIT_SESSIONS, EVETIT_STATUS, 
LAUNCHDATE, OFFDATE, PROMOTIONRANKING)
VALUES
('E'||LPAD(to_char(EVETIT_SEQ.NEXTVAL), 4, '0'), 'A',  'TRP2', 'YEARS＆YEARS The Palo Santo Tour 2019 Live in Taipei', 
TO_DATE('2019-03-05','YYYY-MM-DD'), TO_DATE('2019-03-05','YYYY-MM-DD'), 1, 'confirmed', 
TO_DATE('2018-12-01','YYYY-MM-DD'), TO_DATE('2019-03-06','YYYY-MM-DD'), '4');
--------------------------------------------------------
-- FOR TABLE VENUE V008
--------------------------------------------------------
INSERT INTO VENUE (VENUE_NO, VENUE_NAME, ADDRESS, LATITUDE, LONGITUDE)
VALUES
('V'||LPAD(to_char(VENUE_SEQ.NEXTVAL), 3, '0'), '永豐Legacy Taipei', '100台灣台北市中正區八德路一段1號華山1914創意文化園區中5A館', 25.0450297, 121.52946240000006);
--------------------------------------------------------
--  for Table EVENT (EVE)
--------------------------------------------------------
INSERT INTO EVENT
(EVE_NO, EVETIT_NO, VENUE_NO, EVE_SESSIONNAME, EVE_STARTDATE, EVE_ENDDATE, EVE_ONSALEDATE, EVE_OFFSALEDATE, TICLIMIT, EVE_STATUS)
VALUES
('EV'||LPAD(to_char(EVE_SEQ.NEXTVAL), 5, '0'), 'E0012', 'V008', '2019/03/05 第一場', 
TO_TIMESTAMP('2019-03-05 20:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-05 23:30', 'YYYY-MM-DD HH24:MI'), 
TO_TIMESTAMP('2018-12-15 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2019-03-05 19:00', 'YYYY-MM-DD HH24:MI'), 4, 'normal');
----------------------------------------------------------------------------------------------------------------
--  EV00026 2019/03/05 第一場  ----------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------
--  for Table TICKET_TYPE (TICTYPE) ET000184 5200區
---------------------------------------------------------------------------------
INSERT INTO TICKET_TYPE
(TICTYPE_NO, EVE_NO, TICTYPE_COLOR, TICTYPE_NAME, TICTYPE_PRICE)
VALUES
('ET'||LPAD(to_char(TICTYPE_SEQ.NEXTVAL), 6, '0'), 'EV00026', '#3da3df', '全票2300', 2300);
--------------------------------------------------------
--  for Table SEATING_AREA (TICAREA) 
--------------------------------------------------------
INSERT INTO SEATING_AREA
(TICAREA_NO, EVE_NO, TICTYPE_NO, TICAREA_COLOR, TICAREA_NAME, TICTOTALNUMBER, TICBOOKEDNUMBER)
VALUES
('ES'||LPAD(to_char(TICAREA_SEQ.NEXTVAL), 8, '0'), 'EV00026', 'ET000184', '#3da3df', '全票2300', 1000, 1000);




-----------------------------------------------------------------------------------
--  【與活動主題相關資料】
-----------------------------------------------------------------------------------
--------------------------------------------------------
-- FOR TABLE ADVERTISEMENT
--------------------------------------------------------
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0001', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-03-03','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0002', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-01-21','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0003', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-01-07','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0004', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-01-06','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0005', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-04-01','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0006', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-02-24','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0007', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-03-01','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0008', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-02-02','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0009', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-02-11','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0010', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-04-30','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0011', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-05-19','YYYY-MM-DD'));
INSERT INTO ADVERTISEMENT VALUES ('AD'||LPAD(TO_CHAR(AD_SEQ.NEXTVAL),4,'0'), 'E0012', TO_DATE('2019-01-01','YYYY-MM-DD'), TO_DATE('2019-03-06','YYYY-MM-DD'));
--------------------------------------------------------
-- FOR TABLE FAVORITE_EVENT
--------------------------------------------------------
INSERT INTO FAVORITE_EVENT VALUES ('M000001', 'E0001');
INSERT INTO FAVORITE_EVENT VALUES ('M000001', 'E0002');
INSERT INTO FAVORITE_EVENT VALUES ('M000001', 'E0005');
INSERT INTO FAVORITE_EVENT VALUES ('M000001', 'E0006');
INSERT INTO FAVORITE_EVENT VALUES ('M000002', 'E0007');
INSERT INTO FAVORITE_EVENT VALUES ('M000002', 'E0008');
INSERT INTO FAVORITE_EVENT VALUES ('M000002', 'E0009');
INSERT INTO FAVORITE_EVENT VALUES ('M000002', 'E0010');



----------------------------------------------------------------------------------------------------------------
--  </活動結束>
----------------------------------------------------------------------------------------------------------------














----------------------------------------------------------------------------------------------------------------
--  <商品團購開始>
----------------------------------------------------------------------------------------------------------------
--------------------------------------------------------
--  建立表格
--------------------------------------------------------



--------------------------------------------------------
--  for Table GOODS
--------------------------------------------------------
CREATE TABLE GOODS (
    GOODS_NO Varchar2(8) NOT NULL PRIMARY KEY
    ,EVETIT_NO Varchar2(5) NOT NULL
    ,GOODS_NAME Varchar2(300) NOT NULL
    ,GOODS_PRICE Number(10,0) NOT NULL
    ,GOODS_PICTURE1 BLOB
    ,GOODS_PICTURE2 BLOB
    ,GOODS_PICTURE3 BLOB
    ,GOODS_INTRODUCTION CLOB
    ,FORSALES_A Number(10,0) NOT NULL
    ,FAVORITE_COUNT Number(10,0) DEFAULT 0
    ,GOODS_STATUS Varchar2(10) NOT NULL
    ,LAUNCHDATE TIMESTAMP
    ,OFFDATE TIMESTAMP
    ,GOODS_GROUP_COUNT Number(10,0) DEFAULT 0
    ,GOODS_WANT_COUNT Number(10,0) DEFAULT 0
    ,GOODS_SALES_COUNT Number(10,0) DEFAULT 0
    ,CONSTRAINT GOODS_FK2 FOREIGN KEY (EVETIT_NO) REFERENCES EVENT_TITLE (EVETIT_NO)
    );

CREATE SEQUENCE GOODS_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;


INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0003'
    ,'[五月天LIFE] 第五分隊 五度歸巢 T (黑/白兩色)'
    ,750
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,600
    ,0
    ,'已上架'
    ,TO_TIMESTAMP('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_TIMESTAMP('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0003'
    ,'[五月天LIFE] 原來的我們 第五分隊歸隊粉T (FS.FM)'
    ,800
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,650
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0003'
    ,'五月天 / [LIFE] 黑暗騎士 美加分隊 黑T'
    ,1480
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,1220
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0003'
    ,'五月天Mayday / [LIFE人生無限] 互動LED螢光棒 (白)'
    ,149
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,121
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0003'
    ,'五月天 / [LIFE] 黑暗騎士 第五分隊公仔'
    ,3999
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,3999
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0003'
    ,'五月天/ [LIFE] 第五分隊 行李任意貼紙組'
    ,150
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,135
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0002'
    ,'娛樂先生 LED應援手環'
    ,150
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,135
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0002'
    ,'娛樂先生 老帽/紅色款'
    ,850
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,750
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0002'
    ,'娛樂先生 運動毛巾'
    ,500
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,420
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0002'
    ,'娛樂先生 潮流手環'
    ,300
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,250
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0002'
    ,'娛樂先生 3D口罩'
    ,150
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,135
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0002'
    ,'娛樂先生 老帽/白色款'
    ,850
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,750
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0004'
    ,'張學友 _ 學友•經典 Classic Tour《筆記本 Notebook》【大A】'
    ,200
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,180
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0004'
    ,'張學友 _ 學友•經典 Classic Tour《保溫瓶 vacuum bottle '
    ,600
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,500
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0004'
    ,'張學友 _ 學友•經典 Classic Tour《棒球帽Baseball Cap》'
    ,400
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,350
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0004'
    ,'張學友 _ 學友•經典 Classic Tour《托特包 tote bag》白 (white)'
    ,400
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,350
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0004'
    ,'張學友 _ 學友•經典 Classic Tour《應援毛巾 Towel》【橘 orange】'
    ,300
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,250
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);
INSERT INTO GOODS VALUES 
(
    'P'||LPAD(TO_CHAR(GOODS_SEQ.NEXTVAL),7,'0')
    ,'E0004'
    ,'張學友 _ 學友•經典 Classic Tour《長袖刷毛T-shirt 灰(grey)》'
    ,1300
    ,NULL
    ,NULL
    ,NULL
    ,NULL
    ,1100
    ,0
    ,'已上架'
    ,TO_DATE('2018-12-15 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,TO_DATE('2019-01-26 01:10:00','YYYY-MM-DD HH24:MI:SS')
    ,0
    ,0
    ,0
);

--------------------------------------------------------
--  for Table QANDA
--------------------------------------------------------

CREATE TABLE GOODS_QA (
    GFAQ_NO VARCHAR2(9)NOT NULL PRIMARY KEY
    ,GOODS_NO Varchar2(8)
    ,MEMBER_NO Varchar2(7)
    ,ADMINISTRATOR_NO Varchar2(4)
    ,QUESTIONS_CONTENT Varchar2(300)
    ,ANSWER_CONTENT Varchar2(300)
    ,QUESTIONS_DATE TIMESTAMP
    ,ANSWER_DATE TIMESTAMP
    ,CONSTRAINT GOODS_QA_FK1 FOREIGN KEY (GOODS_NO) REFERENCES GOODS (GOODS_NO)
    ,CONSTRAINT GOODS_QA_FK2 FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER (MEMBER_NO)
    ,CONSTRAINT GOODS_QA_FK3 FOREIGN KEY (ADMINISTRATOR_NO) REFERENCES ADMINISTRATOR (ADMINISTRATOR_NO)
    );

CREATE SEQUENCE GOODS_QA_SEQ
INCREMENT BY 1
START WITH 1
NOMAXVALUE
NOCYCLE
NOCACHE;

INSERT INTO GOODS_QA VALUES 
(
    'GF'||LPAD(TO_CHAR(GOODS_QA_SEQ.NEXTVAL),7,'0')
    ,'P0000001'
    ,'M000001'
    ,'A001'
    ,'什麼時候到貨'
    ,'今天'
    ,TO_TIMESTAMP('2018-12-10 13:14:15','YYYY-MM-DD HH24:MI:SS')
    ,TO_TIMESTAMP('2018-12-11 12:34:56','YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO GOODS_QA VALUES 
(
    'GF'||LPAD(TO_CHAR(GOODS_QA_SEQ.NEXTVAL),7,'0')
    ,'P0000002'
    ,'M000002'
    ,'A001'
    ,'什麼時候到貨'
    ,'明天'
    ,TO_TIMESTAMP('2018-12-10 13:14:15','YYYY-MM-DD HH24:MI:SS')
    ,TO_TIMESTAMP('2018-12-11 12:34:56','YYYY-MM-DD HH24:MI:SS')
);
INSERT INTO GOODS_QA VALUES 
(
    'GF'||LPAD(TO_CHAR(GOODS_QA_SEQ.NEXTVAL),7,'0')
    ,'P0000003'
    ,'M000003'
    ,'A001'
    ,'什麼時候到貨'
    ,'後天'
    ,TO_TIMESTAMP('2018-12-10 13:14:15','YYYY-MM-DD HH24:MI:SS')
    ,TO_TIMESTAMP('2018-12-11 12:34:56','YYYY-MM-DD HH24:MI:SS')
);

--開團紀錄
---------------------------------
CREATE TABLE GROUP_OPEN(
    GROUP_NO VARCHAR2(5) NOT NULL,
    MEMBER_NO VARCHAR2(7) NOT NULL,
    GOODS_NO VARCHAR2(8) NOT NULL,
    GROUP_NAME Varchar2(100),
    GROUP_LIMIT Number(4),
    GROUP_INTRODUCTION CLOB,
    GROUP_MIND CLOB,
    GROUP_START_DATE TIMESTAMP,
    GROUP_CLOSE_DATE TIMESTAMP,
    GROUP_BANNER_1 BLOB,
    GROUP_BANNER_2 BLOB,
    GROUP_STATUS Varchar2(10),
    GROUP_ADDRESS Varchar2(200),
    LATITUDE NUMBER(10,8),
    LONGITUDE NUMBER(11,8),
    GROUP_TIME TIMESTAMP,
    GROUP_PRICE NUMBER(6),
    CONSTRAINT GROUP_OPEN_PRIMARY_KEY PRIMARY KEY(GROUP_NO),
    FOREIGN KEY(MEMBER_NO) REFERENCES MEMBER (MEMBER_NO),
    FOREIGN KEY(GOODS_NO) REFERENCES GOODS (GOODS_NO)
);

--開團紀錄佇列
-------------------------------
CREATE SEQUENCE GROUP_NO_SEQ
    INCREMENT BY 1
    START WITH 1
    NOMAXVALUE
    NOCYCLE
    NOCACHE;


--建立開團紀錄假資料
----------------------------------
INSERT INTO GROUP_OPEN VALUES (
   'G'||LPAD(to_char(GROUP_NO_SEQ.NEXTVAL),4,'0'),
   'M000001',
   'P0000007',
   '老蕭娛樂先生 超炫應援手環',
   '10',
   NULL,
   NULL,
   TO_DATE('2018-12-04 19:00:22','YYYY-MM-DD hh24:mi:ss'),
   TO_DATE('2019-01-11 19:00:20','YYYY-MM-DD hh24:mi:ss'),
   NULL,
   NULL,
   'process1',
   '台北市信義區忠孝東路五段420號',
   25.0407339,
   121.575305,
    TO_DATE('2019-01-12 17:00:20','YYYY-MM-DD hh24:mi:ss'),
    210
);
INSERT INTO GROUP_OPEN VALUES(
    'G'||LPAD(to_char(GROUP_NO_SEQ.NEXTVAL),4,'0'),
    'M000007',
    'P0000008',
    '人手一頂 支持老蕭娛樂先生老帽紅色款',
    10,
    NULL,
    NULL,
    TO_DATE('2018-12-29 20:00:00','YYYY-MM-DD hh24:mi:ss'),
    TO_DATE('2018-01-20 20:20:00','YYYY-MM-DD hh24:mi:ss'),
    NULL,
    NULL,
    'process1',
    '桃園市桃園區同安街379號',
    25.0177684,
    121.2997996,
    TO_DATE('2018-01-22 19:00:00','YYYY-MM-DD hh24:mi:ss'),
    190
);

INSERT INTO GROUP_OPEN VALUES(
    'G'||LPAD(to_char(GROUP_NO_SEQ.NEXTVAL),4,'0'),
    'M000009',
    'P0000011',
    '與老蕭同款黑色口罩',
    10,
    NULL,
    NULL,
    TO_DATE('2018-12-7 13:00:00','YYYY-MM-DD hh24:mi:ss'),
    TO_DATE('2018-12-10 18:00:00','YYYY-MM-DD hh24:mi:ss'),
    NULL,
    NULL,
    'fail2',
    '桃園市桃園區中正路420號',
    25.0003198,
    121.2997996,
    TO_DATE('2018-01-01 15:00:00','YYYY-MM-DD hh24:mi:ss'),
    2000
);

--揪團討論區
---------------
CREATE TABLE FORUM(
   FORUM_NO VARCHAR(9) NOT NULL
   ,GROUP_NO VARCHAR2(10) NOT NULL
   ,MEMBER_NO VARCHAR2(7)
   ,FORUM_CONTENT VARCHAR2(400)
   ,FORUM_TIME  TIMESTAMP
   ,CONSTRAINT FORUM_FK PRIMARY KEY(FORUM_NO)
   ,FOREIGN KEY(GROUP_NO) REFERENCES GROUP_OPEN(GROUP_NO)
   ,FOREIGN KEY(MEMBER_NO) REFERENCES MEMBER(MEMBER_NO)
   
   );


CREATE SEQUENCE FORUM_SEQ
    INCREMENT BY 1
    START WITH 1
    NOMAXVALUE
    NOCYCLE
    NOCACHE;


INSERT INTO FORUM VALUES('F'||LPAD(to_char(FORUM_SEQ.NEXTVAL),4,'0'), 'G0001','M000004','好久沒團了希望成團',TO_TIMESTAMP('2018-12-08 152222','YYYY-MM-DD hh24miss'));
INSERT INTO FORUM VALUES('F'||LPAD(to_char(FORUM_SEQ.NEXTVAL),4,'0'), 'G0001','M000005','我支持李毓芬！',TO_TIMESTAMP('2018-12-08 191322','YYYY-MM-DD hh24miss'));
INSERT INTO FORUM VALUES('F'||LPAD(to_char(FORUM_SEQ.NEXTVAL),4,'0'), 'G0002','M000008','期待貨可以快一點到', TO_TIMESTAMP('2018-01-01 092022','YYYY-MM-DD hh24miss'));





    
--跟團紀錄
---------------------------
CREATE TABLE  GROUP_MEMBER(
     MEMBER_NO VARCHAR2(7) NOT NULL
    ,GROUP_NO  VARCHAR2(6) NOT NULL
    ,JOIN_TIME TIMESTAMP
    ,PRODUCT_QUANTITY NUMBER(6)
    ,PAY_STATUS VARCHAR2(10)
    ,GROUP_MEMBER_STATUS VARCHAR2(10)
    ,LOG_OUT_REASON VARCHAR2(400)
    ,ORDER_PHONE NUMBER(10)
    ,PAY_METHODS VARCHAR2(10)
    ,CONSTRAINT GROUP_MEMBER_FK PRIMARY KEY (MEMBER_NO,GROUP_NO)
    ,FOREIGN KEY(MEMBER_NO) REFERENCES MEMBER (MEMBER_NO)
    ,FOREIGN KEY(GROUP_NO) REFERENCES GROUP_OPEN  (GROUP_NO)
);



INSERT INTO GROUP_MEMBER VALUES(
    'M000001',
    'G0001',
    TO_DATE('2018-12-04 190000','YYYY-MM-DD hh24miss'),
    3,
    'COMPLETE2',
    'withgroup',
    NULL,
    0973645829,
    'EWALLET'
);


INSERT INTO GROUP_MEMBER VALUES(  
    'M000002',
    'G0001',
    TO_DATE('2018-12-08 190500','YYYY-MM-DD hh24miss'),
    1,
    'COMPLETE2',
    'withgroup',
    NULL,
    0945029384,
    'EWALLET'
);

INSERT INTO GROUP_MEMBER VALUES(
    'M000003',
    'G0001',
    TO_DATE('2018-12-20 132000','YYYY-MM-DD hh24miss'),
    2,
    'COMPLETE2',
    'withgroup',
    NULL,
    0947837495,
    'CREDITCARD'
);
INSERT INTO GROUP_MEMBER VALUES(
    'M000004',
    'G0001',
    TO_DATE('2018-12-28 140000','YYYY-MM-DD hh24miss'),
    4,
    'CANCEL3',
    'quit',
    '價格太貴了',
    0932934856,
    'CREDITCARD'
);
INSERT INTO GROUP_MEMBER VALUES(
    'M000005',
    'G0002',
    TO_DATE('2018-12-29 200000','YYYY-MM-DD hh24miss'),
    2,
    'COMPLETE2',
    'withgroup',
    NULL,
    0927384958,
    'CREDITCARD'
);

INSERT INTO GROUP_MEMBER VALUES(
    'M000006',
    'G0002',
    TO_DATE('2018-12-31 170048','YYYY-MM-DD hh24miss'),
    2,
    'COMPLETE2',
    'withgroup',
    NULL,
    0928374568,
    'CREDITCARD'
);
INSERT INTO GROUP_MEMBER VALUES(
    'M000007',
    'G0003',
    TO_DATE('2018-12-07 130048','YYYY-MM-DD hh24miss'),
    5,
    'COMPLETE2',
    'withgroup',
    NULL,
    0927384956,
    'EWALLET'
);

--------------------------------------------------------
--  for Table ORDER_HISTORY 訂單紀錄
--------------------------------------------------------
CREATE TABLE ORDER_HISTORY (
  ORDER_NO          VARCHAR2(14)    NOT NULL PRIMARY KEY
  ,MEMBER_NO        VARCHAR2(7)     NOT NULL 
  ,ORDER_PRICE      NUMBER(10,0)    NOT NULL 
  ,PAY_METHODS      VARCHAR2(14)    NOT NULL 
  ,SHIPPING_METHODS VARCHAR2(14)    NOT NULL 
  ,ORDER_DATE       TIMESTAMP 
  ,ORDER_ETD        TIMESTAMP 
  ,PICKUP_DATE      TIMESTAMP
  ,RECEIVER_ADD     VARCHAR2(80)
  ,RECEIVER_NAME    VARCHAR2(80)
  ,RECEIVER_TEL     VARCHAR2(10)
  ,ORDER_STATUS     VARCHAR2(12)    NOT NULL
  ,CONSTRAINT ORDER_HISTORY_FK FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER (MEMBER_NO)
);
  
CREATE SEQUENCE ORDER_HISTORY_seq
INCREMENT BY 1
START WITH 10016
NOMAXVALUE
NOCYCLE
NOCACHE;

Insert into ORDER_HISTORY 
	values ('O2018081610001'
	,'M000001'
	,3780
	,'EWALLET'
	,'STOREPICKUP'
	,TO_DATE('2018-08-16 130448','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-08-18 152348','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-08-23 214048','YYYY-MM-DD hh24miss')
	,'324桃園市平鎮區民族路二段175號'
	,'吳冠宏'
	,'0911484363'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018081810002'
	,'M000018'
	,300
	,'CREDITCARD'
	,'HOMEDELIVERY'
	,TO_DATE('2018-08-18 103045','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-08-20 220001','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-08-22 071045','YYYY-MM-DD hh24miss')
	,'320桃園市中壢區復興路57號'
	,'白承峰'
	,'0964194913'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018091110003'
	,'M000015'
	,2100
	,'EWALLET'
	,'STOREPICKUP'
	,TO_DATE('2018-09-11 164448','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-09-14 132300','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-09-19 232048','YYYY-MM-DD hh24miss')
	,'320桃園市中壢區環中東路二段176號'
	,'史琬婷'
	,'0947324070'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018092110004'
	,'M000004'
	,7998
	,'EWALLET'
	,'HOMEDELIVERY'
	,TO_DATE('2018-09-21 114248','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-09-24 185600','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-09-29 120348','YYYY-MM-DD hh24miss')
	,'330桃園市桃園區三民路三段313號'
	,'潘怡帆'
	,'0937626715'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018092110005'
	,'M000007'
	,1700
	,'CREDITCARD'
	,'HOMEDELIVERY'
	,TO_DATE('2018-09-21 094448','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-09-24 182300','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-09-28 232048','YYYY-MM-DD hh24miss')
	,'105台北市松山區敦化北路199號'
	,'尹丞恩'
	,'0917059007'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018100610006'
	,'M000001'
	,19995
	,'CREDITCARD'
	,'STOREPICKUP'
	,TO_DATE('2018-10-06 210248','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-10-09 132448','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-10-15 163448','YYYY-MM-DD hh24miss')
	,'406台中市北屯區崇德路三段835號'
	,'葉佳芳'
	,'0958557370'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018101010007'
	,'M000012'
	,1900
	,'EWALLET'
	,'HOMEDELIVERY'
	,TO_DATE('2018-10-08 111548','YYYY-MM-DD hh24miss')
	,''
	,''
	,'300新竹市東區明湖路773號'
	,'方怡萱'
	,'0977966322'
	,'CANCEL5'
);
Insert into ORDER_HISTORY 
	values ('O2018101610008'
	,'M000001'
	,3258
	,'CREDITCARD'
	,'STOREPICKUP'
	,TO_DATE('2018-10-16 140208','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-10-19 194230','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-10-22 134024','YYYY-MM-DD hh24miss')
	,'324桃園市平鎮區民族路二段175號'
	,'吳冠宏'
	,'0911484363'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018102110009'
	,'M000010'
	,500
	,'CREDITCARD'
	,'HOMEDELIVERY'
	,TO_DATE('2018-10-21 110248','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-10-24 111100','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-10-30 145700','YYYY-MM-DD hh24miss')
	,'600嘉義市東區林森東路1號'
	,'羅伯諺'
	,'0902456073'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018103010010'
	,'M000005'
	,3630
	,'CREDITCARD'
	,'STOREPICKUP'
	,TO_DATE('2018-10-30 210543','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-11-02 152231','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-11-15 121340','YYYY-MM-DD hh24miss')
	,'111台北市士林區福林路60號'
	,'莊睿倩'
	,'0937521590'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018111110011'
	,'M000001'
	,16000
	,'CREDITCARD'
	,'STOREPICKUP'
	,TO_DATE('2018-11-11 111111','YYYY-MM-DD hh24miss')
	,''
	,''
	,'324桃園市平鎮區民族路二段175號'
	,'吳冠宏'
	,'0911484363'
	,'CANCEL5'
);
Insert into ORDER_HISTORY 
	values ('O2018111210012'
	,'M000002'
	,1500
	,'EWALLET'
	,'HOMEDELIVERY'
	,TO_DATE('2018-11-12 120248','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-11-13 132522','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-11-15 213448','YYYY-MM-DD hh24miss')
	,'704台南市北區公園路321巷'
	,'路依珊'
	,'0933169030'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018120610013'
	,'M000002'
	,2300
	,'EWALLET'
	,'HOMEDELIVERY'
	,TO_DATE('2018-12-06 100248','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-12-09 045522','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-12-13 063320','YYYY-MM-DD hh24miss')
	,'704台南市北區公園路321巷'
	,'路依珊'
	,'0933169030'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018121910014'
	,'M000013'
	,3999
	,'EWALLET'
	,'STOREPICKUP'
	,TO_DATE('2018-12-19 042825','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-12-21 112345','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-12-24 232448','YYYY-MM-DD hh24miss')
	,'202基隆市中正區信二路280號'
	,'牛雅琪'
	,'0962409820'
	,'COMPLETE4'
);
Insert into ORDER_HISTORY 
	values ('O2018122410015'
	,'M000018'
	,599
	,'EWALLET'
	,'HOMEDELIVERY'
	,TO_DATE('2018-12-24 042825','YYYY-MM-DD hh24miss')
	,TO_DATE('2018-12-27 152345','YYYY-MM-DD hh24miss')
	,TO_DATE('2019-01-02 215448','YYYY-MM-DD hh24miss')
	,'320桃園市中壢區復興路57號'
	,'白承峰'
	,'0964194913'
	,'COMPLETE4'
);
--------------------------------------------------------
--  for Table ORDER_DETAIL 訂單明細
--------------------------------------------------------
CREATE TABLE ORDER_DETAIL (
  ORDER_NO      VARCHAR2(14)    NOT NULL 
  ,GOODS_NO     VARCHAR2(8)     NOT NULL 
  ,GOODS_BONUS  NUMBER(10,0)
  ,GOODS_PC     NUMBER(10,0)
  ,CONSTRAINT ORDER_DETAIL_FK1 FOREIGN KEY (ORDER_NO) REFERENCES ORDER_HISTORY (ORDER_NO)
  ,CONSTRAINT ORDER_DETAIL_FK2 FOREIGN KEY (GOODS_NO) REFERENCES GOODS (GOODS_NO)
  ,CONSTRAINT ORDER_DETAIL_PK PRIMARY KEY (ORDER_NO,GOODS_NO)
);

Insert into ORDER_DETAIL 
    values ('O2018081610001'
    ,'P0000001'
    ,750
    ,2
);
Insert into ORDER_DETAIL 
    values ('O2018081610001'
    ,'P0000002'
    ,800
    ,1
);
Insert into ORDER_DETAIL 
    values ('O2018081610001'
    ,'P0000003'
    ,1480
    ,1
);
Insert into ORDER_DETAIL 
    values ('O2018081810002'
    ,'P0000011'
    ,150
    ,2
);
Insert into ORDER_DETAIL 
    values ('O2018091110003'
    ,'P0000009'
    ,500
    ,3
);
Insert into ORDER_DETAIL 
    values ('O2018091110003'
    ,'P0000010'
    ,300
    ,2
);Insert into ORDER_DETAIL 
    values ('O2018092110004'
    ,'P0000005'
    ,3999
    ,2
);
Insert into ORDER_DETAIL 
    values ('O2018092110005'
    ,'P0000008'
    ,850
    ,1
);
Insert into ORDER_DETAIL 
    values ('O2018092110005'
    ,'P0000012'
    ,850
    ,1
);
Insert into ORDER_DETAIL 
    values ('O2018100610006'
    ,'P0000005'
    ,3999
    ,5
);
Insert into ORDER_DETAIL
    values ('O2018101010007'
    ,'P0000007'
    ,150
    ,2
);
Insert into ORDER_DETAIL
    values ('O2018101010007'
    ,'P0000010'
    ,300
    ,2
);
Insert into ORDER_DETAIL 
    values ('O2018101010007'
    ,'P0000009'
    ,500
    ,2
);
Insert into ORDER_DETAIL 
    values ('O2018101610008'
    ,'P0000004'
    ,149
    ,2
);
Insert into ORDER_DETAIL 
    values ('O2018101610008'
    ,'P0000003'
    ,1480
    ,2
);
Insert into ORDER_DETAIL 
    values ('O2018102110009'
    ,'P0000009'
    ,500
    ,2
);Insert into ORDER_DETAIL 
    values ('O2018103010010'
    ,'P0000004'
    ,121
    ,30
);
Insert into ORDER_DETAIL 
    values ('O2018111110011'
    ,'P0000013'
    ,200
    ,5
);
Insert into ORDER_DETAIL 
    values ('O2018111110011'
    ,'P0000014'
    ,600
    ,5
);
Insert into ORDER_DETAIL 
    values ('O2018111110011'
    ,'P0000015'
    ,400
    ,5
);
Insert into ORDER_DETAIL 
    values ('O2018111110011'
    ,'P0000016'
    ,400
    ,5
);
Insert into ORDER_DETAIL 
    values ('O2018111110011'
    ,'P0000017'
    ,300
    ,5
);
Insert into ORDER_DETAIL 
    values ('O2018111110011'
    ,'P0000018'
    ,1300
    ,5
);
Insert into ORDER_DETAIL 
    values ('O2018111210012'
    ,'P0000007'
    ,150
    ,5
);
Insert into ORDER_DETAIL
    values ('O2018111210012'
    ,'P0000011'
    ,150
    ,5
);
Insert into ORDER_DETAIL
    values ('O2018120610013'
    ,'P0000014'
    ,600
    ,1
);
Insert into ORDER_DETAIL
    values ('O2018120610013'
    ,'P0000016'
    ,400
    ,1
);
Insert into ORDER_DETAIL
    values ('O2018120610013'
    ,'P0000018'
    ,1300
    ,1
);
Insert into ORDER_DETAIL 
    values ('O2018121910014'
    ,'P0000005'
    ,3999
    ,1
);
Insert into ORDER_DETAIL 
    values ('O2018122410015'
    ,'P0000004'
    ,149
    ,1
);
Insert into ORDER_DETAIL 
    values ('O2018122410015'
    ,'P0000007'
    ,150
    ,1
);
Insert into ORDER_DETAIL 
    values ('O2018122410015'
    ,'P0000010'
    ,300
    ,1
);
--------------------------------------------------------
--  for Table FAVORITE_GOODS 最愛商品
--------------------------------------------------------
CREATE TABLE FAVORITE_GOODS (   
  MEMBER_NO     VARCHAR2(7) NOT NULL 
  ,GOODS_NO     VARCHAR2(8) NOT NULL
  ,CONSTRAINT FAVORITE_GOODS_FK1 FOREIGN KEY (MEMBER_NO) REFERENCES MEMBER (MEMBER_NO)
  ,CONSTRAINT FAVORITE_GOODS_FK2 FOREIGN KEY (GOODS_NO) REFERENCES GOODS (GOODS_NO)
  ,CONSTRAINT FAVORITE_GOODS_PK PRIMARY KEY (MEMBER_NO,GOODS_NO)
);

Insert into FAVORITE_GOODS values ('M000001','P0000013');
Insert into FAVORITE_GOODS values ('M000001','P0000014');
Insert into FAVORITE_GOODS values ('M000001','P0000015');
Insert into FAVORITE_GOODS values ('M000001','P0000016');
Insert into FAVORITE_GOODS values ('M000002','P0000007');
Insert into FAVORITE_GOODS values ('M000002','P0000003');
Insert into FAVORITE_GOODS values ('M000003','P0000004');
Insert into FAVORITE_GOODS values ('M000004','P0000002');
Insert into FAVORITE_GOODS values ('M000006','P0000018');
Insert into FAVORITE_GOODS values ('M000005','P0000011');
Insert into FAVORITE_GOODS values ('M000007','P0000010');
Insert into FAVORITE_GOODS values ('M000011','P0000003');
Insert into FAVORITE_GOODS values ('M000004','P0000007');
Insert into FAVORITE_GOODS values ('M000018','P0000017');
Insert into FAVORITE_GOODS values ('M000020','P0000003');
Insert into FAVORITE_GOODS values ('M000002','P0000017');
Insert into FAVORITE_GOODS values ('M000012','P0000012');
Insert into FAVORITE_GOODS values ('M000017','P0000003');
Insert into FAVORITE_GOODS values ('M000018','P0000001');
Insert into FAVORITE_GOODS values ('M000019','P0000002');
Insert into FAVORITE_GOODS values ('M000007','P0000007');
Insert into FAVORITE_GOODS values ('M000005','P0000004');
Insert into FAVORITE_GOODS values ('M000005','P0000007');
Insert into FAVORITE_GOODS values ('M000009','P0000003');
Insert into FAVORITE_GOODS values ('M000001','P0000004');
Insert into FAVORITE_GOODS values ('M000014','P0000002');
Insert into FAVORITE_GOODS values ('M000013','P0000005');
Insert into FAVORITE_GOODS values ('M000001','P0000005');
Insert into FAVORITE_GOODS values ('M000008','P0000004');
Insert into FAVORITE_GOODS values ('M000013','P0000016');


----------------------------------------------------------------------------------------------------------------
--  </商品團購結束>
----------------------------------------------------------------------------------------------------------------

commit;