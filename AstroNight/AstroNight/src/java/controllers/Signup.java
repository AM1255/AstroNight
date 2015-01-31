/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.mysql.jdbc.Connection;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author kosta_000
 */
public class Signup extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");  
        PrintWriter pw = response.getWriter();
        Connection conn=null;
        String url="jdbc:mysql://localhost:3306/";
        String dbName="astronightdb";
        String driver="com.mysql.jdbc.Driver";
        //String connectionURL = "jdbc:mysql://127.0.0.1:3306/newData";// newData is the database  
        //Connection connection;  
        
        
        
        try{
            String firstName=request.getParameter("first_name");
            String lastName=request.getParameter("last_name");
            String userName = request.getParameter("username");
            String Password=request.getParameter("password");
            String Email=request.getParameter("email");
            String Country = request.getParameter("country");
            String City = request.getParameter("city");

            
            
            
            
            Class.forName(driver).newInstance();  
            conn = (Connection) DriverManager.getConnection(url+dbName,"adminKothemel", "kothemel1255");
            PreparedStatement pst =(PreparedStatement) conn.prepareStatement("insert into astronightdb.users(first_name,last_name,username,password,email,country,city) values(?,?,?,?,?,?,?)");
            
            
            pst.setString(1,firstName);  
            pst.setString(2,lastName);  
            pst.setString(3,userName);
            pst.setString(4,Password);
            pst.setString(5,Email);
            pst.setString(6,Country);
            pst.setString(7, City);
            
            
            int i = pst.executeUpdate();
            //conn.commit(); 
            String msg=" ";
            if(i!=0){  
            msg="You have successfully signed up!";
            pw.println("<font size='6' color=blue>" + msg + "</font>");  


            }  
            else{  
            msg="failed to insert the data";
            pw.println("<font size='3' color=#007ACC>" + msg + "</font>");
            }  
            pst.close();
        }  
        catch (Exception e){  
          pw.println(e);  
        }
        
        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.include(request, response);
    }
}
