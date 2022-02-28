package Register;



public class Member {
	
	private String nom, prenom, adresse, genre;
	private String jourdenaissance;
	private String moisdenaissance;
	private String annéedenaissance;
	
	
	public Member(String nom, String prenom, String adresse, String genre, String jourdenaissance, String moisdenaissance,
			String annéedenaissance) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.genre = genre;
		this.jourdenaissance = jourdenaissance;
		this.moisdenaissance = moisdenaissance;
		this.annéedenaissance = annéedenaissance;
	}


	public String getJourdenaissance() {
		return jourdenaissance;
	}


	public void setJourdenaissance(String jourdenaissance) {
		this.jourdenaissance = jourdenaissance;
	}


	


	public String getMoisdenaissance() {
		return moisdenaissance;
	}


	public void setMoisdenaissance(String moisdenaissance) {
		this.moisdenaissance = moisdenaissance;
	}


	public String getAnnéedenaissance() {
		return annéedenaissance;
	}


	public void setAnnéedenaissance(String annéedenaissance) {
		this.annéedenaissance = annéedenaissance;
	}


	public Member() {
		super();
	}
	

	
	public String getnom() {
		return nom;
	}

	public void setnom(String nom) {
		this.nom = nom;
	}

	public String getprenom() {
		return prenom;
	}

	public void setprenom(String prenom) {
		this.prenom = prenom;
	}

	public String getadresse() {
		return adresse;
	}

	public void setadresse(String adresse) {
		this.adresse = adresse;
	}

	public String getgenre() {
		return genre;
	}

	public void setgenre(String genre) {
		this.genre = genre;
	}
	
	

}