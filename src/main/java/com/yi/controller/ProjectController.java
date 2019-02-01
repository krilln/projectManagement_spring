package com.yi.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.yi.domain.ProjectManagementVO;
import com.yi.service.ProjectManagementService;

@Controller//컨트롤러로 인식시키기위해 필요
@RequestMapping("/project/*")//이 컨트롤러 안에 모든 url커맨터 앞에 project가 자동으로 붙음
public class ProjectController {
	
	@Autowired
	private ProjectManagementService service;
	
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@RequestMapping(value="listAll", method=RequestMethod.GET)
	public void listAll(Model model) {
		logger.info("listAll ----------- get");
		List<ProjectManagementVO> list = service.selectByAll();
		model.addAttribute("list", list);
	}  
	
	@RequestMapping(value="create", method=RequestMethod.GET)
	public void createGet() {
		logger.info("create ----------- get");
		
	}
	
	@RequestMapping(value="create", method=RequestMethod.POST)
	public String createPost(ProjectManagementVO vo, Model model) {
		logger.info("create ----------- post");
		
		service.insert(vo);
		model.addAttribute("result", "success");
		
		return "redirect:/project/listAll";
		
	}
	
	
	@RequestMapping(value="read", method=RequestMethod.GET)
	public void read(@RequestParam("no") int no, Model model) {
		logger.info("read ----------- get");
		ProjectManagementVO vo = service.selectByNo(no);
		model.addAttribute("project", vo);
	}
	
	@RequestMapping(value="remove", method=RequestMethod.POST)
	public String remove(@RequestParam("no") int no) {
		logger.info("remove ----------- get");
		service.delete(no);
		return "redirect:/project/listAll";
	}
	
	@RequestMapping(value="modify", method=RequestMethod.GET)
	public void modifyGet(ProjectManagementVO vo, Model model) {
		logger.info("modify ----------- get");
		model.addAttribute("project", vo);
		
	}
	
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public String modifyPost(ProjectManagementVO vo, Model model) {
		logger.info("modify ----------- post");
		logger.info(vo+" ----------- post");
		
		service.update(vo);
		model.addAttribute("result", "success");
		
		return "redirect:/project/listAll";
		
		
	}
	
	
	
	
	
	
	
	
	
}
