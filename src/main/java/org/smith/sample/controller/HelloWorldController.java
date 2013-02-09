package org.smith.sample.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {

	@PreAuthorize("isAuthenticated()")
	@RequestMapping("/hello")
	public ModelAndView helloWorld() {

		String message = "Hello World, Spring MVC";
		System.out.println(message);
		return new ModelAndView("hello", "message", message);
	}

}

