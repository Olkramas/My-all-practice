package sec01.exam04;

import java.util.Date;

public class ToStringExample {

	public static void main(String[] args) {
		
		Object obj1 = new Object();
		
		Date obj2 = new Date();					//이 Date클래스는 java.util에 소속된 고유API 그래서 임폴트해준거 쉬프트+컨트롤+o

		System.out.println(obj1.toString());
		System.out.println(obj2.toString());
	}

}
