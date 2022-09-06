package com.hanul.laundry.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hanul.laundry.command.AnCommand;
import com.hanul.laundry.controller.TestController;

import common.CommonService;
import member.MemberServiceImpl;

@Controller
public class TestController {
	
	//회원가입화면 요청
		@RequestMapping("/test")
		public String member(HttpSession ss) {
			return "default/test";
		}
		
	
}
