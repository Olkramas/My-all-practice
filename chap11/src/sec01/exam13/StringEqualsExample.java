package sec01.exam13;
//60강
public class StringEqualsExample {

	public static void main(String[] args) {
		
		String strVar1 = new String("신민철");
		String strVar2 = "신민철";
		if(strVar1 == strVar2) {							//참조하고 있는 객체의 번지가 같냐?
			System.out.println("같은 String 객체를 참조하고 있다.");
		} else {
			System.out.println("다른 Strign 객체를 참조하고 있다.");
		}
		
		if(strVar1.equals(strVar2)) {						//객제의 문자열이 같냐?
			System.out.println("같은 문자열을 가지고 있다.");
		} else {
			System.out.println("다른 문자열을 가지고 있다.");
		}

	}

}
