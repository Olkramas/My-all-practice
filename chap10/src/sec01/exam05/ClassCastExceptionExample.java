package sec01.exam05;

public class ClassCastExceptionExample {

	public static void main(String[] args) {
		
		Dog dog = new Dog();
		ChangeDog(dog);
		
		Cat cat = new Cat();
		ChangeDog(cat); //cat을 가지고 dog으로 바꾼다고하니 에러
		/*
		Dog dog = new Dog();
		Animal animal = dog;
		Dog dog2 = (Dog) animal;
		
		Cat cat = new Cat();
		Animal animal2 = cat;
		//Animal animal2 = dog;
		//Cat cat2 = (Cat) Animal2; 는 예외가 발생함.
		Cat cat2 = (Cat) animal2;
		*/
	}
	
	public static void ChangeDog(Animal animal) { //animal이 참조하고 있는 객체가 Dog객체인지 확인하고 맞는거만 실행하는 방법
		if(animal instanceof Dog) {
		Dog dog = (Dog) animal;
		}
		
	}

}
