<!DOCTYPE html>
<html>
    <head>
        <title>Registreer</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
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
        <div>
            <form action="registreer.jsp" method="POST" onSubmit="return validatie()">
                <h1>Registreren als gebruiker</h1>
                naam: <input type="text" id="naam">*<br/>
                voornaam: <input type="text" id="voornaam">*<br/>
                adres: <input type="text" id="adres"><br/>
                postcode: <input type="text" id="postcode"><br/>
                telefoon/gsm: <input type="text" id="telefoon"><br/>
                e-mail: <input type="text" id="email">*<br/>
                wachtwoord: <input type="text" id="wachtwoord">*<br/>
                bevestig wachtwoord: <input type="text" id="bevestigWachtwoord">*<br/>  
                
                <input type="submit" value="verzenden"/>
                <br/>
                * moet ingevuld zijn
            </form>
        </div>
    </body>
</html>
