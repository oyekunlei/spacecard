import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import com.spacecard.dao.LoginDAO;
import com.spacecard.profile.Profile;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.io.IOException;


public class LoginServlet extends HttpServlet
{
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		PrintWriter out = response.getWriter();
		String url = getServletContext().getInitParameter("url");
		String usn = getServletContext().getInitParameter("usn");
		String psw = getServletContext().getInitParameter("pswd");
		LoginDAO loginDAO = new LoginDAO();
		
		String decision = request.getParameter("select");
		
		try
		{
			if(decision.equalsIgnoreCase("Login"))
			{
				loginDAO.openConnection(usn, psw, url);
				Profile profile = loginDAO.validate(request.getParameter("username"), request.getParameter("password"));
				
				if(profile != null)
				{
					HttpSession session = request.getSession(true);
					session.setAttribute("User", profile);
					response.sendRedirect("myspace.jsp");
				}
				else
				{
					response.sendRedirect("login.jsp");
				}
			}
                        else if(decision.equalsIgnoreCase("Access your account"))
                        {
                            response.sendRedirect("login.jsp");
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
				loginDAO.closeConnection();
			}
			catch(Exception er)
			{
				 out.println(er.getMessage());
			}
		}
	}
}