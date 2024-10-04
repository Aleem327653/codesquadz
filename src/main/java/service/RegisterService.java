package service;

import org.hibernate.Session;
import org.hibernate.Transaction;

import hibernate.utils.FactoryProvider;
import model.User;

public class RegisterService {
	
	public static boolean insertUser(User user) {
		
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		s.save(user);
	
		tx.commit();
		s.close();
		return true;
	}

}
