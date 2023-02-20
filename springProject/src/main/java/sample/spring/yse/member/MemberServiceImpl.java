package sample.spring.yse.member;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sample.spring.yse.member.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao memberDao;
		
	@Override
	public String Agree(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String MemberSave(Map<String, Object> map) {
		
		Boolean isIdExist = false;
		
		System.out.println(map);
		
		Map<String, Object> userIdcheck = this.memberDao.selectIdCheck(map);
		System.out.println(userIdcheck+"----------------");
		
		
		//기존 아이디 존재
		if (userIdcheck == null ) { 
				return "exist";	
		} else {
			
			int affectRowCount = this.memberDao.insert(map); 
			
			if (affectRowCount == 1) {
				  return map.get("userid").toString(); 
			}
		}  
			
		return null;
			
	}
	
	
	
	
	@Override
	public Map<String, Object> MemberIdCheck(Map<String, Object> map) {
		// TODO Auto-generated method stub
		String idResult = "N";
		
		return this.memberDao.selectIdCheck(map);		
		//System.out.println("servcke:" + userid);
		//System.out.println("servcke2:" + userIdcheck);	
		
//		if (userIdCheck > 0) {
//			idResult = "Y";			
//		} 
			
			
		//return null;
	}
	
	
	//회원 로그인
	@Override
	public Map<String, Object> MemberLogin(Map<String, Object> map) {
		return this.memberDao.memberLogin(map);
	} 
		
	
	@Override
	public Map<String, Object> MemberView(Map<String, Object> map) {
		return this.memberDao.selectDetail(map);
	}
	
	
	@Override
	public String MemberDelete(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String MemberEdit(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> MemberIdExist(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return this.memberDao.selectIdCheck(map);		
	}

	
	
}
