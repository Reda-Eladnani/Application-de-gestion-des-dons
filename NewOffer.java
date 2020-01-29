
package org.creation.servlet;

import java.io.IOException;
import java.io.InputStream;

import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;



@WebServlet("/NewOffer")
@MultipartConfig(maxFileSize = 16177215) 
public class NewOffer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public NewOffer() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		DB E = new DB();
		
	    String id = request.getParameter("id");
            String name = request.getParameter("name");
            String description = request.getParameter("description");
	    /*hnaaaaa */
	    Part filePart = request.getPart("image");
	    InputStream inputStream = null;
	    if (filePart != null) {
	    	inputStream = filePart.getInputStream();
	    }
	    /*hnaaaaa */
            try {
                Offre offer = E.insertNewEvent(id,name,description,inputStream);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(NewOffer.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(NewOffer.class.getName()).log(Level.SEVERE, null, ex);
            } catch (InstantiationException ex) {
                Logger.getLogger(NewOffer.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IllegalAccessException ex) {
                Logger.getLogger(NewOffer.class.getName()).log(Level.SEVERE, null, ex);
            }
	    	
		
	    getServletContext().getRequestDispatcher("/CreationEvent.jsp").forward(request, response);
	}

}
