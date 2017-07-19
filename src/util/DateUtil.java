package util;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateUtil {
	
	public static java.sql.Date toSqlDate(String dt){
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date hire_date = null;
		try {
			java.util.Date hire = sd.parse(dt);
			hire_date = new java.sql.Date(hire.getTime()); //long값 hire을 바꾼 뒤 sql Date 생성자에 넣으면 바뀜.
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return hire_date;
	}
}
