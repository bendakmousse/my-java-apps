package com.sdzee.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.Livre;
import com.sdzee.dao.LivreDao;
import com.sdzee.forms.CreationLivreForm;



public class CreationLivre extends HttpServlet {
	
	public static final String ATT_AUTEUR = "livre";
	public static final String ATT_FORM = "form";
	public static final String VUE_SUCCES = "/WEB-INF/AfficherLivre.jsp";
	public static final String VUE_FORM = "/WEB-INF/CreationLivre.jsp";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.getServletContext().getRequestDispatcher(VUE_FORM).forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Préparation de l'objet formulaire */
		CreationLivreForm form = new CreationLivreForm();

		/*
		 * Appel au traitement et à la validation de la requête, et récupération du bean
		 * en résultant
		 */
		Livre livre = form.creerLivre(request);
		/* Stockage du formulaire et du bean dans l'objet request */
		request.setAttribute(ATT_FORM, form);

		if (form.getErreurs().isEmpty()) {
			request.setAttribute(ATT_AUTEUR, null);
			int insert_done = 0;
			LivreDao livredao = new LivreDao();
			// ajoute livre a db
			insert_done = livredao.ajouter_livre_db(livre);
			/* Si aucune erreur, alors affichage de la fiche récapitulative */
			if (insert_done == 1) {
				this.getServletContext().getRequestDispatcher(VUE_FORM).forward(request, response);
			} else {
				form.setResultat("Échec de la création du livre db");
				request.setAttribute(ATT_AUTEUR, livre);
				request.setAttribute(ATT_FORM, form);
				this.getServletContext().getRequestDispatcher(VUE_FORM).forward(request, response);
			}

		} else {
			/* Sinon, ré-affichage du formulaire de création avec les erreurs */
			request.setAttribute(ATT_AUTEUR, livre);
			this.getServletContext().getRequestDispatcher(VUE_FORM).forward(request, response);

		}
	}

}
