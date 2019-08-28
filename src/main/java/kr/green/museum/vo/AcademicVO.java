package kr.green.museum.vo;

public class AcademicVO {
	private int acnum;
	private String actype;
	private String author;
	private String lssu;
	private String year;
	private String kind;
	private String page;
	private String price;
	private String title;
	public int getAcnum() {
		return acnum;
	}
	public void setAcnum(int acnum) {
		this.acnum = acnum;
	}
	public String getActype() {
		return actype;
	}
	public void setActype(String actype) {
		this.actype = actype;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getLssu() {
		return lssu;
	}
	public void setLssu(String lssu) {
		this.lssu = lssu;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "AcademicVO [acnum=" + acnum + ", actype=" + actype + ", author=" + author + ", lssu=" + lssu + ", year="
				+ year + ", kind=" + kind + ", page=" + page + ", price=" + price + ", title=" + title + "]";
	}
	
	
}
	