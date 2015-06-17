package com.homepage.web.controllers;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.RespectBinding;

import org.apache.catalina.connector.Response;

import com.homepage.web.beans.MemberBean;
import com.homepage.web.serviceimpls.MemberServiceImpl;
import com.homepage.web.services.MemberService;

/**
 * @ Data : someday;
 * @ Author : ;
 * @ Story : 회원가입과 로그인을 담당하는 컨트롤러;
 */
@WebServlet({"/model2/join.do","/model2/login.do", "/member/searchIdForm.do","/member/searchPassForm.do"})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Map<String, Object> map = new HashMap<String, Object>();
	MemberBean bean = new MemberBean();
	MemberService memberService = new MemberServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher;
		switch (request.getServletPath()) {
		case "/member/searchIdForm.do" :
			RequestDispatcher dispatcher3 = request.getRequestDispatcher("/veiws/model2/searchIdForm.jsp");
			dispatcher3.forward(request, response);
			break;
		case "/member/searchPassForm.do" :
			RequestDispatcher dispatcher4 = request.getRequestDispatcher("/veiws/model2/searchPassForm.jsp");
			dispatcher4.forward(request, response);
			break;
		}
	}
     
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher;
		
		switch (request.getServletPath()) {
		case "/model2/join.do":
			String name = request.getParameter("name");
			String id = request.getParameter("id");
			String password = request.getParameter("password");
			String ageParam = request.getParameter("age");
			int age = Integer.parseInt(ageParam);
			String addr = request.getParameter("address");
			memberService.join(id, password, name, age, addr);
			bean.setName(name);
			bean.setId(id);
			bean.setPassword(password);
			bean.setAge(age);
			bean.setAddr(addr);
			
			request.setAttribute("name", name);
			request.setAttribute("id", id);
			request.setAttribute("age", age);
			request.setAttribute("addr", addr);
			
			dispatcher = request.getRequestDispatcher("/views/model2/memberForm.jsp");
			dispatcher.forward(request, response);
			break;
			
		case "/model2/login.do":
			id = request.getParameter("id");
			password = request.getParameter("password");
			memberService.login(id, password);
			
			addr = bean.getAddr();
			name = bean.getName();
			age = bean.getAge();
						
			request.setAttribute("id", id);
			request.setAttribute("password", password);
			
			request.setAttribute("name", name);
			request.setAttribute("age", age);
			request.setAttribute("addr", addr);
			bean.setId(id);
			bean.setPassword(password);

			dispatcher = request.getRequestDispatcher("/views/model2/member.jsp");
			dispatcher.forward(request, response);
			
			String msg = memberService.login(id, password);
			   
			  if(msg.equals("환영합니다.")){
			    dispatcher = request.getRequestDispatcher("/views/model2/member.jsp");
			    dispatcher.forward(request, response); 
			 
			  }else {
			     request.setAttribute("msg", msg);
			     dispatcher = request.getRequestDispatcher("/views/model2/loginFail.jsp");
			     dispatcher.forward(request, response); 
			  }
			
			break;
				
		default:
			System.out.println("페이지 없음.");
			break;
		}
	}
}
