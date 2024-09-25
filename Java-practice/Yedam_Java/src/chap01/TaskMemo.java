package practice01;

public class TaskMemo {

	public static void main(String[] args) {
		int num1 = 1;
		int num2 = 0;
		
		for(int i=1; i<=5; i++) {
			for(int j=1; j<=10; j++) {
				num2++;
				if((j == 3 || j == 6 || j == 9) && (num1 % 30 == 0)) {
					System.out.print("**" + "\t");
				} else if((j == 3 || j == 6 || j == 9) || (num1 % 30 == 0 && j < 10) || (num2 % 30 == 0)) {
					System.out.print("*" + "\t");
				} else {
					System.out.print(num2 + "\t" );
				}
				
			}
			num1 = i*10;
			System.out.println();
		}
		
		
		
//		if(j == 3 || j == 6 || j == 9) {
//			if((j == 3 || j == 6 || j == 9) && (num1 % 30 == 0)) {
//				num1 % 30 == 0
//			} else {
//				System.out.print("*" + "\t");
//			}
//		} else {
//			System.out.print((num1 + j) + "\t" );
//		}
		
//		if((j == 3 || j == 6 || j == 9) && (num1 % 30 == 0)) {
//			System.out.print("**" + "\t");
//		} else if(num1 % 30 == 0) {
//			System.out.print("*" + "\t");
//		} else if (j == 3 || j == 6 || j == 9) {
//			System.out.print("*" + "\t");
//		} else {
//			System.out.print((num1 + j) + "\t" );
//		}
//		for(int i=1; i<=5; i++) {
//			for(int j=1; j<=10; j++) {
//				num2 = j + num1;
//				if(j % 3 == 0) {
//					if(num1 % 3 == 0 && j % 3 == 0) {
//						
//					}
//				} else {
//					System.out.print(num2 + " ");	
//				}
//				
//				
////				num2 = j + num1;
////				if(j % 3 == 0 && num1 % 3 == 0) {
////					System.out.print("🖤🖤 ");
////				} else if (j % 3 == 0) {
////					System.out.println("🖤 ");
////				} else {
////					System.out.print(num2 + " ");					
////				}
//			}
//			num1 = 10 * i;
//			System.out.println();
//		}
	}

}
