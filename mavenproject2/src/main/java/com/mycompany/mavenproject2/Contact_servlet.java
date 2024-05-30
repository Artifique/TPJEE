package com.mycompany.mavenproject2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Contact_servlet")
public class Contact_servlet extends HttpServlet {
    private final List<Contact> contacts = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("delete".equals(action)) {
            String name = request.getParameter("name");
            deletecontact(name);
        }
        request.setAttribute("contacts", contacts);
        request.getRequestDispatcher("liste.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String prenom = request.getParameter("prenom");
        String numero = request.getParameter("numero");
        String favoriteSkill = request.getParameter("favoriteSkill");
        
        Contact C = new Contact(name, prenom, numero, favoriteSkill);
        contacts.add(C);
        
        response.sendRedirect("Contact_servlet");
    }
    private void deletecontact(String name){
        for(int i= 0; i< contacts.size(); i++){
          if (contacts.get(i).getName().equals(name)){
             contacts.remove(i);
       break;
       }
       }
}
}

