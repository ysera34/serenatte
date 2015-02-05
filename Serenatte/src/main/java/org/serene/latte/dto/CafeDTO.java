package org.serene.latte.dto;

public class CafeDTO {
	
	private int stConNo;
	private String title;
	private String comment;
	private int eval1;
	private int eval2;
	private int eval3;
	private String content;
	private String writeDate;
	private int viewCount;
	private int likeCount;

	public CafeDTO() {}
	public CafeDTO(int stConNo, String title, String comment, int eval1,
			int eval2, int eval3, String content, String writeDate,
			int viewCount, int likeCount) {
		this.stConNo = stConNo;
		this.title = title;
		this.comment = comment;
		this.eval1 = eval1;
		this.eval2 = eval2;
		this.eval3 = eval3;
		this.content = content;
		this.writeDate = writeDate;
		this.viewCount = viewCount;
		this.likeCount = likeCount;
	}
	
	public int getStConNo() {
		return stConNo;
	}
	public void setStConNo(int stConNo) {
		this.stConNo = stConNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getEval1() {
		return eval1;
	}
	public void setEval1(int eval1) {
		this.eval1 = eval1;
	}
	public int getEval2() {
		return eval2;
	}
	public void setEval2(int eval2) {
		this.eval2 = eval2;
	}
	public int getEval3() {
		return eval3;
	}
	public void setEval3(int eval3) {
		this.eval3 = eval3;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
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

	@Override
	public String toString() {
		return "CafeDTO [stConNo=" + stConNo + ", title=" + title
				+ ", comment=" + comment + ", eval1=" + eval1 + ", eval2="
				+ eval2 + ", eval3=" + eval3 + ", content=" + content
				+ ", writeDate=" + writeDate + ", viewCount=" + viewCount
				+ ", likeCount=" + likeCount + "]";
	}

}
