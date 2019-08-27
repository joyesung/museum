package kr.green.museum.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class BoardVO {
	private int viewnum;
	private String title;
	private String contents;
	private String writer;
	private String valid;
	private String file;
	private Date registered;
	private int views;
	public int getViewnum() {
		return viewnum;
	}
	public void setViewnum(int viewnum) {
		this.viewnum = viewnum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getValid() {
		return valid;
	}
	public void setValid(String valid) {
		this.valid = valid;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public Date getRegistered() {
		return registered;
	}
	public void setRegistered(Date registered) {
		this.registered = registered;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
	@Override
	public String toString() {
		return "BoardVO [viewnum=" + viewnum + ", title=" + title + ", contents=" + contents + ", writer=" + writer
				+ ", valid=" + valid + ", file=" + file + ", registered=" + registered + ", views=" + views + "]";
	}
	
	
	
}