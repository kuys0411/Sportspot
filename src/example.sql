

select * from appointment where M_ID = 'user1';

select * from place;

select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa 
where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in( ' 롤러스케이트장' ) 


select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in ( '수영장'  , '롤러스케이트장' )


insert into Message (Message_sender, Message_receiver, Message_Body, Message_Date ) values ('user1','koo','hello world', SYSDATE);


select * from message

select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type ='롤러스케이트장'


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
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '축구장' )
select * from member

delete from update where 
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in ( '빙상장' )
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '축구장' ) and P_Dong ='잠실동'

de
select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user1';

create sequence seq_message_id;

insert into에서는


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
delete from message where Message_id = 5

create



select M_ID from member

selectg
select * from message


68 2017-07-19 8 손기정 체육공원 인조잔디축구장 10 

예약번호 68, 10명 삭제해야함.

update bp set count=''  from Booking_Member b, Place p, Booking_Place bp where b.P_ID = p.P_ID and p.P_ID = bp.P_ID;

select b.b_id, p.p_id, bp.count, bp.BP_date,p.P_name, bp.BP_startTime from Booking_Member b, Place p, Booking_Place bp where b.b_id = 68 and bp.bp_startTime = 8 and b.p_id = p.p_id and p.P_id = bp.p_id

select P_ID, BP_startTime, BP_Date, count from booking_Place where P_ID = 283




P_ID 283, count 61


select * from BOOKING_MEMBER


update Booking_Place set count=?  from Booking_Member b, Place p, Booking_Place bp 
			 where b.B_ID = 5 and b.P_ID = p.P_ID and p.P_ID = bp.P_ID


212 2017-07-21 9 손기정 체육공원 인조잔디축구장 30명 

select b.b_id, p.p_id, bp.count, bp.BP_date,p.P_name, bp.BP_startTime from Booking_Member b, Place p, Booking_Place bp where b.b_id = 212 and bp.bp_startTime = 9 and b.p_id = p.p_id and p.P_id = bp.p_id





