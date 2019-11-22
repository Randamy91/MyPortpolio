package kr.co.semo.helper;

import java.util.Calendar;

public class TimeHelper {
	
	public String timeout( ) {
		Calendar c = Calendar.getInstance();
		String pubDate = String.format("%04d-%02d-%02d %02d:%02d:%02d",
                c.get(Calendar.YEAR), c.get(Calendar.MONTH) + 1, c.get(Calendar.DAY_OF_MONTH),
                c.get(Calendar.HOUR_OF_DAY), c.get(Calendar.MINUTE), c.get(Calendar.SECOND));
		return pubDate;
	}

}
