package sec04.exam03.pra02;

public class BankAccount {
	//Field
	int balance;
	
	//Constructor
	
	//Method
	void deposit(int amount) {
		System.out.println("입금할 금액은 " + amount + "원 입니다.");
		balance += amount;
		
	}
	void withdraw(int amount) {
		if(balance - amount >= 0) {
			System.out.println("출금할 금액은 " + amount + "원 입니다.");
			balance -= amount;
			} else {
			System.out.println("잔액이 부족합니다.");
            System.exit(0);
		}
	}
	int checkBalance() {
		return balance;
	}
	
	 
	

}


/*  클래스: BankAccount
필드: balance (계좌 잔액)
메서드:
deposit(int amount): 계좌에 입금
withdraw(int amount): 계좌에서 출금
checkBalance(): 잔액 확인
isOverdrawn(): 계좌가 마이너스인지 확인   */