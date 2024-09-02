package sec01.exam04;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSetExample1 {

	public static void main(String[] args) {
		Set<String> set = new HashSet<>();
		
		set.add("java");
		set.add("Jdbc");
		set.add("Servlet");
		set.add("java");
		set.add("iBatis");
														//java라는 문자열을 두번 추가함. 문자열이 같으면 String객체는 서로 공유함. 동등객체가 됨.
		int size = set.size();
		System.out.println("총 객체의 수: " + size);
		
		Iterator<String> iterator = set.iterator();		//Interator 인터페이스의 객체 생성. <>안에는 HashSet에서 생성한 객체의 값과 같은 변수타입을 넣으면 됨.
		while(iterator.hasNext()) {						//hasnext 다음요소가 존재하는지 확인. 가져올 게 있으면 boolean 타입으로 true
			String element = iterator.next();			//.next 하나의 객체를 가져와 라는 의미
			System.out.println("\t" + element);
		}
		
		set.remove("Jdbc");
		set.remove("Servlet");
		
		System.out.println("총 객체의 수: " + size);
		
		for(String element : set) {						
			System.out.println("\t" + element);	
		}
		
		set.clear();									//hashset안에 모든 것들을 삭제
		if(set.isEmpty()) {System.out.println("비어있음.");}
				

	}

}
