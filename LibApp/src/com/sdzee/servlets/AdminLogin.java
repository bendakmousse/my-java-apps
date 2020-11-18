package com.sdzee.servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sdzee.beans.Admin;
import com.sdzee.dao.AdminDao;

public class AdminLogin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public AdminLogin() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		AdminDao adminDao = new AdminDao();

		try {
			Admin admin = adminDao.checkLogin(username, password);
			String destPage = "login_admin.jsp";

			if (admin != null) {
				HttpSession session = request.getSession();
				session.setAttribute("admin", admin);
				destPage = "/WEB-INF/admin_home.jsp";
			} else {
				String message = "Invalid username or password";
				request.setAttribute("message", message);
			}

			RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
			dispatcher.forward(request, response);

		} catch (SQLException | ClassNotFoundException ex) {
			throw new ServletException(ex);
		}
	}

}
