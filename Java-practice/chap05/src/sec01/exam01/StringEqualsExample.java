package sec01.exam01;

public class StringEqualsExample {

	public static void main(String[] args) {
		String strVar1 = "신민철";
		String strVar2 = "신민철";
		
		if(strVar1 == strVar2) {
			System.out.println("strVar1과 strVar2는 참조가 같음");
		} else {
				System.out.println("strVar1과 strVar2는 참조가 다름");
			}
		
		if(strVar1.equals(strVar2)) {
			System.out.println("strVar1과 strVar2는 문자열이 같음");
		}
		String strVar3 = new String("신민철");
		String strVar4 = new String("신민철"); //문자열 자체는 strVar1, strVar2와 같지만 다른 참조위치를 가지는 3,4
		
		if(strVar3 == strVar4) {
			System.out.println("strVar3과 strVar4는 참조가 같음");
		} else {
				System.out.println("strVar3과 strVar4는 참조가 다름");
			}
		
		if(strVar3.equals(strVar4)) {
			System.out.println("strVar3과 strVar4는 문자열이 같음");
		}
		
		}
		
		

	}


//"=="은 문자열이 아닌 참조위치를 비교하는 것. equals는 참조위치가 아닌 문자열 자체를 비교함