package com.aviskar.sample.student.crud;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GenericController {

	public static final String PAGE_NOT_FOUND_URL = "/page-not-found";

	@RequestMapping(path = PAGE_NOT_FOUND_URL, method = RequestMethod.GET)
	public String pageNotFound() {
		return "pageNotFound";
	}
}
