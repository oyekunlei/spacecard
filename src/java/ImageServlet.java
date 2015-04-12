/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.spacecard.dao.ImageDAO;
import com.spacecard.dao.ProfileDAO;
import com.spacecard.image.Image;
import com.spacecard.profile.Profile;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class ImageServlet extends HttpServlet {


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
		String url = getServletContext().getInitParameter("url");
		String usn = getServletContext().getInitParameter("usn");
		String psw = getServletContext().getInitParameter("pswd");
		ImageDAO dao = new ImageDAO();
		
		String decision = request.getParameter("select");
		
		try
		{
                        if(decision.equalsIgnoreCase("View All Images"))
			{
                            dao.openConnection(usn, psw, url);
                            Vector<Image> images = dao.getImages();
                            HttpSession session = request.getSession(true);
                            session.setAttribute("Images", images);
                            response.sendRedirect("imageGallery.jsp");
			}
                        else if(decision.equalsIgnoreCase("View Category"))
                        {
                            dao.openConnection(usn, psw, url);
                            Vector<Image> images = dao.getImages(request.getParameter("category"));
                            HttpSession session = request.getSession(true);
                            session.setAttribute("Images", images);
                            response.sendRedirect("imageGallery.jsp");
                        }
                        else if(decision.equalsIgnoreCase(""))
                        {
                            
                        }
		
		}
		catch(Exception er)
		{
			 out.println(er.getMessage());
		}
		finally
		{
			try
			{
				dao.closeConnection();
			}
			catch(Exception er)
			{
				 out.println(er.getMessage());
			}
		}
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
		String url = getServletContext().getInitParameter("url");
		String usn = getServletContext().getInitParameter("usn");
		String psw = getServletContext().getInitParameter("pswd");
		ImageDAO dao = new ImageDAO();
		
		String decision = request.getParameter("select");
		
		try
		{
                        if(decision.equalsIgnoreCase("View All Images"))
			{
                            dao.openConnection(usn, psw, url);
                            Vector<Image> images = dao.getImages();
                            HttpSession session = request.getSession(true);
                            session.setAttribute("Images", images);
                            response.sendRedirect("imageGallery.jsp");
			}
                        else if(decision.equalsIgnoreCase("View Category"))
                        {
                            dao.openConnection(usn, psw, url);
                            Vector<Image> images = dao.getImages(request.getParameter("category"));
                            HttpSession session = request.getSession(true);
                            session.setAttribute("Images", images);
                            response.sendRedirect("imageGallery.jsp");
                        }
                        else if(decision.equalsIgnoreCase(""))
                        {
                            
                        }
		
		}
		catch(Exception er)
		{
			 out.println(er.getMessage());
		}
		finally
		{
			try
			{
				dao.closeConnection();
			}
			catch(Exception er)
			{
				 out.println(er.getMessage());
			}
		}
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
