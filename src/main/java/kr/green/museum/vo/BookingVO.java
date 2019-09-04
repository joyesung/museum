package kr.green.museum.vo;

public class BookingVO {
	private int boonum; 			//예약 번호
	private String booid;			//예약한 사람 아이디
	private String personnel; 	//예약한 인원
	private String boodate;		//예약한 타입
	private String boogroup; //예약한내용
	private String booleading;		//예약한날짜
	private String boophone;
	private String boopass;//예약한단체명
	private String booleadingphone;
	public int getBoonum() {
		return boonum;
	}
	public void setBoonum(int boonum) {
		this.boonum = boonum;
	}
	public String getBooid() {
		return booid;
	}
	public void setBooid(String booid) {
		this.booid = booid;
	}
	public String getPersonnel() {
		return personnel;
	}
	public void setPersonnel(String personnel) {
		this.personnel = personnel;
	}
	public String getBoodate() {
		return boodate;
	}
	public void setBoodate(String boodate) {
		this.boodate = boodate;
	}
	public String getBoogroup() {
		return boogroup;
	}
	public void setBoogroup(String boogroup) {
		this.boogroup = boogroup;
	}
	public String getBooleading() {
		return booleading;
	}
	public void setBooleading(String booleading) {
		this.booleading = booleading;
	}
	public String getBoophone() {
		return boophone;
	}
	public void setBoophone(String boophone) {
		this.boophone = boophone;
	}
	public String getBoopass() {
		return boopass;
	}
	public void setBoopass(String boopass) {
		this.boopass = boopass;
	}
	public String getBooleadingphone() {
		return booleadingphone;
	}
	public void setBooleadingphone(String booleadingphone) {
		this.booleadingphone = booleadingphone;
	}
	@Override
	public String toString() {
		return "BookingVO [boonum=" + boonum + ", booid=" + booid + ", personnel=" + personnel + ", boodate=" + boodate
				+ ", boogroup=" + boogroup + ", booleading=" + booleading + ", boophone=" + boophone + ", boopass="
				+ boopass + ", booleadingphone=" + booleadingphone + "]";
	}
	
	
}
