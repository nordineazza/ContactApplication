package servlets;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ContactDAO {
	 
	private String lastnameDAO;
	private String nameDAO;
	private String mailDAO;
	private String idDAO;
	private JDBC jdbc;
	
	public ContactDAO(String lastname, String name, String mail) throws SQLException
	{
		this.lastnameDAO = lastname;
		this.nameDAO = name;
		this.mailDAO = mail;
		jdbc = new JDBC();
	}
	
	public ContactDAO(String lastname, String name, String mail, String id)
	{
		this.lastnameDAO = lastname;
		this.nameDAO = name;
		this.mailDAO = mail;
		this.idDAO = id;
	}
	
	public ContactDAO(boolean i, String value)
	{
		if(i) this.idDAO = value;
		else this.nameDAO = value;
		jdbc = new JDBC();
	}
	
	public void CreateContactDAO() throws SQLException
	{
	      System.out.println("Creating statement...");
	      String sql;
	      sql = "INSERT INTO contact(nom, prenom, email) VALUES('" + lastnameDAO + "','" + nameDAO + "','" + mailDAO + "')";
	      Statement stmt = jdbc.getConnection().createStatement();
	      int rs = stmt.executeUpdate(sql);

	      System.out.println("Contact ajoutée");
	     
	}
	
	public void updateContactDAO()
	{
		//Il faut l'id pour modifier un contact
		System.out.println("Update en base à faire avec JDBC.");
	}
	
	public void deleteContactDAO() throws SQLException
	{
		//Il faut l'id pour supprimer un contact
		Statement stmt = jdbc.getConnection().createStatement();
	    ResultSet rs = stmt.executeQuery("DELETE FROM contact WHERE id = " + this.idDAO);
	}
	
	public ArrayList searchContactDAO() throws SQLException
	{
	      System.out.println("Début de la recherche...");
	      int i = 0;
	      Statement stmt = jdbc.getConnection().createStatement();
	      ResultSet rs = stmt.executeQuery("SELECT * FROM contact WHERE nom LIKE '%" + nameDAO + "%'" + "OR prenom LIKE '%" + nameDAO + "%'");
	      ArrayList <Contact> mesContacts = new ArrayList();
	      //STEP 5: Extract data from result set
	      while(rs.next()){
	         //Retrieve by column name
	    	 Contact c = new Contact(rs.getInt("id"), rs.getString("nom"), rs.getString("prenom"), rs.getString("email"));
	    	 mesContacts.add(c);
	     }
	     for(Contact c: mesContacts)
	    	 System.out.println(c.getNom());
		return mesContacts;

	}
}
