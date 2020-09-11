package com.agile.dashboard.model;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="user_account")
public class User {
	

  @Id
  private String username;
  private String email_id;
  private String password;
	public User()
	{
		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public User(String username, String email_id, String password) {
		super();
		this.username = username;
		this.email_id = email_id;
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", email_id=" + email_id + ", password=" + password + "]";
	}
	
	
	
	


		
	
	
	
	

}
