
package org.creation.servlet;


   
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.annotation.MultipartConfig;

@MultipartConfig(maxFileSize = 16177215) 

public class DB {
	
	public Offre insertNewEvent(String id,String name,String description,InputStream inputStream) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
		Offre offer = new Offre();
		String sql = "insert into UNTITLED (idevent,titre,description,image) values(?,?,?,?)";
		Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/DB","APP","azerty"); 
		PreparedStatement stmt=conn.prepareStatement(sql);
		stmt.setString(1, id);
                stmt.setString(2, name);
                stmt.setString(3, description);
		stmt.setBlob(4, inputStream);
		
		stmt.executeUpdate();
		sql = "SELECT LAST_INSERT_ID();";
		ResultSet r = stmt.executeQuery(sql);
		r.next();
	    int i = r.getInt("last_insert_id()");
	    
		
	return offer;
		
		
	}
	 /*hadi bdal la partie base w la classe evenement dir event kif ma 3andk*/
        public ArrayList<Evenement> displayEvent() {
		ArrayList <Evenement> o = new ArrayList<Evenement>();
		try {
		String sql = "select * from UNTITLED";  
		Class.forName("org.apache.derby.jdbc.ClientDriver").newInstance();
                Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/DB","APP","azerty"); 
	        Statement stmt=conn.createStatement();
	        ResultSet r = stmt.executeQuery(sql);
	        while(r.next()) {
	        	Evenement event = new Evenement();
	        	event.setId(r.getInt("idevent"));
	        	event.setNom_event(r.getString("titre"));
	        	event.setDescription(r.getString("description"));
	        	
	        	String image =event.blobToString(r.getBlob("image"));
	        	event.setImage(image);
	        	o.add(event);
	        }
		} catch(Exception e) {
			
		}
		return o;
	}

	
	

}
