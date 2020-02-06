package Servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Beans.Event;
import DB.EventDB;

/**
 * Servlet implementation class Addevel
 */
@WebServlet("/Addevel")
public class AddEvent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private EventDB eventdb;
       
    public AddEvent() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() {
    	eventdb = new EventDB();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 
		 HttpSession session = request.getSession(true);	
		Event ev = new Event();
		ev.setId_event(0);
		int idAss =  (int) session.getAttribute("idAsso");
		ev.setId_ass(idAss);
		ev.setTitre_event(request.getParameter("titre"));
		ev.setComm_event(request.getParameter("commentaire"));
                                    ev.setImage_event(request.getParameter("image"));
		String a = eventdb.Addevent(ev);
		System.out.println(a);
		if(a.equals("sc"))   //On success, you can display a message to user on Home page
		 {
		 request.getRequestDispatcher("/ProfilAss.jsp").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errMessage", a);
		 request.getRequestDispatcher("/AjoutEvent.jsp").forward(request, response);
		 }
		
	}
	
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
 
        resp.sendRedirect(req.getServletContext().getContextPath()+ "/AjoutEvent.jsp");
    }
}
