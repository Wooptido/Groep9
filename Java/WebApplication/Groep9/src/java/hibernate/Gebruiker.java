
package hibernate;

public class Gebruiker {
    private String naam;
    private String wachtwoord;
    
    public Gebruiker(String n, String w){
        naam = n;
        wachtwoord = w;
    }
    
    public String getNaam(){
        return naam;
    }
    
    public String getWachtwoord(){
        return wachtwoord;
    }
}
