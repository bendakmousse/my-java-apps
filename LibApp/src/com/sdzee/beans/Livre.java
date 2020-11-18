package com.sdzee.beans;


public class Livre {
    /* Propriétés du bean */
    private String issn;
    private String ID_auteur;
    private String titre;
    private String resume;
    private String domaine;
    private int    nbPages;

    public String getIssn() {
        return issn;
    }

    public void setIssn( String issn ) {
        this.issn = issn;
    }
    
    public String getID_auteur() {
        return ID_auteur;
    }

    public void setID_auteur( String idauteur ) {
        this.ID_auteur = idauteur;
    }

    public String getTitre() {
        return titre;
    }

    public void setTitre( String titre ) {
        this.titre = titre;
    }

    public String getResume() {
        return resume;
    }

    public void setResume( String resume ) {
        this.resume = resume;
    }

    public int getNbPages() {
        return nbPages;
    }

    public void setNbPages( int nbPages ) {
        this.nbPages = nbPages;
    }

    public String getDomaine() {
        return domaine;
    }

    public void setDomaine( String domaine ) {
        this.domaine = domaine;
    }

}
