package sample.spring.yse;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import sample.spring.yse.book.BookService;

@Controller
public class mainController {

	@Autowired
	BookService bookService;	

	//첫페이지 생성
	@RequestMapping(value="/index", method = RequestMethod.GET)	
	public ModelAndView list(@RequestParam Map<String, Object> map) {  

		List<Map<String, Object>> list = this.bookService.list(map);  
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("data", list);
		mav.setViewName("/index");
		
		System.out.println("sahara: "+list);
		
		
		return mav;   
	}  
	
}

