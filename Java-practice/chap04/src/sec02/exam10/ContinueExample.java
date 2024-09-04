package sec02.exam10;

public class ContinueExample {

	public static void main(String[] args) {
		
		
		for(int i=1; i<=10; i++) {
			if(i%2 != 0) {
				continue;
			}
			System.out.println(i);
		}
		
	}

}
//19강 continue를 만나면 for문에서는 증감식으로 감. while에서는 조건식으로 이동(조건을 맞출 때 까지 반복)