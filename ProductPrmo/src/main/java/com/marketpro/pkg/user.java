package com.marketpro.pkg;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

//@Component
//@Scope("prototype")
@Entity
public class user {
@Id
private String name;
private String password;
private String email;


public user() {}
		
public user(String name, String password, String email) {
	super();
	this.name = name;
	this.password = password;
	this.email = email;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
	return "user [name=" + name + ", password=" + password + ", email=" + email + "]";
}



}
