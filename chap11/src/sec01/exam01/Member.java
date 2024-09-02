package sec01.exam01;
//57강
public class Member {
	
	public String id;
	
	public Member(String id) {
		this.id = id;
	}
												//.equals는 원래 같은 객체를 참조하는지를 boolean타입으로 결과를 알려줌.
												//그러나 필드값 그자체만 비교하고 싶을때는 이렇게 메소드 재정의를 통해서 하면 됨.
	@Override
	public boolean equals(Object obj) { 		//메소드의 매개변수 타입은 Object(최상위), 어떠한 객체도 다 넣을 수 있음.
		if(obj instanceof Member) { 			//그래서 멤버객체가 들어왔는지 확인하는 instanceof를 사용해야됨.
			Member member = (Member) obj;
			if(id.equalsIgnoreCase(member.id)) {	//현재의 아이디.equalsIgnoreCas(비교할 아이디)
			return true;
			}
		}
		return false;
	}
	
	
}

