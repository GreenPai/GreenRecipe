package com.green.user.vo;

	public class UserVo {
		// Fields
	   private String userid;
	   private String passwd;
	   private String username;
	   private String userbirth;
	   private String email;
	   private String indate;
	   private String nickname;
	   
	   public UserVo() {}
	
	   // Constructor
	public UserVo(String userid, String passwd, String username, String userbirth, String email, String indate,
			String nickname) {
		super();
		this.userid = userid;
		this.passwd = passwd;
		this.username = username;
		this.userbirth = userbirth;
		this.email = email;
		this.indate = indate;
		this.nickname = nickname;
	}
	
	// Getter/Setter
	public String getUserid() {
		return userid;
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getPasswd() {
		return passwd;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUserbirth() {
		return userbirth;
	}
	
	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getIndate() {
		return indate;
	}
	
	public void setIndate(String indate) {
		this.indate = indate;
	}
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	// toString
	@Override
	public String toString() {
		return "UserVo [userid=" + userid + ", passwd=" + passwd + ", username=" + username + ", userbirth=" + userbirth
				+ ", email=" + email + ", indate=" + indate + ", nickname=" + nickname + "]";
	}
	   
	}
