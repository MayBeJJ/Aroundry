package com.hanul.laundry.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import common.CommonService;
import store.StoreServiceImpl;
import store.StoreVO;

@Controller
public class StoreController {
	@Autowired private StoreServiceImpl service;
	@Autowired private CommonService common;
	
	//회원가입처리 요청
	@RequestMapping(value="/kjoin", produces="text/html; charset=utf-8")
	@ResponseBody
	public String kjoin(StoreVO store ,  HttpSession session, HttpServletRequest req, MultipartFile file[]) {
		
		//첨부파일 이미지 5개를 imageurl 필드에 한꺼번에 담는다
				String upload = "";
				for( MultipartFile f : file ) {	
					if( f.isEmpty() ) continue;
					upload += (upload.equals("") ? "" : ",") + common.fileUpload("store", f, session, req);			
				}
				store.setImageurl(req.getRequestURL().toString().replace(req.getServletPath(), "") + "/" +upload);
				//http://192.168.0.7:8080/project/upload/store/2022/08/20/54e6085b-a184-4c54-9a78-45dadd58239a_bubble.gif

				//화면에서 입력한 정보를 DB에 신규저장한 후
				StringBuffer msg = new StringBuffer("<script>");
		if( service.store_join(store) ) {
		
			//회원가입 성공여부를 alert으로 띄운 후
			msg.append("alert('사업장 등록에 성공했습니다'); location='")
				.append( req.getContextPath() ).append("'; ");
		}else {
			msg.append("alert('사업장 등록 오류'); history.go(-1);");
		}
		msg.append("</script>");
		//응답화면 연결 - 웰컴
		return msg.toString();
	}
	
	//회원가입화면 요청
	@RequestMapping("/store")
	public String store(HttpSession ss) {
		ss.setAttribute("category", "kjoin");
		return "store/kjoin";
	}
	
	
	
}
