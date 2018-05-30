/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unisc;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author m91223
 */
public class Conexao {

    private static final String URL = "jdbc:mysql://ghelfer.heliohost.org:3306/ghelfer_banco";
    private static final String USER = "ghelfer_user";
    private static final String PASS = "root!";

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASS);
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
}
