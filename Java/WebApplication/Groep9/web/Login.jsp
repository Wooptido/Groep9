<%-- 
    Document   : Login
    Created on : Mar 28, 2013, 9:49:17 AM
    Author     : 3130079
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="Gebruikersprofiel.jsp" method="POST">
            <h1>Login</h1>
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
                        <input type="text" name="wachtwoord"/>
                    </td>
                </tr>
            </table>
            <a href="WachtwoordVergeten.html">wachtwoord vergeten?</a>
            <br/>
            <input type="submit" value="Aanmelden">
            <br/>
            <p>Geen account? Registreer als gewone <a href="registreerGebruiker.html">gebruiker</a>
                of als <a href="registreerOrganisator.html">organisator</a> </p>
        </form>
    </body>
</html>
