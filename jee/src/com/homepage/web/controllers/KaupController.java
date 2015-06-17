package com.homepage.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.KaupServiceImpl;
import com.homepage.web.services.KaupService;

/**
 * @ Date : somday;
 * @ Author : ;
 * @ Story : 키와 몸무게가 입력되면 카우프 지수와 메시지를 웹브라우저에 랜더링 하는 역할;
 */
@WebServlet("/model2/kaup.do")
public class KaupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public KaupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		double height = Double.parseDouble(request.getParameter("height"));
		double weight = Double.parseDouble(request.getParameter("weight"));
		
		KaupService kaupService = new KaupServiceImpl();

		request.setAttribute("height", height);
		request.setAttribute("weight", weight);
		
		int index = kaupService.getKaupIndex(height, weight);
		String msg = kaupService.getResultMsg(index);
		
//		KaupBean bean = new KaupBean(height, weight);

		request.setAttribute("index", index);
		request.setAttribute("msg", msg);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/kaup.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
