

select * from appointment where M_ID = 'user1';

select * from place;

select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa 
where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in( ' �ѷ�������Ʈ��' ) 


select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in ( '������'  , '�ѷ�������Ʈ��' )


insert into Message (Message_sender, Message_receiver, Message_Body, Message_Date ) values ('user1','koo','hello world', SYSDATE);


select * from message

select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type ='�ѷ�������Ʈ��'


select * from Message where Message_receiver ='koo'

delete from Message where MESSAGE_sender = 'user1' and MESSAGE_RECEIVER = 'koo' and MESSAGE_BODY = 'Hell'

select * from message;

create sequence seq_b_id;

create sequence seq_message_id;



insert into BOOKING_PLACE values(111, 6, 2017-07-20, 5);

select * from BOOKING_MEMBER
select * from BOOKING_MEMBER;

delete from message;
select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user2'; 

select * from member;
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '�౸��' )
select * from member

delete from update where 
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in ( '������' )
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '�౸��' ) and P_Dong ='��ǵ�'

de
select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user1';

create sequence seq_message_id;

insert into������


insert into Message values(seq_message_id.nextval, ?, ?, ?);


create table Message(
	Message_id Number,
	Message_sender varchar2(255),
	Message_receiver Varchar2(255),
	Message_Body varchar2(1000),
	constraint PK_MSENDER foreign key(Message_sender) references member(m_id),
	constraint PK_MRECEIVER foreign key(Message_receiver) references member(m_id)

);


drop table Message
select * from message


create



select M_ID from member

selectg
select * from member


