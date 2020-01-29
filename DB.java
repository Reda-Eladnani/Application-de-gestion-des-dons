
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
	
	

}
