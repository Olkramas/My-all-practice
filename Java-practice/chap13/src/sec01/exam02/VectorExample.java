package sec01.exam02;

import java.util.List;
import java.util.Vector;

public class VectorExample {

	public static void main(String[] args) {
		
		List<Board> list = new Vector<>();
		
		//작업스레드 객체 생성
		Thread threadA = new Thread() {
			public void run() {
			for(int i=1; i<=1000; i++) {
				list.add(new Board("제목"+i, "내용"+i, "글쓴이"+i));
				}
			}
		};

		Thread threadB = new Thread() {
			public void run() {
			for(int i=1001; i<=2000; i++) {
				list.add(new Board("제목"+i, "내용"+i, "글쓴이"+i));
				}
			}
		};
		
		threadA.start();
		threadB.start();
		
		
		//작업스레드들이 모두 종료될 때까지 메인 스레드를 기다리게 함.
		try {
			threadA.join();
			threadB.join();
		} catch(Exception e) {
		}
		
		int size = list.size();
		System.out.println("총객체 수: " + size);
	
	}

}
