package com.cto.auction.controller.auctionUser;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cto.auction.service.auctionUser.AuctionUserService;
import com.cto.auction.vo.auctionUser.AuctionUser;

@Controller
@RequestMapping("/auctionUser/*")
public class AuctionUserController {
	@Autowired(required = false)
	private AuctionUserService service;

	// 테스트용 리스트
	@RequestMapping("list.do")
	public String auctionUserList(@ModelAttribute("testCtrlModelAttribute") AuctionUser sch, Model m) {
		// controller => service => dao 요청
		m.addAttribute("list", service.auctionUserList(sch));
		return "auctionUser/list";
	}

	// 로그인 접속
	@RequestMapping("login.do")
	public String login() {
		return "auctionUser/login";
	}

	// 로그인 체크
	@RequestMapping("loginCheck.do")
	public ModelAndView loginCheck(AuctionUser mem, HttpSession session, ModelAndView mav) {
		// 로그인 체크시 null값이 아니면(회원정보가 있으면)
		if (service.loginCheck(mem) != null) {
			// 해당 멤버의 정보를 "mem"이라는 이름으로 세션에 넣겠다.
			session.setAttribute("mem", service.loginCheck(mem));
			session.setAttribute("email", mem.getEmail());
			// 보여주는 view 경로 설정( 로그인이 성공 했으면 main으로)
			mav.setViewName("main/main");
			// 해당 view에 포함시킬 객체 설정(로그인 여부 msg를 설정함-success)
			mav.addObject("msg", "success");
		} else {
			// 로그인 체크 null값이면 다시 login 페이지로
			mav.setViewName("auctionUser/login");
			// 해당 view에 포함시킬 객체 설정
			mav.addObject("msg", "failure");
		}
		return mav;
	}

	// 회원가입폼으로 이동
	@RequestMapping("insert.do")
	public String auctionUserInsert() {
		return "auctionUser/signup";
	}
//	실질적인 회원가입 진행로직
	@RequestMapping("insertProc.do")
	public String insertProc(AuctionUser ins){
		service.auctionUserInsert(ins);
		return "redirect:login.do";
	}
	
/*//	회원개인 정보
	@RequestMapping("info.do")
	public String auctionUserInfo(AuctionUser info, HttpSession session, Model m){
		m.addAttribute("mem", service.auctionUserInfo(info, session));
		return "auctionUser/info";
	}*/

	

}
