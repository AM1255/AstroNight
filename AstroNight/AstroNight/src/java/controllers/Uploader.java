package controllers;

import com.mysql.jdbc.Connection;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class demo
 */
@MultipartConfig
public class Uploader extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uploader() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
   /* @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        out.println("Hello");
    }*/

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        if (!ServletFileUpload.isMultipartContent(request)) {
            out.println("Nothing uploaded.");
            return;
        }
        
        String Title=request.getParameter("title");
        String Description=request.getParameter("description");
        String Price = request.getParameter("price");
        
        
        
            Part part = request.getPart("file");
            String name = part.getName();
            out.println(name);

            String contentType = part.getContentType();

            if (!contentType.equals("image/jpeg")) {
                out.println("Only png format image files supported");
            }

            InputStream is = request.getPart(name).getInputStream();
            String value = (String) request.getSession().getAttribute("user");
            String path = request.getServletContext().getRealPath("")+"/uploads";
            File uploadDir = new File(path);
            File file = File.createTempFile(value, ".jpeg", uploadDir);
            
            FileOutputStream fos = new FileOutputStream(file);
            int data = 0;
            while ((data = is.read()) != -1) {
                fos.write(data);
            }

            fos.close();
            is.close();

            out.println("Written file to " + file.getAbsolutePath());
            String urlForDb = "uploads/" + file.getName();

            PrintWriter pw = response.getWriter();
            Connection conn = null;
            String url = "jdbc:mysql://localhost:3306/";
            String dbName = "astronightdb?autoReconnect=true";
            String driver = "com.mysql.jdbc.Driver";

            try {
                Class.forName(driver).newInstance();
                conn = (Connection) DriverManager.getConnection(url + dbName, "adminKothemel", "kothemel1255");
                PreparedStatement pst = (PreparedStatement) conn.prepareStatement("insert into astronightdb.photos(user,url,title,description,price) values(?,?,?,?,?)");
                out.println(urlForDb);
                pst.setString(1, value);
                pst.setString(2, urlForDb);
                pst.setString(3, Title);
                pst.setString(4, Description);
                pst.setString(5, Price);

                int i = pst.executeUpdate();
                //conn.commit(); 
                String msg = " ";
                if (i != 0) {
                    msg = "You have successfully signed up!";
                    pw.println("<font size='6' color=blue>" + msg + "</font>");

                } else {
                    msg = "failed to insert the data";
                    pw.println("<font size='3' color=#007ACC>" + msg + "</font>");
                }
                pst.close();
            } catch (Exception e) {
                pw.println(e);
            }
        
        response.sendRedirect(request.getContextPath()+"/userProfile.jsp");
        
    }

}
