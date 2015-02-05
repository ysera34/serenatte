package org.serene.latte.dto;

public class CmtDTO {
	
	private int cmtNum;
	private int listNum;
	private String userId;
	private String cmt;
	private String writeDate;

	public CmtDTO() {}
	public CmtDTO(int cmtNum, int listNum, String userId, String cmt,
			String writeDate) {
		this.cmtNum = cmtNum;
		this.listNum = listNum;
		this.userId = userId;
		this.cmt = cmt;
		this.writeDate = writeDate;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
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
	
	@Override
	public String toString() {
		return "CmtDTO [cmtNum=" + cmtNum + ", listNum=" + listNum
				+ ", userId=" + userId + ", cmt=" + cmt + ", writeDate="
				+ writeDate + "]";
	}
	
}
