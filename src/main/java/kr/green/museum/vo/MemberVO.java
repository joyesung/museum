package kr.green.museum.vo;

public class MemberVO {
	private String id;
	private String pw;
	private String gender;
	private String email;
	private String name;
	private String authority;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pw=" + pw + ", gender=" + gender + ", email=" + email + ", name=" + name
				+ ", authority=" + authority + "]";
	}
	public String getPassword() {
		// TODO Auto-generated method stub
		return null;
	}
	
}