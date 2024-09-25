package practice01;

public class StarPlusPractice {

	public static void main(String[] args) {
		String str1 = "";
		String str2 = "";
		
		for(int i=1; i<=4; i++) {
			for(int j=1; j<=4-i; j++) {
				str1 += "b";
			}
			str2 += "*";
			System.out.println(str1 + str2);
			str1 = "";
		}
		
		String str3 = "";
		String str4 = "";
		
		for(int i=1; i<=4; i++) {
			for(int j=1; j<=4-i; j++) {
				str3 += "b";
				System.out.print(str3);
				str3 = "";
			}
			str4 += "*";
			System.out.print(str4);
			System.out.println();
		}
	}

}
