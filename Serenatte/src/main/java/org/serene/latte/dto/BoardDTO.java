package org.serene.latte.dto;


public class BoardDTO {
	
	private int listNum;
	private String title;
	private String userId;
	private String writeDate;
	private int viewCount;
	private int likeCount;
	private String content;

	public BoardDTO() {}
	public BoardDTO(int listNum, String title, String userId, String writeDate,
			int viewCount, int likeCount, String content) {
		this.listNum = listNum;
		this.title = title;
		this.userId = userId;
		this.writeDate = writeDate;
		this.viewCount = viewCount;
		this.likeCount = likeCount;
		this.content = content;
	}
	
	public int getlistNum() {
		return listNum;
	}
	public void setlistNum(int listNum) {
		this.listNum = listNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getuserId() {
		return userId;
	}
	public void setuserId(String userId) {
		this.userId = userId;
	}
	public String getwriteDate() {
		return writeDate;
	}
	public void setwriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public int getViewCount() {
		return viewCount;
	}
	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "BoardDTO [listNum=" + listNum + ", title=" + title + ", userId="
				+ userId + ", writeDate=" + writeDate + ", viewCount="
				+ viewCount + ", likeCount=" + likeCount + ", content="
				+ content + "]";
	}
	
}
