<%-- 
    Document   : geavanceerdZoeken
    Created on : Mar 28, 2013, 2:35:36 PM
    Author     : groep9
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Geavanceerd zoeken groepen</title>
        <script src="JS/modernizr-1.7.min.js"></script>
        <link rel="stylesheet" href="Styles/reset.css">
        <link rel="stylesheet" href="Styles/forms.css">
        <link rel="stylesheet" href="Styles/css3.css">
        <link rel="stylesheet" href="Styles/general.css">
        <link rel="stylesheet" href="Styles/grid.css">
        <link rel="stylesheet" href="Styles/stijl.css">
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
                <li class="current"><a href="Groepen.jsp">Groepen</a></li>
                <li><a href="Login.jsp">Login</a></li>
            </ul>
            </nav>
            </div>
            <div class="clear"></div>
        </header> 
            <div id="hoofdpaneel">
            <h1>Geavanceerd zoeken op groepen</h1>
        <form onsubmit="return zoeken()">
            <table>
                <tr>
                    <td>Groepsnaam: <input type="text" value="groepsnaam"/></td>
                    <td>Land: <select></select></td>
                </tr>
                <tr>
                    <td>Genre: <input type="text" value="genre"/></td> 
                    <td>Festival: <select></select></td>
                </tr>
            </table>
            <input type="submit" value="zoeken"/>
       </form>
       <br/>
       <hr/>
       <h1>Resultaten</h1>
        </div>
        <div id="spacer"></div>
        </div>

                
        <!--Footer-->
            <div id="footer"></div>
    </body>
</html>



