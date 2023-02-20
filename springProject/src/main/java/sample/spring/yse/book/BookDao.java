package sample.spring.yse.book;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BookDao {
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	//insert query
	public int insert(Map<String, Object> map) {
		  return this.sqlSessionTemplate.insert("book.insertDB", map);
	}
	
	//select one
	public Map<String, Object> selectDetail(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("book.selectDB", map);
	}
	
	//Update Query
	public int update(Map<String, Object> map) {
		
		return this.sqlSessionTemplate.update("book.updateDB", map);  
	}  
	
	
	//Delete query
	public int delete(Map<String, Object> map) {
		  return this.sqlSessionTemplate.delete("book.deleteDB", map);
	}	
	
	//List Select Query
	public List<Map<String, Object>> selectList(Map<String, Object> map) {  
		return this.sqlSessionTemplate.selectList("book.select_list", map);  
	}  	
}

