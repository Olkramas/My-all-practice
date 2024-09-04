package sec03.exam02.pra01;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class ProductStorage {
	private List<Product> list = new ArrayList<>();
	private Scanner scanner = new Scanner(System.in);
	private int counter;
	
	public void showMenu() {
		while(true) {
			System.out.println("-------------------------");
			System.out.println("1.등록\t2.목록\t3.종료");
			System.out.println("-------------------------");
			
			System.out.println("선택: ");
			String selectNo = scanner.nextLine();
			switch(selectNo) {
			case "1" : System.out.println("물건을 등록합니다."); registerProduct(); break;
			case "2" : System.out.println("재고 상황입니다."); showProduct(); break;
			case "3" : System.out.println("종료합니다."); return;
			}
		}
	}
	
	public void registerProduct() {
		try {
		Product product = new Product();
		product.setPno(++counter);
		
		System.out.println("상품명: ");
		product.setName(scanner.nextLine());
		
		System.out.println("가격: ");
		product.setPrice(Integer.parseInt(scanner.nextLine()));
		
		System.out.println("재고: ");
		product.setStock(Integer.parseInt(scanner.nextLine()));
		
		list.add(product);
		} catch(Exception e) {
			System.out.println("등록 에러: " + e.getMessage());
		}
	}
	public void showProduct() {
		for(Product p : list) {
			System.out.println(p.getPno() + "\t" + p.getName() + "\t" + p.getPrice() + "\t" + p.getPrice() + "\t" + p.getStock());
		}
	}
}
