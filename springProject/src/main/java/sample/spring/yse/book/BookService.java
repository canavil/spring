package sample.spring.yse.book;

import java.util.List;
import java.util.Map;

public interface BookService {

	//public 생략가능. 생략하면 자동 public 간주
	//자료형 상수명 = 값;
    //자료형 메소드명 ([매개변수,....]) { }
	
	 String create(Map<String, Object> map);

	 Map<String, Object> detail(Map<String, Object> map);

	 boolean edit(Map<String, Object> map);  
	
	 boolean remove(Map<String, Object> map);  

	 List<Map<String, Object>> list(Map<String, Object> map);  
	 
	 
	 
}