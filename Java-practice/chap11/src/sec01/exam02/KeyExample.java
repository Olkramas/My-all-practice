package sec01.exam02;

import java.util.HashMap;

public class KeyExample {
	public static void main(String[] args) {
		
		HashMap<Key, String> hashMap = new HashMap<Key, String>();
		//		키의타입	값의타입 
		hashMap.put(new Key(1), "value1");
		hashMap.put(new Key(2), "value2");
		hashMap.put(new Key(1), "value2"); 		//key가 같으면 이전key의 값은 없애고 새로운 값을 저장함.
		
		System.out.println(hashMap.size()); //hashMap에 키,값쌍이 얼마나 있는지 확인
		
		HashMap<Member, String> hashMap2 = new HashMap<Member, String>();
		
		hashMap2.put(new Member("fall"), "value1");
		hashMap2.put(new Member("winter"), "value2");
		hashMap2.put(new Member("fall"), "value2");	//첫번째와 세번째 멤버객체가 같은것으로 판단해서 2개가 됨.
		System.out.println(hashMap2.size()); 	
	}
}