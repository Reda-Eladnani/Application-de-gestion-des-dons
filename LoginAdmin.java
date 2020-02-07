
package Servlets;

import Beans.Administrateur;
import Beans.Association;
import DB.AdminDB;
import DB.AssociationDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MOUNA
 */
public class LoginAdmin extends HttpServlet {

 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.sendRedirect(request.getServletContext().getContextPath()+ "/LoginAdmin.jsp");
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                HttpSession session=request.getSession(true);
                AdminDB admindb = new AdminDB();
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 
		Administrateur admin = new Administrateur();
		admin.setEmail(request.getParameter("email"));
		admin.setMdp(request.getParameter("mdp"));
		String status = admindb.validate(admin);
                
                System.out.println("here");
		try {
			if(status.equals("success")) {				 
                                  System.out.println("here"); 
                                session.setAttribute("email",admin.getEmail());
				response.sendRedirect("http://localhost:8080/AppGestionDons/ProfilAdmin.jsp");
                                                                        System.out.println("cool");
			}else {
				request.setAttribute("test", status );
				out.print(status);
				getServletContext().getRequestDispatcher("/LoginAdmin.jsp").forward(request, response);
                                                                       
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
    }

    

}
 