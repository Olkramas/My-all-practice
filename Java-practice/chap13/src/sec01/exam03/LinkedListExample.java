package sec01.exam03;
/*
자바 기초강의 146강
LinkedList, ArrayList결과 차이
LinkedList는 다른 리스트와 다르게 새로운 리스트를 추가해도 
 */
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class LinkedListExample {

	public static void main(String[] args) {
		
		List<String> list1 = new ArrayList<>();
		
		List<String> list2 = new LinkedList<>();
		
		long startTime;
		long endTime;
		
		startTime = System.nanoTime();
		for(int i=0; i<10000; i++) {
			list1.add(0, String.valueOf(i));
		}
		endTime = System.nanoTime();
		System.out.println(endTime - startTime);
		
		
		startTime = System.nanoTime();
		for(int i=0; i<10000; i++) {
			list2.add(0, String.valueOf(i));
		}
		endTime = System.nanoTime();
		System.out.println(endTime - startTime);
	}

}
