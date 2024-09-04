package sec03.exam03.practice01;

public class CarExamplePra {

	public static void main(String[] args) {
		
		CarPrac car1 = new CarPrac();
		System.out.println(car1.company);
		System.out.println(car1.model);
		System.out.println(car1.color);
		System.out.println(car1.maxSpeed);
		
		CarPrac car2 = new CarPrac("자가용");
		System.out.println(car2.company);
		System.out.println(car2.model);
		System.out.println(car2.color);
		System.out.println(car2.maxSpeed);
		
		CarPrac car3 = new CarPrac("자가용", "노랑");
		System.out.println(car3.company);
		System.out.println(car3.model);
		System.out.println(car3.color);
		System.out.println(car3.maxSpeed);
		
		CarPrac car4 = new CarPrac("자가용", "노랑", 200);
		System.out.println(car4.company);
		System.out.println(car4.model);
		System.out.println(car4.color);
		System.out.println(car4.maxSpeed);

	}

}
