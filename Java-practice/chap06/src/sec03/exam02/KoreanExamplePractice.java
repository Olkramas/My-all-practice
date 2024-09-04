package sec03.exam02;

public class KoreanExamplePractice {

	public static void main(String[] args) {
		
		KoreanPractice k1 = new KoreanPractice("박자바", "011225-1234567");
		System.out.println(k1.nation);
		System.out.println(k1.name);
		System.out.println(k1.ssn);
		
		System.out.println("----------");
		
		KoreanPractice k2 = new KoreanPractice("김댕댕", "010259-1224452");
		System.out.println(k2.nation);
		System.out.println(k2.name);
		System.out.println(k2.ssn);
		
		

	}

}
