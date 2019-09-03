package kr.green.museum.vo;

public class BookingVO {
	private int num; 			//예약 번호
	private String id;			//예약한 사람 아이디
	private String personnel; 	//예약한 인원
	private String bootype;		//예약한 타입
	private String boocontents; //예약한내용
	private String boodate;		//예약한날짜
	private String boogroup;	//예약한단체명
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPersonnel() {
		return personnel;
	}
	public void setPersonnel(String personnel) {
		this.personnel = personnel;
	}
	public String getBootype() {
		return bootype;
	}
	public void setBootype(String bootype) {
		this.bootype = bootype;
	}
	public String getBoocontents() {
		return boocontents;
	}
	public void setBoocontents(String boocontents) {
		this.boocontents = boocontents;
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
	@Override
	public String toString() {
		return "BookingVO [num=" + num + ", id=" + id + ", personnel=" + personnel + ", bootype=" + bootype
				+ ", boocontents=" + boocontents + ", boodate=" + boodate + ", boogroup=" + boogroup + "]";
	}
}
