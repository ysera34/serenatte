package org.serene.latte.dto;

public class UserDTO {
	
	private String userId;
	private String password;
	private String nickname;
	private String email;
	private String profilePath;

	public UserDTO() {}
	public UserDTO(String userId, String password, String nickname,
			String email, String profilePath) {
		super();
		this.userId = userId;
		this.password = password;
		this.nickname = nickname;
		this.email = email;
		this.profilePath = profilePath;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProfilePath() {
		return profilePath;
	}
	public void setProfilePath(String profilePath) {
		this.profilePath = profilePath;
	}
	
	@Override
	public String toString() {
		return "UserDTO [userId=" + userId + ", password=" + password
				+ ", nickname=" + nickname + ", email=" + email
				+ ", profilePath=" + profilePath + "]";
	}
	
}
