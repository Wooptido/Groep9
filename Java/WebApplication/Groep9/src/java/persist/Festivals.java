package persist;
// Generated 18-apr-2013 11:25:59 by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * Festivals generated by hbm2java
 */
public class Festivals  implements java.io.Serializable {


     private Integer festId;
     private String festNaam;
     private Date festBeginDate;
     private Date festEindDate;
     private String festLocatie;

    public Festivals() {
    }

    public Festivals(String festNaam, Date festBeginDate, Date festEindDate, String festLocatie) {
       this.festNaam = festNaam;
       this.festBeginDate = festBeginDate;
       this.festEindDate = festEindDate;
       this.festLocatie = festLocatie;
    }
   
    public Integer getFestId() {
        return this.festId;
    }
    
    public void setFestId(Integer festId) {
        this.festId = festId;
    }
    public String getFestNaam() {
        return this.festNaam;
    }
    
    public void setFestNaam(String festNaam) {
        this.festNaam = festNaam;
    }
    public Date getFestBeginDate() {
        return this.festBeginDate;
    }
    
    public void setFestBeginDate(Date festBeginDate) {
        this.festBeginDate = festBeginDate;
    }
    public Date getFestEindDate() {
        return this.festEindDate;
    }
    
    public void setFestEindDate(Date festEindDate) {
        this.festEindDate = festEindDate;
    }
    public String getFestLocatie() {
        return this.festLocatie;
    }
    
    public void setFestLocatie(String festLocatie) {
        this.festLocatie = festLocatie;
    }




}

