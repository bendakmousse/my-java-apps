package com.sdzee.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.Auteur;
import com.sdzee.beans.Livre;
import com.sdzee.dao.searchDao;

public class Search extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public Search() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String destPage = "afficher.jsp";
		searchDao searchdao = new searchDao();
		String search_about = request.getParameter("search");
		String search_in = request.getParameter("searchin");
		String who_search =request.getParameter("whosearch");
		request.setAttribute("who_search", who_search);

		ArrayList<Livre> list_de_livres = new ArrayList<Livre>();
		ArrayList<Auteur> list_de_auteur = new ArrayList<Auteur>();
		

		switch (search_in) {
		case "auteur":
			list_de_auteur = searchdao.search_in_auteur(search_about);
			break;
		case "livre":
			list_de_livres = searchdao.search_in_livre(search_about);
			break;
		case "domaine":
			list_de_livres = searchdao.search_in_domaine(search_about);
			break;
		}
		
		if (!(list_de_livres.isEmpty() )) {

			request.setAttribute("list", list_de_livres);
			request.setAttribute("search_in", search_in);
		} 
		if(!(list_de_auteur.isEmpty())) {
			request.setAttribute("list", list_de_auteur);
			request.setAttribute("search_in", search_in);
		}
		if(list_de_auteur.isEmpty() && list_de_livres.isEmpty()) {
			search_in="no result";
			request.setAttribute("search_in", search_in);	
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
		dispatcher.forward(request, response);

	}

}
