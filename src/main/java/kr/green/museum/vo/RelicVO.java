package kr.green.museum.vo;

public class RelicVO {
	private int renum;
	private String rename;
	private String diname;
	private String nation;
	private String quality;
	private String ification;
	private String size;
	private String details;
	private String file;
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public String getRename() {
		return rename;
	}
	public void setRename(String rename) {
		this.rename = rename;
	}
	public String getDiname() {
		return diname;
	}
	public void setDiname(String diname) {
		this.diname = diname;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getQuality() {
		return quality;
	}
	public void setQuality(String quality) {
		this.quality = quality;
	}
	public String getIfication() {
		return ification;
	}
	public void setIfication(String ification) {
		this.ification = ification;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	@Override
	public String toString() {
		return "RelicVO [renum=" + renum + ", rename=" + rename + ", diname=" + diname + ", nation=" + nation
				+ ", quality=" + quality + ", ification=" + ification + ", size=" + size + ", details=" + details
				+ ", file=" + file + "]";
	}

}

