package lecture40.exam01;

public class SwitchExample {

	public static void main(String[] args) {
		char grade = 'B';
		
		switch(grade){
		case 'a' : 
		case 'A' :
		System.out.println("우수회원입니다."); break;
		
		case 'b' :
		case 'B' :
		System.out.println("일반회원입니다."); break;
		}

	}

}
/*
 switch 안에는 실수 타입 빼고 다 들어감.
 문자열, 문자, 정수타입 ok
 * */
