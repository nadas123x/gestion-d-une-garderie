package Register;



public class Member {
	
	private String nom, prenom, adresse, genre;
	private String jourdenaissance;
	private String moisdenaissance;
	private String ann�edenaissance;
	
	
	public Member(String nom, String prenom, String adresse, String genre, String jourdenaissance, String moisdenaissance,
			String ann�edenaissance) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
		this.genre = genre;
		this.jourdenaissance = jourdenaissance;
		this.moisdenaissance = moisdenaissance;
		this.ann�edenaissance = ann�edenaissance;
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


	public String getAnn�edenaissance() {
		return ann�edenaissance;
	}


	public void setAnn�edenaissance(String ann�edenaissance) {
		this.ann�edenaissance = ann�edenaissance;
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