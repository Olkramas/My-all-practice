package sec03.exam04.pra01;

public class CarExamplePra {

	public static void main(String[] args) {
		
		CarPra car1 = new CarPra();
		System.out.println(car1.company);
		System.out.println(car1.model);
		System.out.println(car1.color);
		System.out.println(car1.maxSpeed);
		
		CarPra car2 = new CarPra("자가");
		System.out.println(car2.company);
		System.out.println(car2.model);
		System.out.println(car2.color);
		System.out.println(car2.maxSpeed);
		
		CarPra car3= new CarPra("자가", "빨강");
		System.out.println(car3.company);
		System.out.println(car3.model);
		System.out.println(car3.color);
		System.out.println(car3.maxSpeed);
		
		CarPra car4 = new CarPra("자가", "빨강", 800);
		System.out.println(car4.company);
		System.out.println(car4.model);
		System.out.println(car4.color);
		System.out.println(car4.maxSpeed);

	}

}
