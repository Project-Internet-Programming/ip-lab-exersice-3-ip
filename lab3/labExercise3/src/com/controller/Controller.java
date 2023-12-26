package com.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import javax.servlet.ServletException;


/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		throws ServletException , IOException {
			
			String fname = request.getParameter("fname");
			String lname = request.getParameter("lname");			
			String course = request.getParameter("course");
			String gender = request.getParameter("gender");			
			String languages = request.getParameter("languages");
			String transportation = request.getParameter("transportation");			
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			String email = request.getParameter("email");

			
			
			
			User user = new User();
			
			user.setUsername(fname);
			user.setPassword(lname);
			user.setCourse(course);
			user.setGender(gender);
			user.setLanguages(languages);
			user.setTransportation(transportation);
			user.setPhone(phone);
			user.setAddress(address);
			user.setEmail(email);
			
			
			request.setAttribute("user" , user);
			
			try {
			    if (fname == null || fname.equals("")) {
			        throw new Exception();
			    } else {
			        RequestDispatcher rd = request.getRequestDispatcher("/success.jsp");
			        rd.forward(request, response);
			    }
			} catch (Exception e) {
			    RequestDispatcher rd = request.getRequestDispatcher("/errorPage.jsp");
			    rd.forward(request, response);
			}

	}

}
