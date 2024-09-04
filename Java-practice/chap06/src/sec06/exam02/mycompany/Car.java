package sec06.exam02.mycompany;

import sec06.exam02.hyndai.Engine;
import sec06.exam02.hankook.SnowTire;
import sec06.exam02.kumho.BigWidthTire;


public class Car {
	//Field
	Engine engine = new Engine();
	SnowTire tire1 = new SnowTire();
	BigWidthTire tire2 = new BigWidthTire();
	
	sec06.exam02.hankook.Tire tire3 = new sec06.exam02.hankook.Tire();
	sec06.exam02.kumho.Tire tire4 = new sec06.exam02.kumho.Tire(); //서로다른 패키지에 있는 패키지의 이름이 같을경우 이렇게 명확하게 설정해줘야함.
}
