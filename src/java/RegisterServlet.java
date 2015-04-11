/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.spacecard.dao.ProfileDAO;
import com.spacecard.profile.Profile;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
public class RegisterServlet extends HttpServlet {


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
		ProfileDAO profileDAO = new ProfileDAO();
		
		String decision = request.getParameter("select");
		
		try
		{
			/*if(decision.equalsIgnoreCase("Update"))
			{
				profileDAO.openConnection(usn, psw, url);
				int rows = profileDAO.updateLogin(int userId, String username, String password);
				if(rows > 0)
				{
					response.sendRedirect("login.jsp");
				}
				else
				{
					response.sendRedirect("error.html");
				}
			}
			else */
                        if(decision.equalsIgnoreCase("Register"))
			{
				profileDAO.openConnection(usn, psw, url);
				int rows = profileDAO.addProfile(request.getParameter("txtName"), request.getParameter("txtEmail"),request.getParameter("txtUsername"), request.getParameter("txtPassword"),request.getParameter("picturepath"));
				
				if(rows > 0)
				{
					int userid = profileDAO.getMax();
					if(userid != 0)
					{
						Profile profile = profileDAO.getProfile(userid);
						HttpSession session = request.getSession(true);
						session.setAttribute("User", profile);
						response.sendRedirect("myspace.jsp");
					}
				}
				else
				{
					response.sendRedirect("error.html");
				}
				
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
				profileDAO.closeConnection();
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
