package sample.spring.yse.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MemberController {
		

	@Autowired
	MemberService memberService;	

	//약관동의
	@RequestMapping(value="/agree", method = RequestMethod.GET)
	public ModelAndView Agree() {
	    return new ModelAndView("member/agree");
	}
	
	//회원가입폼
	@RequestMapping(value="/memberStep1", method = RequestMethod.POST)
	public ModelAndView memberStep1() {
	    return new ModelAndView("member/join");
	}
	
	
	//회원아이디 중복체크
	@ResponseBody
	@RequestMapping(value="/memberIdCheck", method = RequestMethod.POST)
	public int memberIdCheck(@RequestParam Map<String, Object> map) {
		
		Map<String, Object> loginMap  = this.memberService.MemberIdExist(map);

	    return Integer.parseInt(String.valueOf(loginMap.get("idchk")));
	}	
	
	//회원 로그인
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public ModelAndView memberLogin(@RequestParam Map<String, Object> map, HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> loginMap = this.memberService.MemberIdExist(map);
		
		if (Integer.parseInt(String.valueOf(loginMap.get("idchk"))) == 0) {
			System.out.println("등록사용자 없음");
		} else {
			
		    //로그인 성공 처리
		    //세션이 있으면 있는 세션 반환, 없으면 신규 세션을 생성
		    HttpSession session = request.getSession();
		    
		    //세션에 로그인 회원 정보 보관
		   // session.setAttribute(SessionConst.LOGIN_MEMBER, loginMap);
			
		}
		System.out.println("=========" + loginMap);
	    return mav;
	}		
	

	
	//회원 저장
	@RequestMapping(value="/memberStep2", method = RequestMethod.POST)
	public ModelAndView memberStep2(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();


	    String userId = this.memberService.MemberSave(map);
	    
	    //System.out.println(userId+"============================================");
		
	    if (userId.equals("exist")) {
	    		
			mav.setViewName("redirect:/index"); 
	    	
	    } else {
	    	
			if (userId == null) { 
				mav.setViewName("redirect:/index"); 
			}else {
				mav.setViewName("redirect:/memberStep3?userid=" + userId); 
			}
			
	    }
		 
	    return mav;
	}	
	
	
	//회원 가입 완료 화면
	@RequestMapping(value="/memberStep3", method = RequestMethod.GET)
	public ModelAndView memberStep3(@RequestParam Map<String, Object> map) {
	    Map<String, Object> detailMap = this.memberService.MemberView(map);
	    
	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", detailMap);
	    String userId = map.get("userid").toString();
	    mav.addObject("userId", userId);
	    mav.setViewName("/member/memberSuccess");
	    
	    
	    return mav;
	}		
	
	
	
	//회원저장
/*	@RequestMapping(value = "/MemberJoin", method = RequestMethod.POST)
	public ModelAndView MemberSave(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();

	   
	    return mav;
	}
*/
	
	
}
