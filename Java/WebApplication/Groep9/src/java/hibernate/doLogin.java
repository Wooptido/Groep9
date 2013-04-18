package hibernate;

import java.util.*;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

public class doLogin {
    
    public static void main(String [] args) {
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.beginTransaction();
            Query q = session.createQuery("");
            List<Gebruiker> resultList = q.list();
            String s = "";
            
        } catch (HibernateException he){
            he.printStackTrace();
        }
    }
}
