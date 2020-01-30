package org.register;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Base64;

/**
 *
 * @author MOUNA
 */
public class Evenement {
    private int id;    
    private String nom_event;
    private String description;
    private String image;
    
/*zid les constructeurs*/
    public Evenement(){
        super();
    }
    public Evenement(int id, String name,String description,String image){
      this.id=id;
      this.nom_event=name;
      this.description=description;
      this.image=image;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom_event() {
        return nom_event;
    }

    public void setNom_event(String nom_event) {
        this.nom_event = nom_event;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    
    
    }  

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

 
    /*hnaaa maghadi tbadal walo*/
    public String blobToString(java.sql.Blob blob) throws SQLException, IOException {
		java.io.InputStream inputStream = blob.getBinaryStream();
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[16384];
        int bytesRead = -1;
         
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);                  
        }
         
        byte[] imageBytes = outputStream.toByteArray();
        String picture = Base64.getEncoder().encodeToString(imageBytes);
        return picture;
	}
}
