<%-- 
    Document   : Login
    Created on : 28-mrt-2013, 13:58:41
    Author     : Tim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Login</title>
        <script src="JS/modernizr-1.7.min.js"></script>
        <link rel="stylesheet" href="Styles/reset.css">
        <link rel="stylesheet" href="Styles/forms.css">
        <link rel="stylesheet" href="Styles/css3.css">
        <link rel="stylesheet" href="Styles/general.css">
        <link rel="stylesheet" href="Styles/grid.css">
        <script>
    function trim(s) 
    {
        return s.replace( /^\s*/, "" ).replace( /\s*$/, "" );
    }

    function validate()
    {
        if(trim(document.frmLogin.gebruikersnaam.value)=="")
        {
          alert("Login empty");
          document.frmLogin.gebruikersnaam.focus();
          return false;
        }
        else if(trim(document.frmLogin.wachtwoord.value)=="")
        {
          alert("password empty");
          document.frmLogin.wachtwoord.focus();
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
            <h1>Login</h1>
            <form name="frmLogin" onSubmit="return validate();" action="doLogin.jsp" method="post">
            <table>
                <tr>
                    <td>
                        Gebruiker:
                    </td>
                    <td>
                        <input type="text" name="gebruikersnaam"/>
                    </td>
                </tr><tr>
                    <td>
                        Wachtwoord:
                    </td>
                    <td>
                        <input type="password" name="wachtwoord"/>
                    </td>
                </tr>
            </table>
            <a href="wachtwoordVergeten.html">wachtwoord vergeten?</a>
            <br/>
            <input type="submit" value="Aanmelden">
            <br/>
            <p>Geen account? Registreer als gewone <a href="registreerGebruiker.jsp">gebruiker</a>
                of als <a href="registreerOrganisator.jsp">organisator</a> </p>
        </form>
        </div>
        <div id="spacer"></div>
        </div>

                
        <!--Footer-->
            <div id="footer"></div>
    </body>
</html>