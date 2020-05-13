package Metier;
import org.bson.codecs.pojo.annotations.*;
import java.io.Serializable;

import Dao.ServiceDAO;

public class user implements Serializable{
	
	private static final long serialVersionUID = -5316888178005877538L;
	@BsonProperty(value = "email")
	private String email;
	@BsonProperty(value = "NomPrenom")
	private String NomPrenom;
	@BsonProperty(value = "MotPasse")
	private String MotPasse;
	
	public user() {	
			
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNomPrenom() {
		return NomPrenom;
	}
	public void setNomPrenom(String NomPrenom) {
		this.NomPrenom = NomPrenom;
	}
	public String getMotPasse() {
		return MotPasse;
	}
	public void setMotPasse(String motPasse) {
		this.MotPasse = motPasse;
	}
    
	public static boolean userDejaExiste (user user) {
		for (user u : ServiceDAO.getAllUser()) {
			if(u.email.equalsIgnoreCase(user.email)) return true;
		}
		return false;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		user other = (user) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [email=" + email + ", NomPrenom=" + NomPrenom + ", motPasse=" + MotPasse + "]";
	}
	
	
	
	
}
