package sec03.exam04;
//exam03이랑 참고 비교하기, 다른 생성자 호출30강
public class Car {

	//Field
		String company = "현대자동차";
		String model;
		String color;
		int maxSpeed;
		
		//Constructor
		Car() {
		}
		Car(String model) {
			/*this.model = model;
			this.color = null;
			this.maxSpeed = 0;*/
			this(model, null, 0);
		}
		Car(String model, String color) {
			/*this.model = model;
			this.color = color;
			this.maxSpeed = 0;*/
			this(model, color, 0);
		}
		Car(String model, String color, int maxSpeed) {
			this.model = model;
			this.color = color;
			this.maxSpeed = maxSpeed;
		}
}
