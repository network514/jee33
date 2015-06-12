package com.homepage.web.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.HelloServiceImpl;
import com.homepage.web.services.HelloService;

/**
 * Servlet implementation class NowServlet
 */
@WebServlet({"/name/hello.do", "/hi.do"}) //가상의 경로 - 보안
public class HelloController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletReque st request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		switch (request.getServletPath()) {
		case "/name/hello.do": goHello(request, response); break;
		case "/hi.do": goHi(request, response); break;

		default:
			System.out.println("페이지 없음"); break;
		}
	}

	private void goHi(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HelloService hs = new HelloServiceImpl();
		String msg = hs.greet();
		String name = request.getParameter("name");
		System.out.println("msg"+msg);
		request.setAttribute("name", name);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hi.jsp");
		dispatcher.forward(request, response);
	}

	private void goHello(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		HelloService hs = new HelloServiceImpl();
		String msg = hs.greet();
		String name = request.getParameter("name");
		System.out.println("msg"+msg);
		request.setAttribute("name", name);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/hello.jsp");
		dispatcher.forward(request, response);
	}
}
