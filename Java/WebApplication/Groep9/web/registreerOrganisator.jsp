<%-- 
    Document   : registreerOrganisator
    Created on : Mar 28, 2013, 1:54:21 PM
    Author     : Groep9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registreren</title>
    </head>
    <body>
        <form>
            <h1>Registreren als organisator</h1>
            Naam <input type="text" id="naam">
            <br/>
            Voornaam <input type="text" id="voornaam">
            <br/>
            Adres <input type="text" id="adres">
            <br/>
            Postcode <input type="text" id="postcode">
            <br/>
            <input type="radio" name="festival" value="bestaand">Bestaand festival  <select>Kies festival</select> 
            <br/>
            <input type="radio" name="festival" value="nietBestaand">Nieuw festival <input type="text" id="festival"> <br/>
            
            Wachtwoord <input type="password" id="wachtwoord">
            <br/>
            Wachtwoord bevestigen <input type="password" id="wachtwoordBevestigen">
            <br/>
            <input type="submit" value="verzenden"/>
        </form>
       
    </body>
</html>
