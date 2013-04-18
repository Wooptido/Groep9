<%-- 
    Document   : index
    Created on : 28-mrt-2013, 13:54:35
    Author     : Tim
--%>



<%@page import="persist.Festivals"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import =
"java.util.Iterator,
java.util.List,
hibernate.HibernateUtil,
org.hibernate.HibernateException,
org.hibernate.Session,
org.hibernate.Transaction"%>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Home</title>
        <script src="JS/modernizr-1.7.min.js"></script>
        <link rel="stylesheet" href="Styles/reset.css">
        <link rel="stylesheet" href="Styles/forms.css">
        <link rel="stylesheet" href="Styles/css3.css">
        <link rel="stylesheet" href="Styles/general.css">
        <link rel="stylesheet" href="Styles/grid.css">
     </head>
        <body>
        <div id="container">
        <header>
        <img src="Afbeeldingen/BannerSite.jpg" alt="banner" style="width: 100%; height: 200px" />  
            <div id="balk"> 
            <nav> 
            <ul class="menu">
                <li class="current"><a href="index.jsp">Home</a></li>
                <li><a href="festivals.jsp">Festivals</a></li>
                <li><a href="Groepen.jsp">Groepen</a></li>
                <li><a href="Login.jsp">Login</a></li>
            </ul>
            </nav>
            </div>
            <div class="clear"></div>
        </header> 
            <div id="hoofdpaneel">
            <h1>Welkom op dé festivalsite</h1>
 
            <p>Welkom op onze pagina. <br/>
             Deze site biedt u de mogelijkheid om de info van alle festivals die u nodig hebt te zoeken op 1 centrale site. Organisatoren en muzikanten kunnen hier ook
            hun eigen pagina aanmaken en alle data up-to-date houden. </p>
            <p>We hopen met deze site zowel het leven van de festivalganger zelf, als dat van de organisatoren en muzikanten een stuk makkelijker te maken. </p>
            <p>
                <% String ip = request.getHeader("X-Forwarded-For");  
                    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
                        ip = request.getHeader("Proxy-Client-IP");  
                    }  
                    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
                        ip = request.getHeader("WL-Proxy-Client-IP");  
                    }  
                    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
                        ip = request.getHeader("HTTP_CLIENT_IP");  
                    }  
                    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
                        ip = request.getHeader("HTTP_X_FORWARDED_FOR");  
                    }  
                    if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
                        ip = request.getRemoteAddr();  
                    }  
                    out.print(ip);
                    %>
                    
                </p>
            <h2>Upcoming events</h2>
            <!--Voorbeeld, nog aanpassen met gegevens uit database-->
            <p><a href="Pukkelpop">Pukkelpop</a> van 16/08/2013 tot 18/08/2013 <br/>
                Met o.a. <a href="Pukkelpop">Foo Fighters</a> <a href="Pukkelpop">Eminem</a></p>
            <%
                    Session s;
                    Transaction tx = null;
                    Festivals festival = new Festivals();
                    
                    
                    
                    
                    
                
            %>
            
            
            
            
            
        </div>
        <div id="spacer"></div>
        </div>

                
        <!--Footer-->
            <div id="footer"></div>
    </body>
</html>
