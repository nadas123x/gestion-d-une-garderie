package usermanagement.model;



public class User {
    protected int id;
    protected String name;
    protected String email;
    protected String adresse;

    public User() {}

    public User(String name, String email, String adresse) {
        super();
        this.name = name;
        this.email = email;
        this.adresse = adresse;
    }

    public User(int id, String name, String email, String adresse) {
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.adresse = adresse;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getadresse() {
        return adresse;
    }
    public void setadresse(String adresse) {
        this.adresse = adresse;
    }
}