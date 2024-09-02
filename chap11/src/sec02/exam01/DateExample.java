package sec02.exam01;
/*
64강 Data클래스
 */
import java.text.SimpleDateFormat;
import java.util.Date;								//컨트롤 쉬프트 o

public class DateExample {

	public static void main(String[] args) {
		
		Date now = new Date();						//Date타입 패키지는 java.util에 있기 때문에 import가 필요함.
		System.err.println(now.toString());			//toString 생략가능. print문의 경우 toString을 자동으로 호출하기 때문에 상관없음.
		
		//SimpleDateFormat패키지는 java.text에 있어서 import 해줘야함.
		SimpleDateFormat time = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
		//SimpleDateFormat 클래스는 날짜와 시간을 특정 형식으로 포맷할 수 있는 기능
		String strNow = time.format(now);			//format 메서드는 Date 객체를 문자열로 변환하며, 변환된 문자열은 사용자가 지정한 날짜 및 시간 형식에 따라 포맷됩니다.
		System.out.println(strNow);

	}

}
