package com.homepage.web.controllers;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet; 

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.homepage.web.serviceimpls.ReservationServiceImpl;
import com.homepage.web.services.ReservationService;

/**
* @ Date : 2015.6.16;
* @ Author : itbank;
* @ Story : 예약 요청을 JSP에서 받아 처리하는 컨트롤러;
*/
@WebServlet({"/reservation/inputCheck.do",
               "/reservation/checkIn.do",
               "/reservation/checkOut.do",
               "/reservation/showStatus.do"})
public class ReservationController extends HttpServlet {
     private static final long serialVersionUID = 1L;
   
     ReservationService service = new ReservationServiceImpl();
    public static String[][] seat = new String[3][5]; // 좌석 위치값
  
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         
          int floor = Integer.parseInt(request.getParameter("floor"))-1;
          int row = Integer.parseInt(request.getParameter("row"))-1;
          String id = request.getParameter("id");
          String path = request.getServletPath();
          seat[floor][row] = id; // 좌석 위치값
          
          switch (path) {
        case "/reservation/checkIn.do":
             String msg = service.checkIn(floor, row, id);
             request.setAttribute("msg", msg);
             request.setAttribute("seat", seat);
             RequestDispatcher dispatcher = request.getRequestDispatcher("/views/model2/reservationForm.jsp");
            
            dispatcher.forward(request, response);
            break; // 체크인
        case "/reservation/checkOut.do":
        	System.out.println("체크인 넣어옴..");
             String msg2 = service.checkOut(floor, row, id);
             RequestDispatcher dispatcher2 = request.getRequestDispatcher("");
            dispatcher2.forward(request, response);
            break; // 체크아웃
        case "/reservation/showStatus.do" :
             request.setAttribute("floor", floor);
             request.setAttribute("row", row);
             String[][] seat = service.showStatus();
             RequestDispatcher dispatcher3 = request.getRequestDispatcher("/");
            dispatcher3.forward(request, response);
             break;
        default : service.showStatus();
        RequestDispatcher dispatcher4 = request.getRequestDispatcher("/");
        dispatcher4.forward(request, response);
        break;
        }
     }
}