/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unisc;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author m91223
 */
public class Gerente extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String op = request.getParameter("op");
        System.out.println(op);
        if (op.toLowerCase().equals("listar")) {
            System.out.println("listar!!!");
            request.setAttribute("lista", new Dao().getInfos());
            request.getRequestDispatcher("listar.jsp").forward(request, response);
        }
        if (op.toLowerCase().equals("mostrar")) {
            System.out.println("mostrar!!!");
            request.setAttribute("lista", new Dao().getInfos());
            request.getRequestDispatcher("listaGoogle.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String lat = request.getParameter("lat");
        String lon = request.getParameter("lon");
        String img = request.getParameter("img");
        String desc = request.getParameter("desc");
        System.out.println(lat);
        System.out.println(lon);
        System.out.println(img);
        System.out.println(desc);
        //new Dao().insere(lat, lon, inputStream, desc);
        if(new Dao().insere(lat, lon, desc)){
            System.out.println("inserido");
        }else{
            System.out.println("não inserido");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
