package persist;
// Generated 18-apr-2013 11:25:59 by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Gebruikers generated by hbm2java
 */
public class Gebruikers  implements java.io.Serializable {


     private Integer gebrId;
     private String gebrNaam;
     private String gebrLoginNaam;
     private String gebrWachtwoord;
     private String gebrAdres;
     private Date gebrGebDat;

    public Gebruikers() {
    }

    public Gebruikers(String gebrNaam, String gebrLoginNaam, String gebrWachtwoord, String gebrAdres, Date gebrGebDat) {
       this.gebrNaam = gebrNaam;
       this.gebrLoginNaam = gebrLoginNaam;
       this.gebrWachtwoord = gebrWachtwoord;
       this.gebrAdres = gebrAdres;
       this.gebrGebDat = gebrGebDat;
    }
   
    public Integer getGebrId() {
        return this.gebrId;
    }
    
    public void setGebrId(Integer gebrId) {
        this.gebrId = gebrId;
    }
    public String getGebrNaam() {
        return this.gebrNaam;
    }
    
    public void setGebrNaam(String gebrNaam) {
        this.gebrNaam = gebrNaam;
    }
    public String getGebrLoginNaam() {
        return this.gebrLoginNaam;
    }
    
    public void setGebrLoginNaam(String gebrLoginNaam) {
        this.gebrLoginNaam = gebrLoginNaam;
    }
    public String getGebrWachtwoord() {
        return this.gebrWachtwoord;
    }
    
    public void setGebrWachtwoord(String gebrWachtwoord) {
        this.gebrWachtwoord = gebrWachtwoord;
    }
    public String getGebrAdres() {
        return this.gebrAdres;
    }
    
    public void setGebrAdres(String gebrAdres) {
        this.gebrAdres = gebrAdres;
    }
    public Date getGebrGebDat() {
        return this.gebrGebDat;
    }
    
    public void setGebrGebDat(Date gebrGebDat) {
        this.gebrGebDat = gebrGebDat;
    }




}


