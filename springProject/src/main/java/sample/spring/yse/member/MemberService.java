package sample.spring.yse.member;

import java.util.List;
import java.util.Map;

public interface MemberService {

	String Agree(Map<String, Object> map);
	
	String MemberSave(Map<String, Object> map);

	Map<String, Object> MemberView(Map<String, Object> map);
	
	Map<String, Object> MemberIdExist(Map<String, Object> map);
	
	String MemberDelete(Map<String, Object> map);
	
	String MemberEdit(Map<String, Object> map);

	Map<String, Object> MemberLogin(Map<String, Object> map);
	
	Map<String, Object>  MemberIdCheck(Map<String, Object> map);
	

	
	
}