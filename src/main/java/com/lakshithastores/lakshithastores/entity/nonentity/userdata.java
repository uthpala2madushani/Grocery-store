package com.lakshithastores.lakshithastores.entity.nonentity;

import com.lakshithastores.lakshithastores.entity.User;

public class userdata {

	private User user;
	private String res;
	
	
	public userdata() {
		super();
	}
	public userdata(User user, String res) {
		super();
		this.user = user;
		this.res = res;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getRes() {
		return res;
	}
	public void setRes(String res) {
		this.res = res;
	}
	@Override
	public String toString() {
		return "userdata [user=" + user + ", res=" + res + "]";
	}
	
}
