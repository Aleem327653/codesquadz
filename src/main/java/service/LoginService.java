package service;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import hibernate.utils.FactoryProvider;
import jakarta.servlet.http.HttpSession;
import model.User;

public class LoginService {
	
	public static boolean getLogin(String userId, String password) {
		boolean f=false;
		Session s = FactoryProvider.getFactory().openSession();
		Query q=s.createQuery("from User where userId=:id and password=:pass");
		q.setParameter("id", userId);
		q.setParameter("pass", password);
		List<User> user=q.list();
		User user1=user.get(0);
		
		if(userId.equals(user1.getUserId()) && password.equals(user1.getPassword())) {
			f=true;
			return f;
			
		}else {
			return f;
		}
		
	}
	
	
	//user Details
	public static User getUserDetail(String userId) {
		Session s = FactoryProvider.getFactory().openSession();
		User user=s.get(User.class, userId);
		return user;
	}

}
