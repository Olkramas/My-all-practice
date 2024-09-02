package sec01.exam06;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class HashMapExample {

	public static void main(String[] args) {
		Map<String, Integer> map = new HashMap<>();
		map.put("최태백", 90);
		map.put("최태백1", 91);
		map.put("최태백2", 92);
		map.put("최태백1", 93);
		System.out.println("총 Entry수: " + map.size());				//key 값이 동일한 문자열일 경우 같은 해시코드를 가짐
		
		//객체 찾기
		System.out.println("\t최태백 : " + map.get("최태백"));
		System.out.println("\t최태백1 : " + map.get("최태백1"));
		System.out.println();
		
		//객체를 하나씩 출력 처리
		Set<String> keySet = map.keySet();							//.keySet() map에 저장된 모든 키를 Set 타입으로 반환함.
		Iterator<String> keyIterator = keySet.iterator();			//위 과정을 통해 List, Set 인터페이스의 구현객체에서 사용하는 .iterator 컬렉션의 요소를 순차적으로 접근할 수 있음.
		while(keyIterator.hasNext()) {								//.hasNext 다음 요소가 있는지 확인.
			String key = keyIterator.next();						//.next 다음요소를 반환합니다.
			Integer value = map.get(key);
			System.out.println("\t" + key + " : " + value);
		}
		System.out.println();
		
		//객체삭제
		map.remove("최태백1");
		System.out.println("총 Entry의 수 " + map.size());
		
		//객체 하나씩 처리
		Set<Map.Entry<String, Integer>> entrySet = map.entrySet();	//.entrySet맵의 모든 키-값 쌍을 Set 형태로 반환함
		Iterator<Map.Entry<String, Integer>> entryIterator = entrySet.iterator();
		while(entryIterator.hasNext()) {
			Map.Entry<String, Integer> entry = entryIterator.next();
			String key = entry.getKey();
			Integer value = entry.getValue();
			System.out.println("\t" + key + " : " + value);
		}
		System.out.println();
		
		//객체 전체 삭제
		map.clear();
		System.out.println("총 Entry의 수: " + map.size());
	}

}
