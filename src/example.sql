

select * from appointment where M_ID = 'user1';

select * from place;


select * from BOOKING_MEMBER;


select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user2'; 

select * from member;
select b.B_ID, m.M_ID, m.M_name, b.B_num, b.B_Date, b.B_startTime, p.P_type from Member m, Booking_Member b, Place p, PlaceAddr pa where m.M_ID = b.M_ID and p.P_type in ( '√‡±∏¿Â' )
select * from member

delete from update where 

select B_ID, B_Date, B_STARTTIME, P_NAME, B_NUM from PLACE A , BOOKING_MEMBER B where A.P_ID = B.P_ID AND M_ID = 'user1';