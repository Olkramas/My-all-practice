package sec01.exam03;
//57강
public class Member {
	
	public String id;
	
	public Member(String id) {
		this.id = id;
	}
												
	@Override
	public boolean equals(Object obj) { 		
		if(obj instanceof Member) { 			
			Member member = (Member) obj;
			if(id.equalsIgnoreCase(member.id)) {	
			return true;
			}
		}
		return false;
	}
	
	@Override
	public int hashCode() {
		return id.hashCode();
	}
}

