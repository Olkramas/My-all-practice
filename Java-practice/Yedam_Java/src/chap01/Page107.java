package chap01;

public class Page107 {

	public static void main(String[] args) {
		short s1 = 1;
		short s2 = 2;
		int i1 = 3;
		int i2 = 4;
		
		int result1 = s1 + s2;
		System.out.println(result1);
		int result2 = i1 + i2;
		System.out.println(result2);
		
		//5
		char c1 = 'a';
		int c2 = c1 + 1;
		System.out.println((char)c2);
		
		//6
		int x = 5;
		int y = 2;
		double result3 = x / y;
		System.out.println(result3);
		
		//7 결과로 2.5가 나오게 하기
		int x1 = 5;
		int y1 = 2;
		double result4 = (double)x / y;
		System.out.println(result4);
		
		//8 두 실수를 덧셈 연산하고 소수점 이하 자리를 버리고 싶다.
		double var1 = 3.5;
		double var2 = 2.7;
		int result5 = (int)(var1 + var2);
		System.out.println(result5);
		
		//9 result6라는 변수에 9가 저장되도록 하기.
		long var3 = 2L;
		float var4 = 1.8f;
		double var5 = 2.5;
		String var6 = "3.9";
		int result6 = (int) (var3 + var4 + (int)(var5 + Double.parseDouble(var6)));
		System.out.println(result6);
		
		//10 
		String str1 = 2 + 3 + "";
		String str2 = 2 + "" + 3;
		String str3 = "" + 2 + 3;
		System.out.println(str1);
		System.out.println(str2);
		System.out.println(str3);
		
		//11
		byte value1 = Byte.parseByte("10");
		int value2 = Integer.parseInt("1000");
		float value3 = Float.parseFloat("20.5");
		double value4 = Double.parseDouble("3.14159");
		
		
	}

}
