package com.web.team3.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class TestController {
	// form 방식으로 보낸 GET
	@RequestMapping(value = "/test", method = RequestMethod.GET)

	public String getTest(@RequestParam("name") String name, Model m) {
		log.info("name=>{}", name);
		m.addAttribute("msg", name + "님 안녕하세요");
		return "views/test/form-res";
	}

	//form 방식으로 보낸 POST
	@RequestMapping(value = "/test", method = RequestMethod.POST)
	public String postTest(@RequestParam("name") String name, Model m) {
		log.info("name=>{}", name);
		m.addAttribute("msg", name + "님 안녕하세요");
		return "views/test/form-res";
	}

	@RequestMapping(value = "/ajax/test", method = RequestMethod.GET)
	@ResponseBody
	public String getAjax(@RequestParam("name") String name) {
		return name + "님, 안녕하세요";
	}
	
	@RequestMapping(value = "/ajax/test", method = RequestMethod.POST)
	@ResponseBody
	public String postAjax(@RequestBody Map<String, String> param) {
		
		return param.get("name") + "님, 안녕하세요";
	}
}
