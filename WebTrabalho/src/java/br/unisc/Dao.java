/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unisc;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author m91223
 */
public class Dao {
    
    Connection con;

    public Dao() {
        con = new Conexao().getConnection();
    }

    public List<Info> getInfos() {
        List<Info> lista = new ArrayList<>();
        try {
            String query = "select * from info";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Info i = new Info();
                i.setId(Integer.toString(rs.getInt(1)));
                i.setLatitude(rs.getString(2));
                i.setLongitude(rs.getString(3));
                i.setPhoto(rs.getBlob(4));
                i.setDescricao(rs.getString(5));
                lista.add(i);
            }
            rs.close();
            stmt.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return lista;
    }

    public boolean insere(String latitude, String longitude, InputStream inputStream, String descricao) {
        boolean inserido = false;
        try {
            String query = "INSERT INTO info (latitude, longitude, photo, descricao) values (?, ?, ?, ?)";
            PreparedStatement statement = con.prepareStatement(query);
            statement.setString(1, latitude);
            statement.setString(2, longitude);
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(3, inputStream);
            }
            statement.setString(4, descricao);
            //Statement stmt = con.createStatement();
            int row = statement.executeUpdate();
            if (row > 0) {
                inserido = true;
            }
            statement.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return inserido;
    }
    
}
