package dao;

import java.util.ArrayList;
import java.util.List;

import dto.Member;

public class MemberRepository {
	//필드
	List<Member> listOfMembers = new ArrayList<>();
	private static MemberRepository instance = new MemberRepository();
	
	public MemberRepository() {}

	public static MemberRepository getInstance() {
		return instance;
	}
	
	public List<Member> getMembers(){
		return listOfMembers;
	}
	
	public void registerMember(Member member) {
		 listOfMembers.add(member);
	}
	
	//아이디로 회원정보 가져오기
	public Member getMemberById(String id){
		for(int i=0;i<listOfMembers.size();i++) {
			 if(listOfMembers.get(i).getId().equals(id)) {
				 return listOfMembers.get(i);
			 }
		}
		return null;
	}
}
