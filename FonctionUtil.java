package mesFonctions;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.register.DB.AssociationDB;




public class FonctionUtil {
	
	public static boolean uploadPhotoPropriete(HttpServletRequest request) throws SQLException {
		          System.out.println("hello again");
                          String chemin = new String();
                          String titre = new String();
                          String commentaire = new String();
                          
                          
		/*
		 * IMPORTANT A LIRE
		 * Requiremet les deux jar "commons and org.apache"
		 * On s'insterse pas au nom des input car on test sur tous 
		 * y'a pa de probleme des espaces
		 * 
		 * */
		
		/*
		 * Warning 
		 * j'ai changer la comportement de cet fonction pour qu'il s'applique 
		 * uniquement sur les photos de la propriete
		 * */
		
		
		boolean statut = false;
		

		boolean isMultipartContent = ServletFileUpload.isMultipartContent(request);
		if (!isMultipartContent) {
			return false;
		}
		
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		try {
			/* Test : est ce qu'il y a des input dans la form 
			 * On recupere tous les input
			 * */
			List<FileItem> fields = upload.parseRequest(request);
			Iterator<FileItem> it = fields.iterator();
			if (!it.hasNext()) {
				return false;
			}
			/* on boucle sur les inputs pour trouver l'input correspadant a notre fichier
			 * On
			 * */
			while (it.hasNext()) {
				FileItem fileItem = it.next();
				boolean isFormField = fileItem.isFormField();
				if (!isFormField) {
					if (fileItem.getSize() > 0) {
						/* fileItem.getName() conteint le nom de fichier */
						//fileItem.write(new File("C:/img/" + fileItem.getName()));
                                                
						System.out.println("if "+fileItem.getName());
						String str = fileItem.getName();
                                                String[] arrOfStr = str.split("\\\\"); 
                                                String result = null;

                                                for (String a : arrOfStr) 
                                                    result = a;
                                                System.out.println(result);
                                                
                                                chemin="C:/img/" + result;
                                                fileItem.write(new File(chemin));
                                                

						
						statut = true;
					}
				}
				else{
                                    switch(fileItem.getFieldName()) {
					case "titre":
						titre = fileItem.getString();
						break;
					case "commentaire":
						commentaire = fileItem.getString();
						break;
												
					}
					
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}				        
                          try 
    {                   //la connection mysql
                          Connection conn=AssociationDB.getConnection();
                        //la table 3andk
                          PreparedStatement ps = conn.prepareStatement("insert into UNTITLED (TITRE,DESCRIPTION,PATH) values(?,?,?)");
                          
                          ps.setString(1,titre);
                          ps.setString(2,commentaire);
                          ps.setString(3,chemin);
                          ps.executeUpdate(); 
    }catch(Exception ex)
    {}
		return statut;
	}

}
