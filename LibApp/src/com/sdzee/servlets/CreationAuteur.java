package com.sdzee.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.Auteur;
import com.sdzee.forms.CreationAuteurForm;

//@WebServlet("/CreationAuteur")
public class CreationAuteur extends HttpServlet {
	public static final String ATT_AUTEUR = "auteur";
	public static final String ATT_FORM = "form";
	public static final String VUE = "/WEB-INF/CreationAuteur.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Préparation de l'objet formulaire */
		CreationAuteurForm form = new CreationAuteurForm();

		/*
		 * Appel au traitement et à la validation de la requête, et récupération du bean
		 * en résultant
		 */
		Auteur autreur = form.creerAuteur(request);

		/* Stockage du formulaire et du bean dans l'objet request */
		request.setAttribute(ATT_FORM, form);
		request.setAttribute(ATT_AUTEUR, autreur);

		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

}
