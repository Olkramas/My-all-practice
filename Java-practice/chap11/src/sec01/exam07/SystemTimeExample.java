package sec01.exam07;
//59강
/*
 currentTimeMillis(); == 1/10^3단위 long값 리턴
 nanoTime(); == 1/10^9단위 long값 리턴
 */
public class SystemTimeExample {

	public static void main(String[] args) {
		
		
		long time1 = System.nanoTime();															//시작시간을 읽기 위한 System의 정적메소드 nanoTime();
		
		int sum1 = 0;
		for(int i=0; i<=1000000; i++) {
			sum1 += i;
		}
		System.out.println("총합은 " + sum1 + "입니다.");
		long time2 = System.nanoTime();															//끝시간 측정 time1에서 time2까지코드가 실행되는 시간을 의미함
		System.out.println("계산까지의 걸린 시간은 " + (time2 - time1) + "나노초 입니다.");				
	}

}
