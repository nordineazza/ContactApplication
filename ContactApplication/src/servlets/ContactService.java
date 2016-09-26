package servlets;

import java.sql.SQLException;
import java.util.ArrayList;

public class ContactService {
	
	private String sLastname;
	private String sName;
	private String sMail;
	private String sId;
	
	public ContactService(String ln, String name, String mail)
	{
		this.sLastname = ln;
		this.sName = name;
		this.sMail = mail;
	}
	
	public ContactService(String ln, String name, String mail, String id)
	{
		this.sLastname = ln;
		this.sName = name;
		this.sMail = mail;
		this.sId = id;
	}
	
	public ContactService(boolean i, String value)
	{
		if(i) this.sId = value;
		else  this.sName = value;
	}
	
	public void CreateContact() throws SQLException
	{
		ContactDAO cdao = new ContactDAO(this.sLastname, this.sName, this.sMail);
		cdao.CreateContactDAO();
	}
	
	public void updateContact() throws SQLException
	{
		ContactDAO cdao = new ContactDAO(this.sLastname, this.sName, this.sMail);
		cdao.updateContactDAO();
	}
	
	public void deleteContact() throws SQLException
	{
		ContactDAO cdao = new ContactDAO(true, this.sId);
		cdao.deleteContactDAO();
	}
	
	public ArrayList searchContact() throws SQLException
	{
		ContactDAO cdao = new ContactDAO(false, this.sName);
		return cdao.searchContactDAO();
	}
	
}
