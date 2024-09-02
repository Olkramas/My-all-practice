package sec01.exam06;
/*
59강 exit는 만나는 그 순간 JVM종료.
System.exit(0);와 break;의 차이점 확실히 알기.
*/
public class ExitExample {

	public static void main(String[] args) {

		for(int i=0; i<10; i++) {
			System.out.println(i);
			if(i==5) {
				System.exit(0);					//0은 정상종료를 나타내는 값
				//break;
			}
		}
		System.out.println("마무리 코드.");
	}

}
