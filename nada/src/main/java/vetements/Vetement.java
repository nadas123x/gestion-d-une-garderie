package vetements;





public class Vetement {
	
	private String nom, adresse, email;
	private String type;
	private String quantite;
	
	public Vetement (String nom, String adresse, String email, String type,String quantite) {
		super();
		this.nom = nom;
		this.adresse = adresse;
		this.email = email;
		this.type = type;
		this.quantite=quantite;
	}

	public String getNom() {
		return nom;
	}
	
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getadresse() {
		return adresse;
	}
	public void setadresse(String adresse) {
		this.adresse = adresse;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String gettype() {
		return type;
	}
	public void settype(String type) {
		this.type = type;
	}

	public String getquantite() {
		return quantite;
	}

	public void setquantite(String quantite) {
		this.quantite = quantite;
	}
	
	
}