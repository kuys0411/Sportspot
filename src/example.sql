

select * from appointment where M_ID = 'user1';

select * from place;

select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa 
where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in( ' 롤러스케이트장' ) 


select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in ( '수영장'  , '롤러스케이트장' )





select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type ='롤러스케이트장'




select * from message;


select * from BOOKING_MEMBER;

delete from BOOKING_MEMBER;
select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user2'; 

select * from member;
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '축구장' )
select * from member

delete from update where 
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in ( '빙상장' )
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '축구장' ) and P_Dong ='잠실동'

de
select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user1';



select * from message






create table Message(
	Message_sender varchar2(255),
	Message_receiver Varchar2(255),
	Message_Date date,
	Message_Body varchar2(1000),
	constraint PK_MSENDER foreign key(Message_sender) references member(m_id),
	constraint PK_MRECEIVER foreign key(Message_receiver) references member(m_id)

);

select M_ID from member

selectg
select * from member


