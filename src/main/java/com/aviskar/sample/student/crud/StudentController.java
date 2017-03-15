package com.aviskar.sample.student.crud;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

	public static final String STUDENT_LIST_URL = "/student";

	public static final String STUDENT_VIEW_URL = "/student/{id}";

	public static final String STUDENT_ADD_URL = "/student/add";

	@Autowired
	private StudentService studentService;

	@RequestMapping(path = STUDENT_LIST_URL, method = RequestMethod.GET)
	public ModelAndView getAllStudent() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("allStudent");
		modelAndView.addObject("students", studentService.findAll());
		return modelAndView;
	}

	@RequestMapping(path = STUDENT_VIEW_URL, method = RequestMethod.GET)
	public ModelAndView getStudent(@PathVariable("id") Long id) {
		Student student = studentService.findById(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:" + GenericController.PAGE_NOT_FOUND_URL);
		if (student != null) {
			modelAndView.setViewName("viewStudent");
			modelAndView.addObject("student", student);
		}
		return modelAndView;
	}

	@RequestMapping(path = STUDENT_ADD_URL, method = RequestMethod.GET)
	public ModelAndView createStudent() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("addStudent");
		modelAndView.addObject("student", new Student());
		return modelAndView;
	}

	@RequestMapping(path = STUDENT_ADD_URL, method = RequestMethod.POST)
	public String createStudent(@ModelAttribute("student") @Validated Student student, BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "addStudent";
		}
		studentService.save(student);
		return "redirect:" + STUDENT_LIST_URL;
	}
}
