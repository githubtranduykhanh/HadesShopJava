package Models;

import java.time.LocalDateTime;

public class User {
	private long id;
	private String 	firstName,middleName,lastName,mobile,email,passwordHash,intro,profile,avatar;
	private byte admin,vendor;
	private LocalDateTime registeredAt,lastLogin;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(long id, String firstName, String middleName, String lastName, String mobile, String email,
			String passwordHash, String intro, String profile, String avatar, byte admin, byte vendor,
			LocalDateTime registeredAt, LocalDateTime lastLogin) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.mobile = mobile;
		this.email = email;
		this.passwordHash = passwordHash;
		this.intro = intro;
		this.profile = profile;
		this.avatar = avatar;
		this.admin = admin;
		this.vendor = vendor;
		this.registeredAt = registeredAt;
		this.lastLogin = lastLogin;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName
				+ ", mobile=" + mobile + ", email=" + email + ", passwordHash=" + passwordHash + ", intro=" + intro
				+ ", profile=" + profile + ", avatar=" + avatar + ", admin=" + admin + ", vendor=" + vendor
				+ ", registeredAt=" + registeredAt + ", lastLogin=" + lastLogin + "]";
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasswordHash() {
		return passwordHash;
	}
	public void setPasswordHash(String passwordHash) {
		this.passwordHash = passwordHash;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public byte getAdmin() {
		return admin;
	}
	public void setAdmin(byte admin) {
		this.admin = admin;
	}
	public byte getVendor() {
		return vendor;
	}
	public void setVendor(byte vendor) {
		this.vendor = vendor;
	}
	public LocalDateTime getRegisteredAt() {
		return registeredAt;
	}
	public void setRegisteredAt(LocalDateTime registeredAt) {
		this.registeredAt = registeredAt;
	}
	public LocalDateTime getLastLogin() {
		return lastLogin;
	}
	public void setLastLogin(LocalDateTime lastLogin) {
		this.lastLogin = lastLogin;
	}
}
