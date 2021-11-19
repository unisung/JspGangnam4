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
	

}
