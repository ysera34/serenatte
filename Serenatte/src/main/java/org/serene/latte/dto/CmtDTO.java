package org.serene.latte.dto;

public class CmtDTO {
	
	private int cmtNum;
	private int listNum;
	private String writeId;
	private String cmt;
	private String writeDate;
	private String imagePath;
	
	public CmtDTO() {}
	public CmtDTO(int cmtNum, int listNum, String writeId, String cmt,
			String writeDate, String imagePath) {
		this.cmtNum = cmtNum;
		this.listNum = listNum;
		this.writeId = writeId;
		this.cmt = cmt;
		this.writeDate = writeDate;
		this.imagePath = imagePath;
	}

	public int getCmtNum() {
		return cmtNum;
	}
	public void setCmtNum(int cmtNum) {
		this.cmtNum = cmtNum;
	}
	public int getListNum() {
		return listNum;
	}
	public void setListNum(int listNum) {
		this.listNum = listNum;
	}
	public String getwriteId() {
		return writeId;
	}
	public void setwriteId(String writeId) {
		this.writeId = writeId;
	}
	public String getCmt() {
		return cmt;
	}
	public void setCmt(String cmt) {
		this.cmt = cmt;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	@Override
	public String toString() {
		return "CmtDTO [cmtNum=" + cmtNum + ", listNum=" + listNum
				+ ", writeId=" + writeId + ", cmt=" + cmt + ", writeDate="
				+ writeDate + ", imagePath=" + imagePath + "]";
	}
	
}
