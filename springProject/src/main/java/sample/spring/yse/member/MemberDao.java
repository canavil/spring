package sample.spring.yse.member;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	//insert query
	public int insert(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("member.memberSave", map);
	}
		
	//insert query
	public Map<String, Object> selectDetail(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("member.memberView", map);
	}	
	
	//id check query
	public Map<String, Object> selectIdCheck(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("member.memberIdCheck", map);
	}		
	
	//id check query
	public int selectIdCheck2(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("member.memberIdCheck", map);
	}			
	
	//id login
	public Map<String, Object> memberLogin(Map<String, Object> map) {
		  return this.sqlSessionTemplate.selectOne("member.memberLogin", map);		
	}
}

