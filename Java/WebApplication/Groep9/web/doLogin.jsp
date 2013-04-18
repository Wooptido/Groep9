<%-- 
    Document   : doLogin
    Created on : Apr 18, 2013, 1:28:37 PM
    Author     : Groep 9
--%>

<%@page import="org.hibernate.Query"%>
<%@page import="persist.Gebruikers"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import =
    "java.util.Iterator,
    java.util.List,
    hibernate.HibernateUtil,
    org.hibernate.HibernateException,
    org.hibernate.Session,
    org.hibernate.Transaction"%>
<%
    String gebruikersnaam=request.getParameter("gebruikersnaam");
    String wachtwoord=request.getParameter("wachtwoord");
    String message="Succesvol ingelogd ";

    String sqlOption="SELECT * FROM gebruikers where"
                    +" gebr_login_naam='"+gebruikersnaam+"' and gebr_wachtwoord='"+wachtwoord+"' ";
    
    Session s;
    s = HibernateUtil.getSessionFactory().openSession();
    Query query = s.createSQLQuery(
    sqlOption)
    .addEntity(Gebruikers.class);

    List result = query.list();
    
    if(result.equals(null)){
        message="Verkeerde gebruikersnaam of fout wachtwoord ingegeven" ;
        response.sendRedirect("Login.jsp?error="+message);
    } 
    else{
        response.sendRedirect("Gebruikersprofiel.jsp?error="+message);
    }
    
    
    String ip = request.getHeader("X-Forwarded-For");  
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
  %>