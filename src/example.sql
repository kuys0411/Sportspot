

select * from appointment where M_ID = 'user1';

select * from place;

select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa 
where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in( ' �ѷ�������Ʈ��' ) 


select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in ( '������'  , '�ѷ�������Ʈ��' )





select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type, pa.P_Dong from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type ='�ѷ�������Ʈ��'







select * from BOOKING_MEMBER;

delete from BOOKING_MEMBER;
select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user2'; 

select * from member;
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '�౸��' )
select * from member

delete from update where 
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and b.P_ID = p.P_ID and p.P_ID = pa.P_ID and p.P_type in ( '������' )
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '�౸��' ) and P_Dong ='��ǵ�'

de
select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user1';