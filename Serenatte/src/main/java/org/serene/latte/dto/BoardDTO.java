package org.serene.latte.dto;

import java.util.Date;

public class BoardDTO {
	
	private int num;
	private String title;
	private String writer;
	private Date writeDate;
	private int viewCount;
	private int likeCount;
	private String content;

	public BoardDTO() {}
	public BoardDTO(int num, String title, String writer, Date writeDate,
			int viewCount, int likeCount, String content) {
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.writeDate = writeDate;
		this.viewCount = viewCount;
		this.likeCount = likeCount;
		this.content = content;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getwriteDate() {
		return writeDate;
	}
	public void setwriteDate(Date writeDate) {
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
		return "BoardDTO [num=" + num + ", title=" + title + ", writer="
				+ writer + ", writeDate=" + writeDate + ", viewCount="
				+ viewCount + ", likeCount=" + likeCount + ", content="
				+ content + "]";
	}
	
}
