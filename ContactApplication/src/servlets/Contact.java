package servlets;

public class Contact {
	
	private int id;
	private String nom;
	private String prenom;
	private String email;
	
	public Contact(int id, String nom, String prenom, String email)
	{
		this.id = id;
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public String getNom() {
		return nom;
	}

	public String getPrenom() {
		return prenom;
	}


	public String getEmail() {
		return email;
	}

	
	

}
