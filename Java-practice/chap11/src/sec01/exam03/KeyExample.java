package sec01.exam03;

import java.util.HashMap;

public class KeyExample {
	public static void main(String[] args) {
		
		HashMap<Member, String> hashMap2 = new HashMap<Member, String>();
		
		hashMap2.put(new Member("fall"), "value1");
		hashMap2.put(new Member("winter"), "value2");
		hashMap2.put(new Member("fall"), "value2");	//첫번째와 세번째 멤버객체가 같은것으로 판단해서 2개가 됨.
		System.out.println(hashMap2.size()); 	
	}
}