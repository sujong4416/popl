package com.portpolio.homeController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String Home(){
		System.out.println("인덱스 페이지 호출");
		return "index";
	}

}
