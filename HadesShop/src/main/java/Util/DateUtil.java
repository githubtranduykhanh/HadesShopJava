package Util;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;



public class DateUtil {
	public static Timestamp convertStringToTimestamp(String strDate) {
		try {
			DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			// you can change format of date
			Date date = formatter.parse(strDate);
			Timestamp timeStampDate = new Timestamp(date.getTime());

			return timeStampDate;
		} catch (ParseException e) {
			System.out.println("Exception :" + e);
			return null;
		}
	}
	public static String convertTimestampToString(String strDate) {					
			// Parse the input string
	        SimpleDateFormat inputFormat = new SimpleDateFormat("yyyy-MM-dd");
	        Date date;
			try {
				date = inputFormat.parse(strDate);
				// Format the date according to the output string
		        SimpleDateFormat outputFormat = new SimpleDateFormat("yyyy-MM-dd");
		        String outputString = outputFormat.format(date);
		        System.out.println(outputString);
		        return outputString;
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				System.out.println("Exception :" + e);
				return null;
			}        				
	}
}
