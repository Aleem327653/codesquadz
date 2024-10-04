package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class User {
	
	@Id
	@Column
	private String userId;
	
	@Column
	private String fName;
	
	@Column
	private String mName;
	
	@Column
	private String lName;
	
	@Column
	private String email;

	@Column
	private String password;

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String userId, String fName, String mName, String lName, String email, String password) {
		super();
		this.userId = userId;
		this.fName = fName;
		this.mName = mName;
		this.lName = lName;
		this.password = password;
		this.email=email;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", fName=" + fName + ", mName=" + mName + ", lName=" + lName + ", password="
				+ password + "]";
	}
	
	
	

}
