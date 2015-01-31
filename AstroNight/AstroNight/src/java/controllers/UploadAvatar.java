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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class demo
 */
@MultipartConfig
public class UploadAvatar extends HttpServlet {

    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadAvatar() {
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

        //String appPath = request.getServletContext().getRealPath("");     //apothikeuei katw apo to build/web
        // constructs path of the directory to save uploaded file
        String savePath = request.getServletContext().getRealPath("")+"/users";      //gurnaw pisw st web/
        out.println("Parts uploaded: " + request.getParts().size());
        for (Part part : request.getParts()) {
            String fileName = extractFileName(part);
            

            
            HttpSession session = request.getSession();

            String[] fn = fileName.split("[.]");

            String stem = "";
            String image_extension;
            for (int i = 0; i < fn.length; i++) {
                stem += fn[i];
                if (i != fn.length - 2) {
                    stem += ".";
                } else {
                    break;
                }
            }
            image_extension = fn[fn.length - 1];
            part.write(savePath + File.separator + (String) request.getSession().getAttribute("user")+"."+image_extension);
            /**
             * ********************************************
             */
            request.setAttribute("message", "Upload has been done successfully! file name  = " + stem + "." + image_extension + " ");

        }
        RequestDispatcher rd = request.getRequestDispatcher("userProfile.jsp");
        rd.forward(request, response);

    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

}
