package servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RechercheContactServlet
 */
public class RechercheContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RechercheContactServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String contact = request.getParameter("contact");
		ArrayList <Contact> mesContacts;
		if(contact.length() >= 0)
		{
			ContactService cs;
			cs = new ContactService(false, contact);
			try {
				mesContacts = cs.searchContact();
				RequestDispatcher rd = request.getRequestDispatcher("afficherContact.jsp");
				request.setAttribute("contacts", mesContacts);
				rd.forward(request, response);

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			//Si l'utilisateur a renseigné un champs vide, je le redirige vers le menu
			response.sendRedirect("index.html");
			System.out.println("Le champ 'Contact' doit être remplis.");
		}
	}

}
