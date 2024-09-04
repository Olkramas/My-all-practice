package sec02.exam02;

public class IncreaseDecreaseOperatorExample {

	public static void main(String[] args) {
		int x = 10;
		int y = 10;
		int z;
		
		System.out.println("---------------");
		x++;
		++x;
		System.out.println("x : " + x );
		
		System.out.println("---------------");
		--y;
		y--;
		System.out.println("y : " + y);
		
		System.out.println("---------------");
		z = x++;								//z는 12 x는 13
		System.out.println("z : " + z);
		System.out.println("x : " + x);
		
		System.out.println("---------------");
		z = ++x;
		System.out.println("z : " + z);
		System.out.println("x : " + x);
		
		System.out.println("---------------");
		z = ++x + y++;
		/* 위랑 같은 코드
		  ++x;
		  z = x+y
		  y++
		  한줄로 표현할 수 있지만 가독성이 너무 떨어짐.*/
		System.out.println("x : " + x);
		System.out.println("y : " + y);
		System.out.println("z : " + z);
		
	}

}
// 16강