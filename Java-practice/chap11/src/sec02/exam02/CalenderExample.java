package sec02.exam02;

import java.util.Calendar;

public class CalenderExample {

	public static void main(String[] args) {
		
		//Calendar now = new Calendar();					Calendar는 추상 클래스기 때문에 new 연산자로 객체를 만들 수 없음.
		Calendar now = Calendar.getInstance(); 				//Calendar가 가지고 있는 정적메소드 getInstance로 Calendar의 하위 객체를 만들어 리턴 받도록 했음.
		
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH) + 1;			//get은 0부터 11까지의 값을 받아서 +1하기
		int day	= now.get(Calendar.DAY_OF_MONTH);
		
		int week = now.get(Calendar.DAY_OF_WEEK);			//1~7까지의 숫자를 리턴.
		String strWeek = null;
		switch(week) {
		case Calendar.MONDAY:								//Calendar.MONDAY는 1이 출력됨. 그래서 case 1:과 같은 느낌
			strWeek = "월";
			break;
		case Calendar.TUESDAY:
			strWeek = "화";
			break;
		case Calendar.WEDNESDAY:
			strWeek = "수";
			break;
		case Calendar.THURSDAY:
			strWeek = "목";
			break;
		case Calendar.FRIDAY:
			strWeek = "금";
			break;
		case Calendar.SATURDAY:
			strWeek = "토";
			break;
		case Calendar.SUNDAY:
			strWeek = "일";
			break;
		}
		int amPm = now.get(Calendar.AM_PM);
		String strAmPm = null;
		if(amPm == Calendar.AM) {
			strAmPm = "오전";
		} else {
			strAmPm = "오후";
		}
		
		int hour = now.get(Calendar.HOUR);
		int minute = now.get(Calendar.MINUTE);
		int second = now.get(Calendar.SECOND);
		
		
		System.out.print(year + "년 ");
		System.out.print(month + "월 ");
		System.out.print(day + "일 ");
		System.out.print(strWeek + "요일 ");
		System.out.print(strAmPm + " ");
		System.out.print(hour + "시 ");
		System.out.print(minute + "분 ");
		System.out.print(second + "초 ");
		
	}

}
