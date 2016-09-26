package servlets;

import java.sql.DriverManager;  // gestion des pilotes
import java.sql.Connection;     // une connexion à la BD
import java.sql.Statement;      // une instruction 
import java.sql.ResultSet;      // un résultat (lignes/colonnes)
import java.sql.SQLException;   // une erreur

public class JDBC {
	
	private Connection conn;
	
	public JDBC()
	{
		try {
			try {
				loadDriver();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			this.conn = newConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void loadDriver() throws ClassNotFoundException {
	    Class.forName("com.mysql.jdbc.Driver");
	}

	public Connection newConnection() throws SQLException {
	    final String url = "jdbc:mysql://localhost/contact";
	    Connection conn = DriverManager.getConnection(url, "root", "root");
	    return conn;
	}
	
	public Connection getConnection() throws SQLException
	{
		return newConnection();
	}
	
	public void test() throws SQLException
	{
	      System.out.println("Creating statement...");
	      Statement stmt = conn.createStatement();
	      String sql;
	      sql = "SELECT * FROM contact";
	      ResultSet rs = stmt.executeQuery(sql);
	      //STEP 5: Extract data from result set
	      while(rs.next()){
	         //Retrieve by column name
	         String id  = rs.getString("id");
	         String nom = rs.getString("nom");
	         String prenom = rs.getString("prenom");
	         String email = rs.getString("email");
	         System.out.println("Bonjour, " + nom + " " + prenom);
	     }
	}


}
