/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.mavenproject2;

/**
 *
 * @author daouda.fomba
 */
public class Contact {
    private String name;
    private String prenom;
    private String numero;
    private String favoriteSkill;

    public Contact(String name,String prenom,String numero, String favoriteSkill) {
        this.name = name;
        this.prenom=prenom;
        this.numero=numero;
        this.favoriteSkill = favoriteSkill;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getPrenom(){
        return prenom;
    }
    public String getNumero(){
        return numero;
    }


    public String getFavoriteSkill() {
        return favoriteSkill;
    }

    public void setFavoriteSkill(String favoriteSkill) {
        this.favoriteSkill = favoriteSkill;
    }
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
     public void setNum(String numero) {
        this.numero = numero;
    }
}
