<%-- 
    Document   : geavanceerdZoeken
    Created on : Mar 28, 2013, 2:35:36 PM
    Author     : groep9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zoeken</title>
    </head>
    <body>
        <form onsubmit="return zoeken()">
            <h1>Geavanceerd zoeken</h1>
            Groepsnaam <input type="text" value="groepsnaam"/> land <select></select>
            <br/>
            Genre <input type="text" value="genre"/> Festival <select></select>
            <br/>
            <input type="submit" value="zoeken"/>
       </form>
       <br/>
       <hr/>
       <h1>Resultaten</h1>
    </body>
</html>
