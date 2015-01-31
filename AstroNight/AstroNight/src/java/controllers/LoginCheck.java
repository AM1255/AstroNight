/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.mysql.jdbc.Connection;
import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author kosta_000
 */

import java.io.FileReader;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.UnavailableException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

public class LoginCheck extends HttpServlet {
    
    /*@Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        }
        catch (ClassNotFoundException e) {
            throw new UnavailableException("Login init() ClassNotFoundException: " + e.getMessage());
        } catch (IllegalAccessException e) {
            throw new UnavailableException("Login init() IllegalAccessException: " + e.getMessage());
        } catch (InstantiationException e) {
            throw new UnavailableException("Login init() InstantiationException: " + e.getMessage());
        }
    }*/
    
    @Override
    public void doGet(HttpServletRequest  request, 
                       HttpServletResponse response)
                       throws IOException, ServletException {
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        
        Connection conn=null;
        String url="jdbc:mysql://localhost:3306/";
        String dbName="astronightdb?autoReconnect=true";
        String driver="com.mysql.jdbc.Driver";
        
        
        
        
        try {
            HttpSession session = request.getSession();
            int found=0;
            
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            Class.forName(driver).newInstance();
            conn =  (Connection) DriverManager.getConnection(url+dbName,"adminKothemel", "kothemel1255");
            //Statement statement = conn.createStatement();
            PreparedStatement pst = (PreparedStatement) conn.prepareStatement("select first_name, last_name, username, password, email, country, city from astronightdb.users");
            //String sql;
            //sql = "SELECT first_name, last_name, username, password, email, country, city FROM users";
            ResultSet resultUsers;
            resultUsers = pst.executeQuery();
            
            while(resultUsers.next()){
                if (username.equals(resultUsers.getString("username")) && password.equals(resultUsers.getString("password"))){
                    //cookie here
                    //Cookie userName = new Cookie("username", username); 
                    found=1;
                    session.setAttribute("user",resultUsers.getString("username"));
                    session.setAttribute("firstname",resultUsers.getString("first_name"));
                    session.setAttribute("lastname",resultUsers.getString("last_name"));
                    session.setAttribute("mail",resultUsers.getString("email"));
                    session.setAttribute("Country",resultUsers.getString("country"));
                    session.setAttribute("City",resultUsers.getString("city"));
                    session.setAttribute("logged","yes");
                    response.sendRedirect("index.jsp");
                    break;
                }
            }
            
            if (found==0){
                System.out.println("not found");
                RequestDispatcher rd = request.getRequestDispatcher("loginError.jsp");
                rd.include(request, response);
            }
            
        }
        catch (Exception e) {
            out.println(e);
        }
        //finally {
          //if (statement != null)
            //try {
          //    statement.close();
         //   } 
        //    catch (SQLException ignore) {}
        //}
   }
    
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
            doGet(request, response);
    } 
}
