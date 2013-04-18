<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Registreer</title>
        <script src="JS/modernizr-1.7.min.js"></script>
        <link rel="stylesheet" href="Styles/reset.css">
        <link rel="stylesheet" href="Styles/forms.css">
        <link rel="stylesheet" href="Styles/css3.css">
        <link rel="stylesheet" href="Styles/general.css">
        <link rel="stylesheet" href="Styles/grid.css">
     <script>
            function validatie(){
                var naam = document.frm.naam;
                var voornaam = document.frm.voornaam;
                var adres = document.frm.adres;
                var postcode = document.frm.postcode;
                var email = document.frm.email;
                var wachtwoord = document.frm.wachtwoord; 
                
                
                if(wachtwoord != document.frm.bevestigWachtwoord)
                    { alert("User Name should be left blank");
                    wachtwoord.focus();
                    return false;
                }
                
                if(wachtwoord == "")
                    { alert("Wachtwoord mag niet leeg zijn");
                    wachtwoord.focus();
                    return false;
                }
                
                if(naam == "")
                    { alert("Naam mag niet leeg zijn");
                    naam.focus();
                    return false;
                }
                
                if(voornaam == "")
                    { alert("Voornaam mag niet leeg zijn");
                    voornaam.focus();
                    return false;
                }
                
                if(mail == "")
                    { alert("e-mail mag niet leeg zijn");
                    mail.focus();
                    return false;
                }
                
                
            }
        </script>
    </head>
        <body>
        <div id="container">
        <header>
        <img src="Afbeeldingen/BannerSite.jpg" alt="banner" style="width: 100%; height: 200px" />  
            <div id="balk"> 
            <nav> 
            <ul class="menu">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="festivals.jsp">Festivals</a></li>
                <li><a href="Groepen.jsp">Groepen</a></li>
                <li class="current"><a href="Login.jsp">Login</a></li>
            </ul>
            </nav>
            </div>
            <div class="clear"></div>
        </header> 

        <div id="hoofdpaneel">
            <form action="registreer.jsp" method="POST" onSubmit="return validatie()">
                <h1>Registreren als gebruiker</h1>
                <table>
                    <tr>
                        <td>naam:</td>
                        <td><input type="text" id="naam">*</td>
                    </tr>
                    <tr>
                        <td>voornaam:</td> 
                        <td><input type="text" id="voornaam">*</td> 
                    </tr>
                    <tr>
                        <td>adres:</td> 
                        <td><input type="text" id="adres"></td> 
                    </tr>
                    <tr>
                        <td>postcode:</td> 
                        <td><input type="text" id="postcode"></td> 
                    </tr>
                    <tr>
                        <td>telefoon/gsm:</td> 
                        <td><input type="text" id="telefoon"></td> 
                    </tr>
                    <tr>
                        <td>e-mail:</td> 
                        <td><input type="text" id="email">*</td> 
                    </tr>
                    
                    <tr><td colspan="9"><hr size="1" width="100%" /></td></tr>
                    
                    <tr>
                        <td>wachtwoord:</td> 
                        <td><input type="password" id="wachtwoord">*</td> 
                    </tr>
                    <tr>
                        <td>bevestig wachtwoord:</td> 
                        <td><input type="password" id="bevestigWachtwoord">*</td> 
                    </tr>
                </table>
                <input type="submit" value="verzenden"/>
                <br/>
                * moet ingevuld zijn
            </form>
        </div>
    </body>
</html>
