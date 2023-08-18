package com.web.team3.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestViews {
	@GetMapping("/views/**")
	public void goPage() {
		
	}
}
